Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5520180607
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718137703; cv=none; b=I1rCbmMJt/I8sdNddf2b9y/LvLME1mMeDWH6CgiVcM7s0I2+IJJu34CRUAROIR6nQ8UoAZmrP8aD899eWO3asTa71Fb3jvxW09RjjoCtzsQijzkNwUU18/4xIh9RFNQrlsavGhc+Qx9MLo4DGzi0oIawxFg8BrUAvtGQk0wmLBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718137703; c=relaxed/simple;
	bh=WfReRKNx9dF4VB8oukCLD1KO0m5PGya9z94RZ0Btt1M=;
	h=To:Subject:From:Message-Id:Date; b=fTsEsFVXueKbW90/nMPVs8njnMIvf/Nog1YGqIBMxQpsxc3VyNsWGizCpI8SJ0Ngr0eHoFc75levY9yg3eiDXq6TyKV8KiHglExomi/ZTh2JbZT9yCmC3p5mEFd1MwpGOWjJZ3Xw/f3zXShP53VLVYke1Agr6XxtBQ4O0UROIog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLdxAyta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLdxAyta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0402C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718137702;
	bh=WfReRKNx9dF4VB8oukCLD1KO0m5PGya9z94RZ0Btt1M=;
	h=To:Subject:From:Date:From;
	b=XLdxAytabvYk5E+N9J5qh+CAjkHbKIMvvOk3QYrsMiYFmrB+Kib7LBZhLr8Gh4+UG
	 /qoJtYfqGvCg1WK9FqT5qpus3ccupPxiaorbiQ23iSeZZA5nxHM9UxWvzVBEKfgRCd
	 fGaao0Ykrz7On+auMiQluILLuajDCOK5d5KuCasVpWp4emP3jP3/02xF6bVlEXNvzb
	 FSRoB1sLSIMVZE+T9KNI90M/cbtX4NNQKjwWZRcm7H7VEraFiK/3ipe07DIWspU3w8
	 AlHwBBMXxdMQPGSzaG+03eJMy5CRqVWT2P9TRYiaA3pcYtjMqud3M0/rz/a9TgHp34
	 OBywn5ww42U/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2E6C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813770275.10476.1113853704122742796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b327f829e76aba720db20c4338517d7673f46f822a03f8022cb196fab03bf4a
Date: Tue, 11 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718137702
