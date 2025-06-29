Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDA64685
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751201994; cv=none; b=CLYyJ6fPwaXMtVYcFK3Pf5HTGa/Zyx60i8OQB+PjvxLh29t8X2H91+7eKx7cZsoDiHco0x9CAHC89T7HsMJgJo0OpcMMxCLrqL+7ZWSQIg5miAjucsEjm6oORI8wD55H+Z8wkiiG283HS1flyArGk+ENuN2tFpaC1DbsnMykslA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751201994; c=relaxed/simple;
	bh=Ogfg1yAcFlplRuGVAu6tG9gJIBwtniHsSqLHrkJN2q0=;
	h=To:Subject:From:Message-Id:Date; b=MKNvmGYd56gCn1/U8SDpiDGoqzsNT9OsYiZ8H+wq7xor4M6WT9eEI4HW5p5ro7adk43PcQKzYEoWSa9/uhVpq2grvbnLxNmwhTbh5VNTsnoDgwtVcVIZbqmbpN0QazLDrKsdI3Ozu21HsnNo7lPquQPk2yMYVM1wPA6LsTHIMZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+lZxa8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+lZxa8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751201993;
	bh=Ogfg1yAcFlplRuGVAu6tG9gJIBwtniHsSqLHrkJN2q0=;
	h=To:Subject:From:Date:From;
	b=o+lZxa8Ed597XhnJLEgbYuYKLJW/ZUmdp9+moLJqktEkDyt5MMb7VsG22UN1uq8cT
	 wIvRLTrK+85ImdR+P8l09N1VL5p5Ih2K+uqB4SJjMZ1AFnfJC11M7NYe0poVLvFaqm
	 kNfMpNeRdIgMrohoR1PdWYlFiDAphOP2ZY+54+qi2BLL6+g/xWp0Ec2oJbULtG+MBU
	 emaWoCWKs7Um/gJ1yWJ8b8zFYN4woe6CeJ6BpD0iAqlb+Z9HqbctcsNxxXqLUNx+sD
	 BW16FeYsFeVQPqHjAj9Q/pkDLVmYNEFg6Avpm1U3FtjOe2fCUVb5c/LsjCdGci8DqG
	 mmS+DdsNOLvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A5C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120199357.11075.6068274918643146642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1baba6be6d42a653c93f8bdc509a10eee1020d76a1d4584bd41aab14b45ad1e6
Date: Sun, 29 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751201993
