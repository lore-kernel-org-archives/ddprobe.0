Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA882AD03
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781831194; cv=none; b=ZtyNklwe4hXkASZZy1kUhg9too7fguVj1VFHfQ9qy5QdtOMd5lOhRvQD6VNIF8mk0o+0ImJNUz86wAT/KhgNtJopEWp/k6NKmZekgvv3uRQCow4VtDgIEQR+jIuCzvRxDr0T1EgszL48GwEw7bGOTHsXppNpJw8WgSi0vuoVbuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781831194; c=relaxed/simple;
	bh=QVcvTobZR7XFRxa5ZMOCDDqrKsGN7iHZrEpiDEIi0VE=;
	h=To:Subject:From:Message-Id:Date; b=O/1+sqQMrHxAt+Nb0+cNTKel2vTQu5BYbsi1imdHw/31bxymcwuYrESR3Vcs9RV5aSe84DFui7nfNrTYMdZMr4BYRm6SUYazJat/oYfrj8jjHNROJvFt2v8W5zF1yHUeSeWNQesWRsElFsLc9U+ceiRusn82wtZEiEuUF09cmdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulGAvd88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulGAvd88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF634C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781831193;
	bh=QVcvTobZR7XFRxa5ZMOCDDqrKsGN7iHZrEpiDEIi0VE=;
	h=To:Subject:From:Date:From;
	b=ulGAvd88c62iQaMIf2tu9BKpQy2OKO3AS1zi04RLPUrxUVjEj58jwlHmx+UxHcaPX
	 0134sNqS9dSMn6L2w108FBlaF1FENx8ccfvNHEvrJOlwTOVGpaPwOzHY2gnidhsOMo
	 W6viiNzAE5OZmecOEld0NQMMevprhj598LwJ1thQpn0KkGHRFc+CYhxtocRv3vLV4n
	 +jG0/nmAfCXFgkoPt5WAo382lceZbq6UIRl/3t4vhIBtwRBrQY7o8hzdCvUn07mMnZ
	 OquGRXMQWVtCmJIU5x36ZasiTReNraXwFNYtcIFE7Z97RAmUT7ZTsibNiyVEV/v6jG
	 IduGFU8GSF1Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF7DCD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183119368.17405.7303886455538698928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961ca32a9e8643c8bcd0bb047641d996f1646ff1f2230c87c3b1845f24a43049
Date: Fri, 19 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781831193
