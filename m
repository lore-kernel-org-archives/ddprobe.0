Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF733FB07A
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791358834; cv=none; b=aAgXMSe6qrvF7a96GuSCjXaz8BXagHTj/EiFKa90SOkxSoRz4NrkjPSBB6bO/DFJFHomy2PW62Vxa8320liBkjlOoxtl5n9ia6g+h2EBcommfFPGXx+RGSceDDSRB2P3eNravfco0biWuK7ZGuOnyrnncroM7AsqjSOwm26BSC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791358834; c=relaxed/simple;
	bh=BuntVIL3G+48HgopLDeP1d3zESzioLiPm8/xbzjVK/E=;
	h=To:Subject:From:Message-Id:Date; b=FXIFYKdOnBgvFYmOXGVLKAmr09O/fsVeN5kfMS3aHKWqXFn/8SpqYDm68kWxi3zGw9mnnXLmA+GKQjKPr7mSVrVs83e3NvA8axtLi7Afer3ouJec/J+gErNp0jzRPfT2qR2zlV3IHvUOqWmAHGLR8ObtXHDukuLIhEw3LqqL+LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHk1PBet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHk1PBet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD827C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791358833;
	bh=BuntVIL3G+48HgopLDeP1d3zESzioLiPm8/xbzjVK/E=;
	h=To:Subject:From:Date:From;
	b=kHk1PBety/9hCChEP2TI0VQw9JOyiNgl/cCwP9YoNa3BIhx6QWNI007FllzfPVTTS
	 2uFPlrnNWBfQxS3SYH0c20AGKXWrO8/d7swZPN2lmgBWGPPojSaEpxX4SSLHA8U/s2
	 Ng7lzYMSBu8O4q+v+woceaO0nm08vPZmPCCt8VkSNcEjhDOlQS2CzUXmYxhWkKPArC
	 AUBkFSfUSfaSlU9aPHFXfdEdfReMXazVqncJy+350wT2xuZKifspqENSBGsk/QAZsV
	 Nw7XEJe6fuVE+ViYbAoei3FFkVF4iSqdZYMDLB11D/CZQ0qq9YHnZUcExgeIZbCG3z
	 ClAaF7fCo1yIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA78ACA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135883368.3286.14281303282663211546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6425a04e4aba4c18430be1394986c02fbea850cab0b92d9b6ad56ca4e6bef7
Date: Wed, 07 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791358833
