Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05B112B149
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708091897; cv=none; b=KV2SW8PAQ8Xw7S+fSeIH+qgYqzv7dTCGpYYqIP8ZSiApCwPHwJKitm2mqz5cpeIbEqfMk56TMhp3/H0knpkz57KdRqYGLp2QQAlFNbllDuprCDTLUHRbcNSMq1IKIk7lfjTRdPmRWF+i5DdcqrYuRCE4VlPfor5LP4TuOzxlXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708091897; c=relaxed/simple;
	bh=KYPqM7V72xYOUSndFXymu/bw2HQU/3jY1ygSOTQ7hCo=;
	h=To:Subject:From:Message-Id:Date; b=iqi0llw4/+5XstwzNpHeXLrDbvbiQizwvvovdKNYX75dL8dNmU/rX2F+7JTlCAvwtWHB6lJ5D6J4ZGQseOCTPEt9sHUSOkMmjg6gdAjXUuzBHcJPTdHebv8qdtp9jtY9rco1qo+PqVSZqOqmPCYKBMngsDZPy5eaxVKX6brjmag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E03q+5lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E03q+5lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772ABC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708091896;
	bh=KYPqM7V72xYOUSndFXymu/bw2HQU/3jY1ygSOTQ7hCo=;
	h=To:Subject:From:Date:From;
	b=E03q+5lhNhBwmMILVbIVYiEkL18sIwQi10TNa084HuFllaNPw/7EEqXu72wziP4HZ
	 ACnng7uuJxkBsMaYAHxnCRFAZRLUfBdCxMRP//1tiCh+7x5d94O+rmgIiuy9Mc8Ner
	 OStfRRai0omCxwLbOdjfeivPu1OUt7bl7C1XAfx98CRGsZQjY24thxjaa2To1YyGdN
	 gfOVuN0o5gQ9U6nhE6iky/t+qtqkI80pc/5EA3SqIbuYVQ9EOmzZ8saLBQ6gjDdgAA
	 zu8p8kEeOnJ+CBc1YQHF4Hr8ByltChhX8Wur33E7pSlJr90LQaFjgbDixxY+ZFUZt+
	 Ihp2L27Miqcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDFBC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170809189636.15820.16892882863322944932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5f900e87219b4054a6b09df7cb94d0a98ca1c409e7afabadb5d46f2dd58a7b
Date: Fri, 16 Feb 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708091896
