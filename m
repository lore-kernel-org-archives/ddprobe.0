Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364972744B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735428954; cv=none; b=QfWFg1rk257Ye8k2qaBjogK/3DMHEydtVIZOHfcBO5f1Eg94WfwDMusGgWUwf70Pe2Ardq+vmxmvyjRC67s7JNBfU1VAlxg7GQlOXd13VemnY/vO5GU+oLUFUW06A9Ha8I3V8cnVn3L0uh/5/9sVLwlQGZZopL9TyDsDKM67KI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735428954; c=relaxed/simple;
	bh=UfC+rcGkZG/UT4+0TAZm/0F1gblJdqa42FFcveVpEuU=;
	h=To:Subject:From:Message-Id:Date; b=DQyjqH81rHj7PuF/b4m7CcS/jtHh9ID25pHv3hb9Js6UJ8e8vhVv+QyHn9aoNgCeuSLyu0FU2mr/4tbpjrFqnxnmWjDvAEwEDX7Ytn8vJDtN766jt0yf25awJP32a94gZTcZlsK1/HozVRx6Rka7HF1tn64IYuit1IKAVqeBxp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7v1TmSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7v1TmSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735428953;
	bh=UfC+rcGkZG/UT4+0TAZm/0F1gblJdqa42FFcveVpEuU=;
	h=To:Subject:From:Date:From;
	b=i7v1TmSVEjkkBngc2YKEwbMZgFLqu+WgN46TRh0eeJpQ3BBabqUP03CeOXSfs52V3
	 zsJ+sp0DOpz3yQSR7jheM4mDo9ZQyDbIgkaIgq6Vfp6raNtwBt8L3c+Wc23r83CuTL
	 n0JEMC75zfCkYsDuXbn+Bsue3SEhlhu6Ph5noBGSFr+G97tuBmavqTk68QX7LVeEvc
	 6z9MSRVz4J3a5vc2DEa84i8Vnpn+RfakoBhR56goZS4d/c/8QKRBITIinTOztrDkgc
	 /0Qy94OG6KkHucdO3HRndT0Ys+mVqF2g42VjrjU3GWSintns19AblCuY/TeyPDTH+f
	 HYWXdonRtHVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542895358.2278.11471630168561046008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebaf6f02d414f67a36459b0039e8517852f5a124ec590723bb7d00954818677
Date: Sat, 28 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735428953
