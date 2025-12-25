Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE137142E83
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766682834; cv=none; b=iY6gDRTsH18wwAq4ii6WXAzdn/shWIup57KaOhtzQYkzIerV6dKc1QsG6vRm4q66HXv22ko3thOEgZOj4xCyl1aSyfv6jn+N0v7og5BJNcptwFMYkEoAd20bchVXSJh30vPRKYt5IyIPv7r3TlRJz2dy2dzIYLef6dlNURWjh2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766682834; c=relaxed/simple;
	bh=z5j5cctxv9z0HKIeJmu1weRRjsoGYj8px0cEjyYHxVk=;
	h=To:Subject:From:Message-Id:Date; b=SkZOT7IpaQSZz3ug9H7BizwlmnSWZOU0SpTagS/HRDg4mQX+icCh7YLtKjK//rjjfN3oPxsVu7PKFniVyQUOPgrR1eNH58xnr9suijGrzJj+NOa60Xfp+M6vCeIlR6wh2DD320ty68nlRdE4ullP/SBp1gNODUEhjT+LAYbyPvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlR5SqBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlR5SqBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB67AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766682833;
	bh=z5j5cctxv9z0HKIeJmu1weRRjsoGYj8px0cEjyYHxVk=;
	h=To:Subject:From:Date:From;
	b=NlR5SqBJIRBB1ozWZFYnQ8YErhTqN+xg+I3mochDHHflU3YUGLfifDW2cLy//gc7Z
	 HD3YpTwjM0b4aYL0BfLWd9GoV4oEityqaUBw2o5c+LPC2YU3L2ai/rwoGbtbuhMdxi
	 VXMwOIHw3Tf8sDs+Sl34GLwrgf59EcmGb/hC0xZ92NWuH8c7LE2dnZwN538BM+b7MO
	 Oo2dfEZ0XrU1sElc9gw2qCa5xV/oLDDTxK4HSB24QkTBl+0RZ5Gcn1ZNK1KMYYtERr
	 TLRHeX08+vbNP6audOJ1bOt4S7MolPEpj1nRE9VEQCoKd03ejIBKO6/IHVwOka1IcM
	 XvOjsBu0PAnPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CECE7AD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668283358.31449.1097737092107163344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5d8946ec53efe61dc1b2b609e368759c099ee03a51aea892a2e60f7b638893
Date: Thu, 25 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766682833
