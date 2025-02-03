Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FF725A623
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738614354; cv=none; b=hZ8YnOSx4CV90ZQ20NW9J4y8hXR6POsN9N0c4PHIgtdLy/wjE//THbMLb+ZO5P25wamFbSkx63aOC10xQLG13S31sYtl2P+VSakKuO7w5gDzhezh3I4JDZS4FCFX15bGv+mr6rgANlTyJLFiKP+pS1PManL7WJ9q5kt/q6kpfr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738614354; c=relaxed/simple;
	bh=An9W6no9m6pzKzPajZc4nVexUBMX/DRNOG6UDO1b9cM=;
	h=To:Subject:From:Message-Id:Date; b=G7+k/+mIFLWg3kwxAaHRxlpdLftFQKPCUbzGIsEXlCjWSjuLBl0Ig/Q2dUd+oJEpHK97IfWx7aK1JrPAJDZb9CbbK4CA9ET0ck1es1YpCwk7o6FH2CUGYoX30GXJ1jcc7oZcY5pYgd0Q2KH2SsY695Vwkg4nNrItBQo8R1sgPkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBlWBEsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBlWBEsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1C1C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738614353;
	bh=An9W6no9m6pzKzPajZc4nVexUBMX/DRNOG6UDO1b9cM=;
	h=To:Subject:From:Date:From;
	b=KBlWBEsKM7KBJeTpTrWVcMvS1OWl19feOa+6A13shy/NQxp1LlHNw9r8a/IjnrHot
	 Rp27gZxoUBnKbF/m0jBUiwPuaRCKyKUhau/m8xHDC48LpqZyosHnEneWaF4qHLsqAz
	 hhh2KpmH49dYYZnWgExZrKEoZOKYfV4Hdnjdv+3Ph4KX9LF4s6uAFpdmawPL1lhzNz
	 qZNLWgQEySiwcgKBAzy1LV9S8s60lokWlBfWyqyTRSfsP/bdU24F3b7isisBMkxr3W
	 iyNplqocrApqXQAGuFL4Z4PnBBRZZLQeU2TvsPbioysEkTLX8dLZRSdKVQGmVhRBgj
	 4T+uJ7hMLYX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D7FC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861435363.2523.1897978134248437195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9142125a7e01052c3a25942782514422968460a24fc90a25d6e4ba25d6b2bf95
Date: Mon, 03 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738614353
