Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BD732A3FD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784998234; cv=none; b=X8CcxnHIyrOr8gIQPc61EFCVnHRyuSMFGzGzFqq0tkh9SEF1l9qP/a47A6VA0cvSnJmuSKs8Bd31aVqs4FVNnMzb48FENhbQbcC23nvmrMOrP6HcMyDdOBS7BicQOo2K/wwHShDZGJwoZgXD8UcTRDf/yRmqm86EFpXKb1gOBPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784998234; c=relaxed/simple;
	bh=0xWFAPHSHiQaEnADUnMegQvSU64poKRrFd6EI3hnKTM=;
	h=To:Subject:From:Message-Id:Date; b=bpeYsbvzdrIDmCtY6U+MDNiCmfLvvRrB2J26qvwTP0ZKcqmk5JhXXgma4hJSc/ft8wCMqRyDIYVht2EjPs8dIvS+EeoAlxsLB8TXWxqGveM7YG29y8PvuXPY/tGtfwKZyYxN0ia3wWgWKOYAB8mdURr0+L294iFTiK95DCb251o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bufwSslV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bufwSslV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D137DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784998233;
	bh=0xWFAPHSHiQaEnADUnMegQvSU64poKRrFd6EI3hnKTM=;
	h=To:Subject:From:Date:From;
	b=bufwSslVRqFsvZZBct23ITAy6RHTqmGpQ1UtugpiQ18+dk/wCSIBYA5FMRHs1TA8w
	 yJ4wz+hSWR9OTm22RFoUyNzUFlDmnm0ZvZ4f77jgHkHxLw00hL5vdAXY3u/aPYxgjM
	 xmgFfdXPCXBhXheuTEhYAcRereiq3AdD/1EkjW24m+XxaoUSwVwk9wFo9OC/e1WDwu
	 nZKssnsiwwykT2VG+ro0iARZrJhpFqTzYq5DkkRr1WMcX1Zb5eUCg2jmQeCUmFZMuO
	 Jk1ZjgmdsFftC7uMwez+6piK8T3W0OnzrGKGvtFQM0M0B+leQSFvFYa8K8srVrPFeV
	 9JBenqJBabdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECA2C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499823368.392.12316566409239362897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cc37ae7247db18a2e6abb7421cf92330e172d1ae9c517565279496518948b4
Date: Sat, 25 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784998233
