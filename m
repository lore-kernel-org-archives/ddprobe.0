Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A142A9F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724433354; cv=none; b=CGplAwAN0M2yOPYd1Tp7tzyBkSvybfFVntjj4uVIG3O6rSOi+cRTwqt0Es6bjTtm2ReGJbtDDtzt87rZ/A76W15n15+h1e0hozhzN62VR3GJ/3aVoLP+BIkZh0A92YlnWXVCgSAqi22UkBhgIJ29mQW9awGzEA87M/0Aqohx7v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724433354; c=relaxed/simple;
	bh=leaUzhGhwWEt9viUhNx7Ndsr+1e1v6haLJ+NgTolCHg=;
	h=To:Subject:From:Message-Id:Date; b=o1+IF3OtV1FF1Lsr9B8KWYMu5pNKw8T6B1W2lfMa6Wrswrho9/QFa978FIDXt+sEKSsFB6uJqrPRu/0z7/9SAItkp10zCY/TceSUsfl3ilDaG3qYIx9sFGsMhebVSeR/vRI/nYJmwW9OMEecWSu1WGhU1CU+D3yQRyLV3JS5zfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8t+RabL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8t+RabL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26D6C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724433353;
	bh=leaUzhGhwWEt9viUhNx7Ndsr+1e1v6haLJ+NgTolCHg=;
	h=To:Subject:From:Date:From;
	b=Q8t+RabLNBM1Db4hjsqiG8bmFvgUY4/gG9ovkghkg5SVrZmJLcUPh6pYh5LLigOr8
	 jfYob4O63/Fvo++WtghWISPxRWW1pLgp9vjuSbbMA7AUwga3RxTUTtRUpUrJx9mztn
	 bDcFAMgHR4QR03MqjCoATSEc6C0p9u7le0Kp578Z7tGabQ03DED/Ts9sPk1KrmJDIr
	 JKFwBP02NGTL4CBP6uD5WvKsvwHZO6N2Z7LnS8Bmo6wxIATW1Oop/g/HXHhfPnj7/e
	 pgc15F4TbJcnpSvTswyW8Pe6Nd7fYAqWPnaK7t4MZgLrQ0SkqV+zY+45TuhU+TcE3z
	 xx7CCGjfRnZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BA8C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443335366.30359.1413655708514082479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1351b7ed27848247990fec7254003d693c25dbd4757a9233f471593e60bb4f
Date: Fri, 23 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724433353
