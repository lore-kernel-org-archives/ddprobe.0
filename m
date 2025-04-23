Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4AA265CC0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745432394; cv=none; b=rhw0ttqGcF0PWoRnnTmTvfFbdmeH/sAtA3B16nziHhHkacby6jWlXCMDtACiyM3q4lYb4dDcbnMYxBwA8NNB1VG8kPi4tQaL4KCgGzjGdASV+NKrWkGqMvDCwHf6NugbCV/o7NQJApTZWiRUGeRHKFb3urQ4acWgfwHdnVOUSUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745432394; c=relaxed/simple;
	bh=ZAMCJkzLhkryW9uLRR4bK+Njuv914PbW+2wa6lrHD8A=;
	h=To:Subject:From:Message-Id:Date; b=nVOEsRM9wpQ2z1hq1ndsvGfV2+EE9wyypN6EcyIW3GweTK584tvIurua/yXQC0BzHX8B4oUgKyG01f4by28RllBZjCgBwL+wZhdL8kkmSllTj7UhVd6u0fyslpRXNEfyP58EqJqogyL+20d8sh+mpdiJcRxH0aIpiLIkVKuURAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm/HQsJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm/HQsJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745432393;
	bh=ZAMCJkzLhkryW9uLRR4bK+Njuv914PbW+2wa6lrHD8A=;
	h=To:Subject:From:Date:From;
	b=Bm/HQsJalcvyY722+UH4sb9cUG/t2cpfSlJc1ULglF0qjdrJ/CITqxhgL4rz2Ahxx
	 LOSLLaEIQDmka4ptvgEyO7RYSp2nQrOiiXAhKC0HYixe3gH+v37T1oo63ByhuBCeZh
	 nhH0pF+ASeDUuTEcYQHnhZnXpSwu45ov5Co317PRcDcFbD5UW9tgjfwUm9ky9J9Am+
	 7nhos6pOj2t1286P8kt2TjnU/CY9zUFoylMQPggCSbUcJEw3iQiPLOtLwzsEDf1YaG
	 kvueJDK8hqnv4PDRxpRgh3TxYdE3kpA/SnNJEkxOzi76Q4/RPfiEFd1kXRkd2LzJ4S
	 QKWS0/u+bht4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92006C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543239357.5828.1456455116462111169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4090d419a5f56d5c849d477b20c6782740fb6deed766dfece23fdaf1841f6f1
Date: Wed, 23 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745432393
