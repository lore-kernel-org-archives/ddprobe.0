Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CCB2FBE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791957034; cv=none; b=ryfRrbsSYqnY365GeXRWqLboryzRMh7LwCaNxAw5Nh9cfWJSZxijkrmUgXyAOVSoN4TNdgjj6LD4Q0asYdMnfS9LtiaLYEBLjxMO7zi5hWrTApBvcpdWrdSIku7XtzY/hozfVcqJPffnM+/eVhmrWIIHczGrNn3mdPzUx/oKYOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791957034; c=relaxed/simple;
	bh=jch/hqQ7P4eE7msrI1LcZV7DvTD7ed8HerWJLcElyEM=;
	h=To:Subject:From:Message-Id:Date; b=dsnwCC2ynZti5cUbxiZGXjC86xrdXK86/pt9kSHHY9NmtvRVyc+75G5S7l0oRYR4NoNvVWkhtEiF3eLjSBfY4ghyGJhoiFrsXyPIsi9FhA7K7nJV7kUw94BOnoUuK+lnaF/47BUmqoQ3eMj9TXGGm9lK6L7CLozzRgAwX1EKK/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpCsADtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpCsADtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE03C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791957033;
	bh=jch/hqQ7P4eE7msrI1LcZV7DvTD7ed8HerWJLcElyEM=;
	h=To:Subject:From:Date:From;
	b=TpCsADtbZIlOrhIlHnq+L1iL6gjro1CNNYnd/j+A8APYfTgEdSFZA4QvU+5Uvve3/
	 VOBDV72qJuxQ9qBTts8kDdfvLYBY8AtFmBpFYonq3F0tGArgNy6gSmxcKAh//NVcr7
	 e33+lF/xW2yG/UIGeX3vP1SJRMZrktkifW6KyhzVUZ6V7kfIp/GPJIZXSjFHuzITM7
	 9+5eCV/1VRbiftsB23cm3IYSZcFe3RTa01TR5TLANn5cyiWBzWQv1Na/lvrBtvso3P
	 KT4Vbq9zCoLaSXNeKhCFWPvFibdly5JQ6N+1irDrj8FvMVlGwZvUVnOoLtOBIGcMXo
	 RrTCG2PqlEuMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CBBCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195703372.19316.2543348461066578669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca011be84c6a9ab64e454cfabab0ee79b98f6b63c46bbf856f0174edba8c15d6
Date: Wed, 14 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791957033
