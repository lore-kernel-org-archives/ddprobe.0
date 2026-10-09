Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF8937AA9E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791535834; cv=none; b=HbZqmVzrSUQOmTxTrKCIm2kLBSoPRLeZbhAYOeh2f7QUArgVcsHz5SMGtvYdx6x/FsvB4MGp8Cw4VGZiTEDG6Bihznq73dk161VmggDuWK5SoxTa5mTzeNtqpXCu2sn/ymmtJ+VY46nbUfEt07P3cIPKqKdbXGPpqCaI77aV2E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791535834; c=relaxed/simple;
	bh=8NjA5CVAYh0pLylBeaEd7pbXevE1kdZr82WrCoNIs7s=;
	h=To:Subject:From:Message-Id:Date; b=BXdyX1QGorsU4X0c9/EOmBhmkwnbWg2C1HqRDXdXTfBpAr8jWH7eUuHIHU1/xZG+3IP+nGOhU+8VtNQuO0tywIJ2sN/aPQ1qAGVLcHnngX98MFGuuJ16ghrnGXUlJKOSBkycuo+P6aIRIRlklUVzlh1C5gnSYcrYgefXrNe78co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q15dnrbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q15dnrbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB965C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791535833;
	bh=8NjA5CVAYh0pLylBeaEd7pbXevE1kdZr82WrCoNIs7s=;
	h=To:Subject:From:Date:From;
	b=Q15dnrbK3z0PcZpWiQQ4/JPbtKf7y4zOwpHC/9cFh8lZv2cH8HbJTpCt9M13Kj/Yx
	 VQYzV14LSeDwQ8r73K5n1D40BSs0rZjiVf+DydgV1QPDAkterp3I8pxt3KfAKWsfNc
	 Jci71t3QCFoSVz7ol+KM71Y4XvZgvdci3OcyhkdF0/qg8iWwzyH6d6FGgaYgK+Z2Il
	 POxMzSWnZayLAzcpY7I8wIRP97MLQLCnKPVaJM2DonXHK8h0AAjpTBoEZFuQGHdkdV
	 pTvj1OKpvBsGUMnfPxxurPfAj2bTkzppISCBQuAqlpSGrASoG6ouN391afVURMbaoU
	 F53bhXJx4gB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEACA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153583368.9025.13890073511987823166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f89d5d4728b60e7b0a8259b13adebe89ecce6afb3388b46ba2ec2328dfd1731
Date: Fri, 09 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791535833
