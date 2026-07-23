Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A4F2931E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784767774; cv=none; b=QKeH73OSUuU5H96W62jzc90jI8DQw31nMWvIvvuKS+h7ir//AQy0v7gjvQM+TNgFnCodMe4pdQc+nG7bHQKQT1JiWd2ovewYg9Mdj5EMmveTW7fCHURG8cCeQmaZzgA9LAkhDtQV+zEepWxVS7ap3tP3wCecifwn5eg8mYK8ikI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784767774; c=relaxed/simple;
	bh=ZhKBY20QftiaqSf1qMsRoWGt2HK6bPRj/nq5lJ7+r6I=;
	h=To:Subject:From:Message-Id:Date; b=bkpWhjt7UWea1mTcFMtXEwSt7QD+RAxwMs+BLehVIrBz/+DM1nBVjUwQbURy6T1tLvVmhukpuSz0vV/fz7hJbBBgHzAeYw7Laapr8fd/8S4hTthUF4NJa7IzupufiN8lzbXpMOMGqoP+sqiTqFmKTnxNsopl3EQ8upA+0YI1r4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgnJuvCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgnJuvCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED64C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784767773;
	bh=ZhKBY20QftiaqSf1qMsRoWGt2HK6bPRj/nq5lJ7+r6I=;
	h=To:Subject:From:Date:From;
	b=lgnJuvCoF8sBVxSdiQpgz28+z+LHu9fG7x0aepBS4rnQeyKysbqYXeSIlL+PamsPV
	 G/RhZ5qMcVYfpiYXxC0P5WC1kpf2rfPHD+gKnRZin09+exAqZHr+/JWPfATgOeQeij
	 iriZ4eF3vXZNp5t1g2JriIRp6L63zRXKtINocyIAUVc/2ZKIYnwJuB57nNOoYF4Bma
	 S8UiawLpmJPN2i5YaGHhxGi1/5XgM2tRttW1AtAJPe/TqofVLppQVoGCi20EpBeZWk
	 6QT4BCd/gH6Ib8LqoORSld3HF8eHzb77zpVqpKq+vq9ShSCl/n8M1V8uHITSFmUxy/
	 cBh1GjyoYSFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9FC44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476777368.26755.16105638999937475644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8ad19d660d55aec6e3a114a41a16ba0dc8fa1e32d68e1d77fcbb7efc701ccb
Date: Thu, 23 Jul 2026 00:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784767773
