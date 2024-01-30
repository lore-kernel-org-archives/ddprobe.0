Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C542374D4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706593097; cv=none; b=egOy2yaiDv/hjiuP3ZMmQqfZbHUJax0LGCVmg8qgjKRatPs+Z77CR05ye2AfVCfMhnUf9PBwJbXsZVo8SFRnonEguF0iRX+ZO+FUTiNpjiahZFc1gbGC5QV7vTnR4jPbQdgekqWoxoeW0fOOojF661ykXFr8sohie5ikMM0KfTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706593097; c=relaxed/simple;
	bh=pLq/es8HmstSjK76QJP2tuZQhSRBTU10NXqDV+IRg+8=;
	h=To:Subject:From:Message-Id:Date; b=BuR2sX8hYeFAs2lCAhM03y11ad2GRTK0515C+VC/xgtt0lMLnxmv4QoGR4H2N9p7uXuck09oeSAawcXS/pEUMdBpXaOVREHwr42VN8UCkJEfet4kqp3X48VCG6uSQ2ySX3t5GbO3fBrZNmay4gk+e3zCHs3XNb/BSXVU6BWaUjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I80+Gyio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I80+Gyio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91883C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706593096;
	bh=pLq/es8HmstSjK76QJP2tuZQhSRBTU10NXqDV+IRg+8=;
	h=To:Subject:From:Date:From;
	b=I80+GyiopcfhtnQRmAOpGo3B/KtIwXCAKS3vYWAPIUphNkVJyWzyLHmDZROi//PCj
	 wKJAzz+vrhyNEguO0QO+07ovKvnYAoBeNZ9Txr/5F7izuurFfRjavB7Ghrlxv5uYor
	 XsrmPAPrED2ldF8hmM/CCrpX06Rz0wzGC9gkQb4Mhy/kY3fcOPi6mn/BAj2qu9HtIa
	 9g1U5Gj2kVdkQdHQxHrbtG1qiqACQrHyS8RbbeHWhgqLzWIUvWQfKX/Q2FEPkY8+pV
	 W4doftDB3oC0vmDkhADP1thYqA/z33BP/t0JWjDrZQu+U7StoZN1hHAXiPpjFYuAIS
	 cl1tsAMSTWIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4E3C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170659309641.27322.1211058030733967401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1baa3cc49968a536ebf44eed20df7cf68322960bab9c3ac5de3dc32802f341
Date: Tue, 30 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706593096
