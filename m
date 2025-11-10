Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318682F3C0E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762761594; cv=none; b=T3YGQpKmtw2O0NP9GHv+Ziu8sRB8jMapv3L8KbaQVVCk7CcZ6QJqGj8iyJ2SWvr3k/1nZYstEfcfNO/AIv/bFaNp5o78AbUW2XR4MJOLx1Hd7M6T5Kz5PV8hJz/+BBAae4r7e3yzektV+fC0o5C494SkDzLCpA9EW2YmirEGfis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762761594; c=relaxed/simple;
	bh=PfgARJJsl0j8N8fMQVrgiHp9Aaftfr1e8901GHxBImE=;
	h=To:Subject:From:Message-Id:Date; b=K+NVYHuKACJxQWdXjyzlgMTNOCUMo+Jrjgbmhz8HGCLRaLdXYN3Yoe1IPjH8m6/zhwzBliRXyyuiI2ZHbHVpfNZuIuOGKXaoNcBf/zbdcyTBD4bTX0q8X0A7fkXobmYoH+kbEE0Qy1xseLi9Jj/ic2mq5l9JzOMrkhQ/EyBLWEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN2IpkRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN2IpkRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA825C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762761593;
	bh=PfgARJJsl0j8N8fMQVrgiHp9Aaftfr1e8901GHxBImE=;
	h=To:Subject:From:Date:From;
	b=mN2IpkRp6aWfX2MstVYDL10In+FlI/6h2F39qyWLJxqo03/vOD7wiUHBOWWhHMvYH
	 R2Jh8gYd+QldJIeUKCxdL9q7I4KTUIv0vdc5B/50K7LQqxBVULr90OJaHF5HtDSbXG
	 PDt5l+H4NQ90tyuoSjMYbPCraBUNVdosP5VJjSd0QDyuOA6h8fArnOG8PcCuOEcntR
	 J7/x3gCEQxIOBbZZ6u/H9/9UVMdqM4A8U2fyi+LGWnlEMOtEJcDKPbx4mGh4eCr7H3
	 BkJQ3BJFaxGdGIYl79ef9wPPVv+O6f+ofaAE6UZSQ/WBGFSDciN5tcX0/6KVA6LZJv
	 FpFLHjB9KjBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D175CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276159363.4074.15878507495553408424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862ba37ec5668e11097140c9ddb3e87200b9e6175b9b8ea12742a59049f8d464
Date: Mon, 10 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762761593
