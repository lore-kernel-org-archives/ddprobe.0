Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A043E834C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780674874; cv=none; b=P+i66p4L2tWICa+jjHgasSugOo7YcDKGGh3F+JAotXjvaACtJwG3Go52cuO0wf5+SQdpjfqVlmRtOuF1ZhTVT+vkwzXUOlLtp8QyLTaQTF3FZe/xkecmylwuwZGfeeJ5IabJYOzLkrJmYSimzuAtVGrSFItz0/rt+EX1AGghPAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780674874; c=relaxed/simple;
	bh=zUCy4npDq/pS/u8VEcLwky7tsqjTS2BSvveLh554Jj0=;
	h=To:Subject:From:Message-Id:Date; b=LOqKS+ephB4FeT0yKW0Qb2miKVbg/UFWX2Cczf3QD+zvZ/K8ucgiVtgEQUJ8d7KmOQljbyS2R7qeD9maH9o1J00KhfHvFHN9tDlBdaIFFV6UIrAKJ96kdvGCMJsPNmkVic14FX78ffUkQzE+L5i7pkYOMgsb8WzW9v6a/IYduJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqD56ATn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqD56ATn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9700C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780674873;
	bh=zUCy4npDq/pS/u8VEcLwky7tsqjTS2BSvveLh554Jj0=;
	h=To:Subject:From:Date:From;
	b=QqD56ATnce2LuyOevnv48U0ByoziicQ5f+3hKCnRth92J+Y3tJO/aMlNkv+ij8XdW
	 C/vNbgq6t15/Jf/TP2jU8yzJ+j0MRP++cMC8b8SldFrKe2Qo5qI4P93ciLjaJoD6Uj
	 /JxkMAIgjW8biuHiGXjIkSkqHaX32M6iC1Mytc9kKtCbI8U5hEBP+Htjgnt19by902
	 ovkN4zgvCgj/ou3u6dX/1/AfvZhMqaalqGXaXVLmLRBKAdFLWXk4q7Fx5JEEQlDke2
	 c9xhWD/Itaq3GkLYhwHr7owauPDhIUkigOZaw5Kp71ykSPuoSyNRGmAlFg357MRim+
	 LwbrNVcjYGw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA74CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067487375.14056.10594765019868475109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5db6e4dfedc92af520e6a643bb8369ac1eeb6e26c00a6530be6ebe0ed182b8
Date: Fri, 05 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780674873
