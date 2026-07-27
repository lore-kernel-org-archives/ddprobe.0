Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEA3386425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785133234; cv=none; b=CG+7lyz9n/Hhe5qtHMp1JqRxJkJvzmkTF6Lbt5xXH/FXRHRRt5oirrYClAQktbRBH6uJzuOkt6s6q1h9qJavcvuMXkCUTiVOdW6/AB4xIb6vRVfSEn+ev0DcsaDqxnFfGed+flP3E39TDlg029Bo3Y6hV2EdsogParHARz4NpNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785133234; c=relaxed/simple;
	bh=AdmPR6DEC/UpRBpMGXBtZA6s+OQ5TMlMqHPr64isn3Y=;
	h=To:Subject:From:Message-Id:Date; b=HJE/wY29Pd1mf5fpZwqHCni1j/qVfDpsRdLycvdyuBvL0QOZNBqjNz0hVpoT0NCc/aQdCXgM44F+8zxnUuPULxQAi/InhsYSuxXZ/hkBU/ZBKbvyzWbbzNaxU6HBZqS+3gWIb5VBADl0LnJKOkrb2JWvQuZ08p6Utt8+thCCLYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkLO/PlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkLO/PlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA0C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785133233;
	bh=AdmPR6DEC/UpRBpMGXBtZA6s+OQ5TMlMqHPr64isn3Y=;
	h=To:Subject:From:Date:From;
	b=hkLO/PlG09csE1r1I6Aa6F4xc061NVCSFWyK6+AJ8dmEd5qbyLIeoXfZyEdjo5Gcu
	 Fqh9m+Gu2IUxQ+ovJojeqpDMD/NKmmcP1hW5Eghl9zVf22Zp+A3RJzMUFEgKX6vqNw
	 nmal6UrnivAem7GLSqw0A6WWZjDCMAj+fZBr8wLGVBGxakEP6oU6ksGRqTx3xJCBmJ
	 VSYG4L9HleegudbuoDIXECSuKb9p+9yUn/Z8dkyUyZ4vplAlXwQVN6hfQfOjxi3OFR
	 fmUFfUnkqkcSALT68updicQSIHs7cMuv7BaPOqiQuQvQ8SZBhF3stjWOTC6zAnEYZF
	 L6VVhnxhuYtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AD1C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513323371.2492.4062321102309624209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620f603259662b361034d415eabd99a169612f700b6b9fb64a0deebdba16ce86
Date: Mon, 27 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785133233
