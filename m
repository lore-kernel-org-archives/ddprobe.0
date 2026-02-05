Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7022C11E7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770315834; cv=none; b=boh00upOfSzmFYwxfEAIfhFX8Ce5TtZfFQ/l9Zi2NAeVePrfZDUwmkAdGT3yYIkMgrEfCcBdyB7/SVy/TsY5mfij6XjkhpEhKeofKyXuILSkoGGFmtQ0ix3cEP4hsYOXb03WjTLQqeeiIFKM9NP3aWFe1txXAk0Wkr5sBm0r17Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770315834; c=relaxed/simple;
	bh=gFPp9/On14a0m2aCX5P23yiu+pzDYPXWVQnR2zVDOfw=;
	h=To:Subject:From:Message-Id:Date; b=bCF2rkAKu++ev4cJQao+gOwlMZUYGuEFqSBGXi8+MoQb+glG8Qi4LYIHNRn5PaviUOnCCQ0bF3wJ0EW4roVmrJDvnyJHnO47bH8jYShH7l6GQbJH1yCYDqPYFQtFTlzqP5r0/CBS7ugwHd5yjo6gk+p6YCv0A5Zy40XzNGRFeSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqJLjkzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqJLjkzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C4CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770315833;
	bh=gFPp9/On14a0m2aCX5P23yiu+pzDYPXWVQnR2zVDOfw=;
	h=To:Subject:From:Date:From;
	b=fqJLjkzbYmnydi5v1pOWryYJW4oAZjrw4CdG7tGjhKSWwjUsSand1sZHicaq/LLF2
	 oBzKnF1XqGKvpWdMrgWJpX+Gy3PD6+WYfQ0Dj4k1SCUWefKZGTn9Wwkx/elZXvwUIE
	 qez534WSpE8X5QbKYgHZ0blO1HAXXfL+mde/b/RiuA8HDQx9epKwhz1pHyXBArofug
	 L4j1W4wratMoPHPJ1Fnugz+/rlEme5DK2nEcrYGGiS5nVCBlo7pcJnFkwvrgtoEVTZ
	 oaQ08df85tyWLn5t2xOqfAsy1eddo24ZEi6+sjOaChMNh0yghE76WYxSvv3iBVyq+L
	 432I2TlBwVd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF1ECD992
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031583358.8309.7683931552446189841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42805217487b468452e025b5e171537b97377e9420a7c8f9b024842d34dad322
Date: Thu, 05 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770315833
