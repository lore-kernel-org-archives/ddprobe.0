Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB98382
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727569554; cv=none; b=dqiNaSWjFui/2iqKKaqwzY/5G1v4AixxVl5FzrLgOpLUopEJX82IOOz1DHHpikmoG1omVsTSXew7eClr29CQZMrfWn+TyCvmSyGQsnTIjo8CEMkYkyQhYy0iYRPFcRUw7y98yh1N5zEyDo2f+BVz6O6rj4dQ/W28vUI78q6LhME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727569554; c=relaxed/simple;
	bh=uAckqc0qsmWRojKgneQh6x1j1IBS8Ahj9KQWay41QXQ=;
	h=To:Subject:From:Message-Id:Date; b=gJfdJH1NhQVUv7UGLDX9zT5v6qgx2u/JJap3Hy/0NYo9sqJ8w4PCIntyNrMRJMS3XtXR/e561hCc0IIy450GBlPgWqGhH0sTHNWirBYi/M3fB5F1by/WFbAoqLW5TZ7AEBIGp1bg2zodTz3+AB6zPHpISJ8+7QZbrIDkwMR6aYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mux4YHUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mux4YHUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38E0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727569553;
	bh=uAckqc0qsmWRojKgneQh6x1j1IBS8Ahj9KQWay41QXQ=;
	h=To:Subject:From:Date:From;
	b=mux4YHUVZO2cPUNbBTu9jCc0A1nc1Jkt+5bETzcjtdK0Wg2cRh6zqTHGOoLVXj67j
	 Z5f7aEoU+z/16r0H/9ubXi5mpMOQvjTTGB0UWSgtqk/cnp7nV/5d/8Cc63vROsd0jX
	 C0/bnuCJFBEgX5U+4kh26VnOFTo05wdUvhuzITXEd7heMvA5JLhAccbDA/ecYaOB0s
	 ZsbavQrETtqsX4pHu2hEB4MMe3RZTd9YSsZVVLP6VgXNNQBbfDk6LqIKF2c6dtDMq8
	 Z7HZGLHLraLs9Et5NmWzmIzSW6fBfJtTr3028WYMjyYr+eTDsk4w0jQkCkDmNvDD90
	 qLCGCzfRhIAjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DABFCF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756955360.1100.7390733466345691180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9246d27a1893d60441689bb870500b4246063fc9b6cd74ac58a9bfa9224993b1
Date: Sun, 29 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727569553
