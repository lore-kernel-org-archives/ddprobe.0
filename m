Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C6A33EA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744173594; cv=none; b=WIT1Nc2z0BwBA9WioqtqX8JMmj1i5AhUA8QqGchBn4cTFnbvs+e/ovTI4CgcupYL7Qh7RJ4bTfUuNkLetGMq0ansL+87c+TRMF7CZrtCT++ivP4ucHglkz1gATd6ijFrCYLwKc5XgzUi0Z1cgEapAF3NUj31BuxPTlp8mi4+gE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744173594; c=relaxed/simple;
	bh=L7u+qWKBfRR7085euC7Sma3QMZ8OxLT/R196skCJyrU=;
	h=To:Subject:From:Message-Id:Date; b=ncSblsNJ20rvaYozE4dvOW+/jMrB2/gp7O7OVfuH7A7+Y0ATo666OsGdqfMvwB3OtqCvoqyAd2HxjOVA/xhjlKEPUuUhZ4Ussy9EEIKhi/gB4kZ/FrhdzWE+qaD+GnKPsrdLGw4uo1uChPmvaeHgZUE8yR1mlhv/aFq3nC4JM9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+z6o+Zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+z6o+Zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86C2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744173593;
	bh=L7u+qWKBfRR7085euC7Sma3QMZ8OxLT/R196skCJyrU=;
	h=To:Subject:From:Date:From;
	b=O+z6o+Zkhj4Li6GILFJdY/ZXGxIdi/Ber7uw7a2YP7riy22Bg14/Tmp1qrZdP2Z4O
	 VnhGjjs8B66L3Wrk+BhQcb9BLA5Fwk+nSJuFZ2gzAbSlQR1TkBfYDRJ8akqcbJinad
	 SDA450wHzSLV2m+NtJ2xxa8NxsuSrj2RMupDrE/VIydXJfEuUwQCbjizVHyl3J2HcW
	 Tlq7xSVs2aqei2NYF0RbeQjIMbG7mZ1syjuwrsS3olfm0q63CwHOXbGHkevacs/45x
	 Cu2OZ1FKAR9MeMV+8s04x1B6UNGL8PK/4TE9qQMi6wTii+Kamq0pZlz5ONiUpsB1gd
	 e86I6euXD3yWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D45C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417359371.9169.8707266721064163148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5561d085ae91b725e235248f240037ee23654e320ddbe3bbadac455759669950
Date: Wed, 09 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744173593
