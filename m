Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49609198A09
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751072394; cv=none; b=Yf7UN4UPyD2mrLEp8rDGaA9LkaKyvZfNVkBFhTZmpo1V+rtPnc6kGLnK/iQRLE2E9TcdDwlGwbX8pHw2k6Nd0zNw82KnOUNWdS4Nn7rFCPmPFLAUxNsfhHQKnCTjHDzLCL3j/3Gs+mq9AZpoxVPgQIEdoRBxk+Gz8xdvMseibts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751072394; c=relaxed/simple;
	bh=qWiYRyuYQ6u+WhZZy0t5G/YJjU9b7K13qFIAVS2m8kQ=;
	h=To:Subject:From:Message-Id:Date; b=UNaHokw5kAncS8vw45s6C5CGG/wUo0LbGrLXRa+AoSdNJuCTYm30oy7jxyj2jOpiNz/SHE6RM9XlancVMO7SY018vNC2Oo2cBHGk3GCkVwIHDzoqE0WWvOO/pobU+a7AqEzzhwBEWQtqDXLq46V8TsAMaHQsB7vrUkt/KPMFWrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtxpsL7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtxpsL7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9414C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751072393;
	bh=qWiYRyuYQ6u+WhZZy0t5G/YJjU9b7K13qFIAVS2m8kQ=;
	h=To:Subject:From:Date:From;
	b=XtxpsL7W7V0lbYubNatd2p6JTemmqloNh88gWx3ZIchV4oejVO1SEEVTXC/Fedt82
	 Jx3E/YKZaWbhtNmOKKfwg81tXspx8MosvrFhZIBUCmI96WAjFupaAROUKlmYgDPFIU
	 QqRftJbAg0kwmuJ6Fib6oxZUPHWvYmJsRYsog0hDadt/6hhfEvbYGAScJBGCq065ed
	 dYncSZU8JOeI2S8yrdyt8ArQK6akATvwXzT1CwfAWeGlujy80bijyZQBBGtZ2WqRJ/
	 Q6wU/Qqa2NvSwp1YSt1bS/B2hyJPlzm3Mzewptr/0E8XctJSbUQflFsczAjb24ucKK
	 U+GJFLsvkfPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92872C7EE2A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107239357.22912.6528118197242882688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16dc84d10c9a002ccbfb4dd900617d2eb22a0e373e6a5bc984631d492cbe89f
Date: Sat, 28 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751072393
