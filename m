Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EEC340298
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776316654; cv=none; b=bicpeuZteOxFIv1XMXEini5U1bATRuETlW2HGGfhp68fYGjMku1cUnuA8it64FPcM1hixfdGJ9oOztlvQRX8sOJKR/akEJYpZRftzDXyNQLdpUgs2VKjxaFSi3EEFJ2HYobpMDUHFkTuNJDsbHBD+PAi8XyN560QmZIXtORtd6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776316654; c=relaxed/simple;
	bh=KsrdIzFrh0U7gEaZYlKX0pWzaNF3JTdQ9JNpoowcFxQ=;
	h=To:Subject:From:Message-Id:Date; b=XKTDTaA2XanD1E60br9u8F9HzawPDe8bBx6bnz9M0RofWjwu29rBpf2KpFUj97yjXYIV+6p5Fk0YP2Hme6uPeUfHqPtI2WKIQrTHkWBZFJQ7b4HPLy2S+dM3JBHCmmGEDoD0GXPE7GsRrASvsZRX+Wj4EwM0nDu/Vr+ERu5H9IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+QP6fMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+QP6fMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0D7C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776316653;
	bh=KsrdIzFrh0U7gEaZYlKX0pWzaNF3JTdQ9JNpoowcFxQ=;
	h=To:Subject:From:Date:From;
	b=d+QP6fMAOXZ2ijddvUAk3clHR8BDcEezsREQbXZ4YemdIVVlACyed592YEMDZP8iq
	 rNVUYZ9aXISD1i+S3N9Y7r4zaZy3hewWvX7Sw5l7cTUuL9cXGRPFs+YyShuqIz7PIB
	 yzwzHRh8rJHgY/PgKTo9P3HwXQP94iGIL6F+FGZtDpkzrjwdWJwgjUcaTjlBv+bQdY
	 rFmiWhBlPwRBQ46TBjKFFXwCF4wQK5Zd2SJAgnctS+6uh0d8qAd/lJgeQUBu2sx6K/
	 0QM/UrSvH4TxV8WCDTr8vm/KLiLqsVP4r7OFnFRQU6z68TlRNi4Ukm/6eydzlG61n2
	 nbyRRwhbuWplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EBF433D1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631665368.23227.13130108534439306736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9e449cfb865a38295f9113fed952dc1214442d75d9df12f4619b34883c2f0b
Date: Thu, 16 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776316653
