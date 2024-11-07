Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAAD185B56
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730996754; cv=none; b=IXP5L7ZDEraMfFXDct5gXYDAqlh5SsbV0M9KKfhYAjZpuYKx4WbQ2EkVAy/yUmZCT9pZ0BNSGKL3X07r/OOcllmci/qqCiW9izxNB3q6mfsoskX1YjDphw4wWNm1/JkBEWkhlSrdvQpQJP3N7/6/M1KH4RPct07cgzgS86GE5k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730996754; c=relaxed/simple;
	bh=zQXw+4ST7Mz8rXE6Sv8+2+I9f1fKz5YKDDYqaeZDb1M=;
	h=To:Subject:From:Message-Id:Date; b=uxFnv0zv17nYliauzg14fF+VAeL498ge8bvy69G/D7x3X4bEhe0BYbU4uPtqcfsoq6df4ubgW7zwgaPe7QHCdgsx3yY1ijWLzkG0o1S5kXo0Ev7kExe2trMDNE0P2x7ey64K/RzAs8d6quYt1G04i/lRzIZrATZRYKr+FPlEZZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POpMhbjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POpMhbjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E96C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730996753;
	bh=zQXw+4ST7Mz8rXE6Sv8+2+I9f1fKz5YKDDYqaeZDb1M=;
	h=To:Subject:From:Date:From;
	b=POpMhbjZ1PX/qgZAoOpfc1zrDCwkikZ0WyrE59Xn9BXejjto7/Yb5DeIdhyOSqpJQ
	 c4m5Lcm3eDdKCl62hvFPSyvoFPs7eNaz3YciEs4lk0JfP0/LrnaN+rYWAcdAQrpgy1
	 JyxVyP4WTBGeUGNVJTudMO6B1uvd5spR/tCVtiYg8JDAd/e9dztz698TGkuBgsIQVg
	 YAakLMevGIWIoAabStb2+Zqc7hV93CQpWqpqzOA62etWLIgfBiWmLfNtDreTGAN/H0
	 YaTFw1g67yz5+w/ZftnjVxl/mQsaX2Iah+VYFpQAuSSsX78VjBbfAoimgRKKZoex2A
	 uV1/p4pDnWs+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C12D43377
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099675360.29197.5560126218950887066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d1853b6ebb8eb35310a3e9dc4f2cbac91d07443641141cc720604b6806bcc6
Date: Thu, 07 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730996753
