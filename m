Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430C770E6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720682244; cv=none; b=eN43gDHuBOj7/yJp2QloV4vb3BBHGLIeYV6/G74X/KRQVKghV+NZGppS1vAyimA5c7EwUnLH9if5RbzDpq1uhziROyeiPHNNzHiAY7FnXU04WmjFHzUVa4tuM8jvPMhwxbt8/UtMKoXxUF0KxYECwnQ90LvK5oSQv2TGPrDx7X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720682244; c=relaxed/simple;
	bh=vMV6TRt+5xQ7IBuYpUPIqXwofsiCJNpz9IzfqsQ6G1s=;
	h=To:Subject:From:Message-Id:Date; b=TjXRYtfh9eVzjMGHZ1EOza5bPTaPin2lkJz7Oo/PCtZqWULlD8sHpA52dyImdqYxRZjzPIhNM2X3aFeW58gIT69y2TavKulrQlyxSWXNZKp013GwfsrlDu1S0j/dNOFMysnS87QPIoR9eN1UwEL5/TbAk8wwTIn30FqB8tN9wnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4qc6iiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4qc6iiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B74C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720682243;
	bh=vMV6TRt+5xQ7IBuYpUPIqXwofsiCJNpz9IzfqsQ6G1s=;
	h=To:Subject:From:Date:From;
	b=A4qc6iiS2Kazqm8cXDrAZYZPGPJ505wj9waPpSdtPA/19ZYummW3rowyvZdOpi1IX
	 E3e+AXKR8Uuh40bcPuYVE+F5p54pRdshGka2E8b72Yqr1VpVMYOQ+SYtHOSXp1sA3b
	 hAontJifD+3ws5DyNJTyrKoBkRMWHde3hKsw0g73Ph7QCJvvJY8oXRii732+dlJQ2d
	 zuK1mwBeAl7XSswXLyAuP7daSPLXL8aapa6eKX1U6v1MGUUJun0R2wjh+LnPH5fJaz
	 9cfI/HgQQOoRYrM/BiCOmn6q6UduyBKFIfSnhXQ5Pj5xXS2lW9IXEC6xrPYmhjs9kT
	 8SHqc+caeh+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6064C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068224278.29573.15662891491988527904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae3c73acdc0cf5b89d4e3976fa27d2d9a637c7af489d332710183ebc0e04cc6
Date: Thu, 11 Jul 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720682242
