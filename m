Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D13274FC1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920694; cv=none; b=iOKudNF5VxBVpajQZ+GwOckQY1m/AJCmAKzjTFPjOTolcA25Wu99yjZkeZjDS+5GWpwPhbjsXFCt9Hl3MFHLgBdokF7UNRyicnVs5zli86kFKmDkmsGyg5lCe5U6CTj8BCMq7bgpNIrmBUukj6XC2nnNujV3G3F92b/76oGpjP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920694; c=relaxed/simple;
	bh=S7jr7pkbkY35guO3iYuPP6+qwJPDdBn1m8r/nTNv558=;
	h=To:Subject:From:Message-Id:Date; b=nMOXpwWDKj6UPpTBZRVGZKjuKUtGSkxhCm559InsJ09FNqXZGzQvQP1g1GCjl8c/eIkWlvCeVKfAOYV4nWAmxhT1rK/ZF72ztrRqLnRH4Gn80SOvqIb5jINa1aV0VUgU8HVbFQ5jYvKgfHWlzNPT4E7qp5JUPeFtyZdfeSGIL3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAcH9ln5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAcH9ln5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B703DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770920693;
	bh=S7jr7pkbkY35guO3iYuPP6+qwJPDdBn1m8r/nTNv558=;
	h=To:Subject:From:Date:From;
	b=eAcH9ln5y831RfDRojnjWXEsvOMJT4PbVPlk+pRNy3La+2uCzYfPAQweQVpcMW1Ce
	 gh9ENMaNaNopNymeVVh45ISPoKMaQbnkGDQhORQMdtAkrzH/BUmnyESWgHymdVQtnu
	 jdB6anTq0g+49TOE+0hj7G8RSa90jgKNq3wUy3W02cLGQhyzmUJ7p5aSqOsJdBL4fJ
	 /1IZEv3WT22f+ke/Lw3wWrVkF3dXZ5Pp77EPr71/SyWJ2CcZPXddLP8B3uComQpusq
	 01cjaXXU7i6M1cSY7Rk4+nm7sZ1p1/vU12/FR21R87JwBshg/uJ6mIjFpj+XqnQ0o5
	 kb8fbWYj8lZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F59BEEA846
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092069360.23275.11971736774512384006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9286ab27ef3dee24728c93acc04de6cba9c14212d6f60273da151c541765e6e
Date: Thu, 12 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770920693
