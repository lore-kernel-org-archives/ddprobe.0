Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249FC130AC8
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728158754; cv=none; b=C+SvKZ3RXDKtPmileaA3o2YXBhzU2URM/Tn9Bsk14u/wgszw1OwMqEh4z3l+Fb0O9X+Kf8TjqgZuVjgARq+lFepKw+QEu9Ux7S0hyZcFx+s2KJ4KxmJSALXygvJ61Q7M+qHFOz7FWMt9v/B+yIrgvvpP0KfKQWVO/Pj2NFJrPFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728158754; c=relaxed/simple;
	bh=CEtspNNSNJat/sSGrZcu7yUmznak+W0N3l+6HtFerQc=;
	h=To:Subject:From:Message-Id:Date; b=OjvkcBld4ybIGoCa1Zqguk0q9iEPQtAt6q9E1iS1Cjl22tmIiNkBvK1Y+VM76iIrFVBN4F4b0XyxlakP2DaOPkK0nEKveuHl83zNKG3QSe4cYOwvRm1MElEvTYuDMX8Tr8ArIP3Bt9fHG6xJbnUuj0ie4W7o/CWrQcJD4YECXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyYeE8Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyYeE8Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB95DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728158753;
	bh=CEtspNNSNJat/sSGrZcu7yUmznak+W0N3l+6HtFerQc=;
	h=To:Subject:From:Date:From;
	b=ZyYeE8WwlB7IyvKj+UYxt8PmMhVtGYyiUP+YOGh2cVe0cF2xKOSVPh7xdQYZ4oTgK
	 37M8ujhJGpwJY146vCBedNlagLtshPyM08aFZBfrfy+xREoMMwfDTc0abkwVkYxI5O
	 6xLmkO32zT6tiN35Ii+nntytnRWqpe8fhXeHiiSOs01LwUM2uyHQWJZllTRE9eN0Ed
	 Aixt6/kZ9ncQ2BwxsCaQlJCk1/vZPxBn5QgUidg0CMuqgso90/3158V4h1zN+Lw5wk
	 1mxE6K2J/RzWww0CClTsXL3kWAYFntVTaoCaPNiw6zBFFsb0B7aWfrGbxS6XdDQn6Z
	 T4Qa82HaGqgzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0CCFB42C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815875360.10350.462326745957386376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db68f0a435d6c41d1b0ab4f9c07bcd7fe5f6813d6a802907692ff1386f1cb80
Date: Sat, 05 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728158753
