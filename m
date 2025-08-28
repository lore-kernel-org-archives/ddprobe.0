Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086ED30EF61
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756384794; cv=none; b=oyzHqGBpVxaK65quNUwjc7meN1UXfjlfYKO/lVZ0w5gE4/nucLbsQIBzdoyirELQ1qhddLtAK9p4aFZnbo3U9/MXRxNLVudFay86NerbV8PhkAQUG6iMQOkXweuX5nWdLAliEsFI76S7auAugSt3IxGSigB1rDOwxURz985nhck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756384794; c=relaxed/simple;
	bh=GvyYistRVxyJFdfMElNBOizUc5Rlgg94T13STfucJ64=;
	h=To:Subject:From:Message-Id:Date; b=PeP6ZUvnxIgyIrK8ThHaYZEMTSQPie0Z+1BeKRNYpWZH1qnqyrZ7pdKVwbBCVf1tJIVBA6qWURifKT35NIDFWujYdPa8wW3olkYHGQ3GjARuPjrylK3K8sFXOnPw0W+t3wUF7W2eRYrFaLr2SoNCB5fv6o59SGBHG5w+SY5HgOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O47XN8ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O47XN8ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756384793;
	bh=GvyYistRVxyJFdfMElNBOizUc5Rlgg94T13STfucJ64=;
	h=To:Subject:From:Date:From;
	b=O47XN8kefdE+MeTxVFTbm5au+jWQu1UQ2RSezxc1EsfQrQAx2PKuUvQhJ1ADBBqVt
	 QXX5ClH9IH/iaGOWkBgUJ0IEafqo1yqs7HeZIZtz5q/PgT+LmnVSYqfybo/N4Rb6w2
	 tSdQkWxIMwL8OTPC57qOndoSPd58s6XJywvPN1fZNDdncfo025TyqW1hnzIcSaPFHg
	 Df1Ti15M37xCl9400Bsxnh1G1eeFgpPJaqBPR4Pz+O8jYlHAgxAfF1cvJ8Dei5wdwS
	 rHewMciIW1FgwHke1/w+gA187dDsVLekv4p+3EL/mInT+os/cyf7GkJr7uKfSrg383
	 cPNS60ScvCnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D0C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638479357.12421.8032920927727308275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0342101bb148444322003ff3244f29714d8ea8ca122c92ae60f034147d12f01
Date: Thu, 28 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756384793
