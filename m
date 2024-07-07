Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502B8210EC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720361183; cv=none; b=k9mPhReF1Y5aAiSMKHFisTntOmA8lMPGeWMeKJdF1i1+U+LAvuu0anrrHSxUXA6wtOTg7cXpuSNS3tavCvGb2W9Xn9/UJfysuel59n87XipWzmhgJBYwyXl2gQCQPa9vyRUgWLJc9yuJ4gfDcnu5zgJAuz6e+ScpB1zvVu4ug10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720361183; c=relaxed/simple;
	bh=RFIZ5smSRiGkGyCB3+ThjiqEgjgMh3ftTmokbK+NEEU=;
	h=To:Subject:From:Message-Id:Date; b=FYF6a+dzFGdqy3NlOqlqmyd3sIeTmQNoF95Ni+FEle5CvdDa16KdQqs7ch9JGjko3kEG7KKOQPisC8RKYtu0Ksw8fDnvNmbEcGZNk4WBOa/PnJKTuonuBDEw+jNxqkQolYG7TPCJLRT713RRyFuNpN6LKzfy5x7vYtcL7xRMVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmvpzRgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmvpzRgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720361182;
	bh=RFIZ5smSRiGkGyCB3+ThjiqEgjgMh3ftTmokbK+NEEU=;
	h=To:Subject:From:Date:From;
	b=VmvpzRgfi8G8WsV79BX7TTRbr9pga8wuJVgENSrgTeIXVLf2SZyaLVNs1V4I7rJ/u
	 bFca8GxhD6DGea804qruR4W0QzEWhU7uvg7BzcX+RdkizYv0mkNHvcRpYsJqs1dJ+7
	 oJx9HGzxNsdBo9bSzWeEjeqroE5sLirCg8O/HDhBPKdi2oVIGbbZh1yEOzYpzs+KQ2
	 mhj7LzLoUq7KRrzA4kmsUfZKIyTA1bvdPIRpNrCInfLUq4HkXvuhe9ec06RRA+6lBV
	 BjyINZgZkMq/Jv4+Qi/ig7LOptShL3oi4Me6qDCrF6+Ve56T60N+VZrp0/AI+1IVtR
	 hnFLXCElAugNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE41DC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036118277.18148.14057927677158141668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a339a3c3958095134aba65a753f32af271f1b8ba431ae2212af2f116977aab
Date: Sun, 07 Jul 2024 14:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720361182
