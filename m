Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3352818FC74
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745051994; cv=none; b=KUcyz8g3rJRIb3kLeujl3x7aXdVhHe99dvvEC8DPYYidmb+FWiI3PfsgHdJc+sKyy8+5YTjwDwgttrOe3jGQcUzwN1rRMLyBdXenurmiqqGswLzwxsTVheo5Y/ZiOnWzjExL8I/oKO327IwaJTPDljOydjfuFRtZcuyddGMoh3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745051994; c=relaxed/simple;
	bh=nDhcb9k41a317HFYh44gFxQfltSQf9xclSxkZHPToyg=;
	h=To:Subject:From:Message-Id:Date; b=YbZktSONFsmuufgnlRs9glxb/5fO1hRQTWw6qRLBaNb9t1/5a2jhTQppcTTnek+Q8I+ZNm3PcfVrEyMx5q4xAsbWw86myYzBabzH/WDvo0HU6TXKQkWFUL1+5vl16TG5h7FetweWG4FMYNjEjKNDEsqsZumyO4uzZe16kzvjz88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5c+24Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5c+24Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A63C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745051993;
	bh=nDhcb9k41a317HFYh44gFxQfltSQf9xclSxkZHPToyg=;
	h=To:Subject:From:Date:From;
	b=p5c+24AeiFA4UGM6UHv+gpU/a2pWnLvRtjqX1D5wY4smgfRtJs/NEj8B9OwLX/rYd
	 X6hMHluSUjHZx9CAbKNOmIRKHzpDHyW+D5guH7RVV3PsokJQ5oE2T0NLMuAK1S8oPL
	 w3WyRO9k00mFv4gPpKYgaA7mcsAzt8hFmoRKyzp+n32HQ3jSU6jJpTI1o4oecW9VQX
	 At1aj4IL276/bUpbA2lcdLv1Ei2oHqJOd6TU+SVMxz1faQAh8UJOIs6ExWu8Mi9LOs
	 8I/WnUhFzjYJYHooE9panQebleE7npj3Mp6huLP22csOi+ZSpGlv1VMJ2mZeRDc1N5
	 sfgJm6ogQCaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D17C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505199359.1313.5645110843050806998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4338303b19489ff077983663b8fbd5642aba82f8704af08ab0895af3ffe6b94d
Date: Sat, 19 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745051993
