Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B43F224247
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719394; cv=none; b=VK898F9dH3H+x0Lp8Wkg0xI3iP93dNSBDYdE4aX6i6UKCN5hqJpsZkrsdhHSNQpOLmASZ43+b0cYp7S01zpRHsErE1pfYMKYoPqxtAeFRXgqZ38U7DVpXEi/dAfc9zFip7fT6hMO7vP9q7elIj8u+by8CQLPR9vahRAUDhYyjvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719394; c=relaxed/simple;
	bh=elVlFO58rvq949WSo3gEjQT9KXjbbYlyeQGampCuhGQ=;
	h=To:Subject:From:Message-Id:Date; b=lwFjXBThedaOufz+3Yhch+kK5LJZBjeT0FuNJk+ZV8H0CGOI7XOLcYwiKK7kOgY/05HBO8Ijn9M1z20XFM8nzT34X+hZ3wuwu6+4Tl7HTrLqhfV7631esPi7M/Ruh7qzV3k7tvPJbFp4suwGbpayPWYRm9iXnYOaeXcwn0n/aGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvSaBnPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvSaBnPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EBBC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749719393;
	bh=elVlFO58rvq949WSo3gEjQT9KXjbbYlyeQGampCuhGQ=;
	h=To:Subject:From:Date:From;
	b=lvSaBnPGdqJx3AZ8zUJBiHCUkT+26gTgebrkI+2Bm17khaXTzDqp2bGbMgkMbSFsi
	 F/bpVAi2LvdzDR6/B5rAFMPAI8jmhTUB2PalpABRVrFF4s0Pig6ZZsBa6d5jBdhByq
	 gyKOFMfUAp7O2yLtFHYqmPcADfYToblGH/Y1CzHPVpxp0rHVSNNyrx8Zrav4hSj2hg
	 33FPedrQ/zduliYS00oEMSKdfuS5NJIKY45N/fpzzIrDGv7M6bldLDLso4Jdrck3KC
	 QTlvVopupvRyl31fNJE7zi+teeGkE521xwfB1bYXiQydB0aXKK1JwhhSUP9BgBYj7O
	 Yz+A5iUrg5BEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971939358.4760.3182525258931417462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a6f655dbbf58a83c37bdc6cc8b04889f76e9957234c4f7c0ce09b72e9ed9ec
Date: Thu, 12 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749719393
