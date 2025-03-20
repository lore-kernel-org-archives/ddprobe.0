Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA37D2AE6A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742506793; cv=none; b=Jtjr6UL6r1ZplxvFFVH9t8OUWuXQU4AyQm3biCU/oiAPESrB0HP8zU7tXSuYvsOF4pKyX5siFtw2Str/py4XiwkZ5B6oy3g1CwnQK1GOK3JfiIgC6q+N+dYkBOJUZ8JJNMpbMLLwHMsb1d1dan/UK/rHyiNFMFIL3/f3tkf69sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742506793; c=relaxed/simple;
	bh=H8B/x8OCwpPyM2LZghDvozD0RnRRKB8B6RBWlqMPvXQ=;
	h=To:Subject:From:Message-Id:Date; b=fnwH4VYX3sZj8r9QyN2Rp0sJhYBTv7tsr3j1sKTXyeARykYMlhxGkE1altJiHtim2Zhj2fZfq+tv+vnwHVgsJVoei45tu1OaT2LC9Fxa2cBjLkoxcY7/VAbKGcedpdGUYThUdREZyDgivyBi8K9/wfaiOrNV7NWTtoKp4W1klXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjw2j8Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjw2j8Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89B7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742506793;
	bh=H8B/x8OCwpPyM2LZghDvozD0RnRRKB8B6RBWlqMPvXQ=;
	h=To:Subject:From:Date:From;
	b=pjw2j8Qm2YipqqxYEhBA2BnrVmYluQA13iDlEOoq+nCXIX4CHVxUipVdgNNsEcDW+
	 yV47jUsP1mpjwS805PSuuhHz1fnV7oM6XQutEekVJ80UG6/mw3bsvSkzfF91cFTuPl
	 RzyupwXfb1LwTUeyhYEHrvNbbmfkY2LPc0ZO+VCeDJfRzpuv09s3OkSByqVs86URef
	 I8TkEOqxT7WabP013gWgwzsXmcVMj6Hb4G6zO0zi8Ct+2tgjzbgLxX9oprw7D+au8s
	 TSp3kZ+5LsNu5QpnsmAG4E4Bzfr/NHBqXLPl3QjkxPqi11hjDEsj31z+wDLt+sGMPD
	 5kGzpQrV8341A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4175C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250679366.8997.15649145384961528175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f67e49299a201a48401a59dbdf713c45764fa74c0def7f8c16451dc2581c66f
Date: Thu, 20 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742506793
