Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C0C3F9D5
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730615754; cv=none; b=SjsSXXN953ZMsxsOUNeu7z4eLHrNu+PCGI5XLCNrJvYP8NE/fhCc7Rfo8cOsRBUxYwl4kZaSz746PTog/acQWcqteCMH5LJs6rXOKS4RT1+7wLBA0IOFcrWolUAJ7ebISWDlCwN9HucM6Zg9TArXuQB3sOGQAkneE7wqQdyJHPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730615754; c=relaxed/simple;
	bh=e9X0wjZwVp6P8mVKcz6Nr3W46kBYzuCFaYi9AJYrNFQ=;
	h=To:Subject:From:Message-Id:Date; b=LAzXBnEp1ZW+tm8LUNby2sw2G1nKVpCPvfcElYsYbUcxZqPWrmNPrf4QkIsEG24nCg2kKhauGEPk579+tSZgsG2MMwv2K4JwBAPIreXiuwGW22CwgigjaNOILSGAe5xE/AhEMnMzFRsW44Q2XWVggXNYf6+PG/SpxMU4WQIyODQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXVEjnRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXVEjnRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C99C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730615753;
	bh=e9X0wjZwVp6P8mVKcz6Nr3W46kBYzuCFaYi9AJYrNFQ=;
	h=To:Subject:From:Date:From;
	b=pXVEjnRSOz5/NAhGVEi3edn3XTeq3LBGMH0bGzg7horxtGcKdYe8V4usATpqxh/g8
	 XvbswfeP1uDOfv8KGjFKDjQ3C89A/TEcm7EXXa4y8KdzshqCFhrM2sEugVT/swIbzN
	 PXsnDL0J8QF6j52IyLUOfp2T8bvtvJbF7vbT3/Xku1rA1yUIgWLiuLsFLcyAhSwNup
	 +aWP+Ltsn8ddA4HZQJNrHSXAQbQIALUSAZZrZFOWPSsH2FlsX2yvAZsMun0GgM7RzV
	 OK0oz1rXNXnub8mqTqhjVcwwRW1viDodKym1yTUuvgz7fj7uDqPykQzPwcUNOwB0m1
	 CturzaZNqa8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C72E67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061575363.25559.13990786595035211996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86573eea2bd2e1b29635c2f52e609d03315971231ece3d57f13f6b2e64450090
Date: Sun, 03 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730615753
