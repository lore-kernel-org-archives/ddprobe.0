Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAC514F62
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720154123; cv=none; b=tsTZSpLUQwBFcqt5Owlr1AxcW6/RsWMgjZDTALlEe+O7HIVy37V76ICg2a9otGrsjYCY4RmMAr2zlvIoC+xgLuYp5YZ/+8ECf6nAg9+X73WyXE7lAGrKlmBEv+lZ/HyrO1Vc+FP22rDj5Gxta48uwpZEPNLixzng2Asa1QmVO1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720154123; c=relaxed/simple;
	bh=IOWwqBfqb/UF16Rruwe/PtCCjR0oz+jP7gpt8tyaSXk=;
	h=To:Subject:From:Message-Id:Date; b=WoLpS9fSdc5Nj8p3XyQcS3dSMMVXSFxyoV75zEp0VUgPcUvnwKcwo0kqQ28iD3YUw4JbOGuIMQUylfVgRyZBkI0nDha12/V7xdlybGcfrpYGsR9O9HN/HO1j1od/fhhT1jH4wMG1ztVzBTz6AOlrPIxFMZTYhdF4sOveIwT3poY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbugvX4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbugvX4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BD9CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720154123;
	bh=IOWwqBfqb/UF16Rruwe/PtCCjR0oz+jP7gpt8tyaSXk=;
	h=To:Subject:From:Date:From;
	b=VbugvX4Kj9oFxKoURWNgEVV4iBi2JbprpYYgAwr3UbCyiK7H0UEMg3qv5U+JIVAFq
	 6anF+hXG1ps840LjQmJynNDqSCg4sjvG9IFIyIT9stvaESTgNbodyhk83IkVI1jKhF
	 9sOW8LF2FWudpZFluPYvmjQIo/dz+p7GeYGZgadBn88ICEJpdBft0hB87RlpALRToH
	 OBAaHKn3AsbwuxMr5ZELohzPprwKtFaX+CL1l+ycq00GEh6EEhQ50uqVM/FngHZAeZ
	 5I/MtiaXgIZwLZhLVgi1Cn2DNsGZMmPRplHrWMdg5Pz69+YzsdbQLY+AaAoDH9yCkY
	 zfSE7EZhDipIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E67B0C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015412289.9135.8328480264047470188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a978b48e8f737c9e12bd3298a19f63efc4880ee4883d00da19e6628ea32290
Date: Fri, 05 Jul 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720154122
