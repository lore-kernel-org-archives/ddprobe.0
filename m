Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6144682E
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788520834; cv=none; b=rwzXxA90gwtLFQzzLd4FN8Miwvddd90k3z/T+OeIWvmUNCAWAiOqyoNiAicgbShFKtnJ6aHTheg4/zFitW39auy+MnINZx7VaHVe99YA+HYEVCl7UzDPPTEwAJf8mmoRIm/mpmwFztrEY23ovhweI1+/dUvu1VZMoqdlBdMLIG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788520834; c=relaxed/simple;
	bh=uKXT7C0AjAHJFVn0q4YRE4tV3mHLqmWsHmsfHrR2Qnw=;
	h=To:Subject:From:Message-Id:Date; b=ZjGgM+fqyFbWEKAPp95ORu4NrcMUvUDkVf9gwHMZ4vDwJL3U8Zp0ZqJwRx4IKrh6QNKuel9XB1F9fR+9Z94zUCrV3HHCllAm6owS/OpqVJzgp4i/DFJlf2HPYLWwbArA/yvWOWdoaXPWwFo5EihVH+oZIcbtN4xTriuQdD/0jZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtm7iPUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtm7iPUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CCBC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788520833;
	bh=uKXT7C0AjAHJFVn0q4YRE4tV3mHLqmWsHmsfHrR2Qnw=;
	h=To:Subject:From:Date:From;
	b=Rtm7iPUfzndpAxjMHCjjX+V/TV56HCOypXorMpLHrCkMfnLWZ1aNDRDOitPw6QYNj
	 AMmG74dTo34IFPW+Ku6wYR53V3A13Korr5Xwi/YpJHBB0MNlTuxcOWRUKGrsAbs9o2
	 pQGwfYzWC7ygwa8/Xa92jUvRgNiE+fPLd7KvUao2gCB2w6mAvXLvIAN+IuAyCam5N9
	 SOzaYDFD+Y8Dw0yd07cPzTgXK2NzhPCLUSnOAXEJWGZLuko77gA4UW1N6J/nAB2n0Z
	 qH1VP/Pt+oPpYnrlfotiWdHfzQVfE+Q11xLs52EpD+etqheKyd2BDHGiTOkAcQ0Gkf
	 PZZPt9oe4Sf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2BDC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852083370.16024.3538225454183008255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce322921065278de9be353e62f1af88eacf9a7e063d6a3bc2a22a1a3720cd28
Date: Fri, 04 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788520833
