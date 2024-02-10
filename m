Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0650A2119
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707531497; cv=none; b=Fb5zMzUPx+oW5SxcqIxPnXDQzfyo8JWhx2BBVLfesawsa6bQvsVdIn5+IgKc57pOkp05Ev24rArOstcwqciDdGzzPtm7ScUNucaPEsVyzsYd6gT1BuWrD5ssTD/tC/wS4FEspcYKEOgCjyOWfqMZtuevP5ghU7B4Yy7J+omCZ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707531497; c=relaxed/simple;
	bh=wcdkg64whzv+qRPh/nHGjRIqGivwB1tYFFU1Baio1ZU=;
	h=To:Subject:From:Message-Id:Date; b=cNdoAi3t5nom3HVfl1P4xI9CinuXyBe+p6mGcId/Mtn1NTQuFjKV1bPP1gXgkaQBuDPFh76XZ04FfJL2aU7H4cG+RHStU0Qd6V1Z+BRAcR2xNKzAUzLVpGfW/qTzUmQFHHxFYEHxYo9xDGbRoq8n+X/5NfghzwTzxg6zCWemj+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW/CPamf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW/CPamf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E692C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707531496;
	bh=wcdkg64whzv+qRPh/nHGjRIqGivwB1tYFFU1Baio1ZU=;
	h=To:Subject:From:Date:From;
	b=QW/CPamfNaaUROLdFa7nVgClOYmQKWxu4xOZzsHfSbNohsf8bw8A/KKbtgIHQSNd8
	 6qNxfJ6DJwXm6jNTWT2+AXgtROzLgb9E3jIuiyneFTPCmlkqAh8GLmFGzVVOuF63lf
	 mmTHVveCijTkyL0j4SmlioED85Ye3vHXKr/mKEGD0SVBx5af5cc7GcyxKwvz6VxK5a
	 2MskFJvBw5kNGyjcuRt5T0Uf973diTMcRDC3m0CnmRsL9ha7GwBa5BkoDaBv202+Cs
	 YYj/ZkPgKkqJ+lY6VyFDH8ISIMVgfCUfV5hcmiVEQMGZHBLMyYwiClzaMaVNOltm3/
	 +92k6BT9nCAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62562C48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753149637.22692.3836509286409536342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7403a46340725edd16a49616915f2f1c6a70fbf4cd05c091805da1d244e136ee
Date: Sat, 10 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707531496
