Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C12310E4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705629497; cv=none; b=SwhbFrGVrBAQ5n7h3tj6+JHAm6XfFgEEVJzsidcIUIUcyFSNKbNrzvVefiwklu7kxwyYppzs4/kHWJA7K8Kgib9Xd5bPO0tHgq+krLKV/RbM297URJwPibubuA32Zcg9Xbazapu9pvRp/f/u8AbiGI/AJJqXunKMInPG5sk/pZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705629497; c=relaxed/simple;
	bh=fnIppU2toC2QpJQQhlWju5xBdTjCB/yj7tylcg0iTgM=;
	h=To:Subject:From:Message-Id:Date; b=N2Vsn5CZ9O+vvOp2H7gEuV/vx1K6P5Bn9aoWLOPci62hGpTBwxRLj55pK1Rmq1Fb0Uv59Xgv42WlHyj4gNaLFxzjryPzPgGOzVPafW97gEL1KyXaXnuTXbzRvB4+t089YI8mzMNtG7MwoJRqnVbeZzr1QzlXInfSv5rwqDqpXCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3bPdkD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3bPdkD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEAEC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705629496;
	bh=fnIppU2toC2QpJQQhlWju5xBdTjCB/yj7tylcg0iTgM=;
	h=To:Subject:From:Date:From;
	b=B3bPdkD6Ttek562eep9j+DjQ5zobakaI882yvvQA0Q6+/rDlQf5Se3ADqvIkvRQqK
	 aBMMwXJHnq8PAShWg4BY4b7RgqUQKcxCGTGYmeqZwmQwazaDnFNHQkhxVQFBD7SXU/
	 HOtNFv66IqTLsXYrzK2phHbLquD1ktHHXycPCOASnnRuQA032PIITeyxleFaE/QUGi
	 Rt96GZl++CRnPwJgiFLMG/xUy88m7IuKz3DbmZ5cp7zzteOUxn3uvem7Uww0PO6igA
	 s9nzZKj9lj+fe5rGFuAA/IRMVfbOEJBpoeaXf+JatHXtDqhSy98a+YKQdK5NGD9HYD
	 oMU50CPLv6CZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646CDC47422
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170562949639.9799.17940715604200580615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f11b976fddcd501803053a5245f383de8fea5416929f820934146a234f1ca5
Date: Fri, 19 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705629496
