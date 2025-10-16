Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED49821CA00
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760648394; cv=none; b=B+ROJEMi3XfVewCnXuwJQY/6AboCXYE0LFuqLa5KGSCHBI8B16EmCGtkXSAi+D6DvdMJ540ZwMDHJO6PX5JkGjbEFasqx4+mASyE+/WehwXIx73LSHD73AW+JMyAq0YpEbbKjrNH0KXpwR99sI/sRdPaXGd4HZGYPLkcFo0O2SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760648394; c=relaxed/simple;
	bh=TazoVik0vqVM1zwsvJ4Y7zv7BaJndRXueXtgFhsdjJM=;
	h=To:Subject:From:Message-Id:Date; b=UtccWT0RNPktC7oYdEOq9RainsNvonqP6SPq2u7r3r41rt2QKrQepLN2FP7M/xuyIdl4MzCZJEkiU3CKvjmGXV75ClMcSh3/2J9zv6Kf2bpVT10nJq9Rcy+KYQdZulOvWPt7xTzZaGReCn/MUerart/vk031vdKHmXwzui/ESIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNChuGiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNChuGiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE3CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760648393;
	bh=TazoVik0vqVM1zwsvJ4Y7zv7BaJndRXueXtgFhsdjJM=;
	h=To:Subject:From:Date:From;
	b=LNChuGiMDkDkY5bA/Lmp4ZMih4WjxJl604WXUQ3YPkGQfmgFTH6+ApMr6DkeKkyZ8
	 81HzpeumE+1wWz+oBUirsXQB07PZbxK0aldHCzSpygoUhv1PKeVn//23XhR7rzYbKl
	 1ENoUSbWt64PZ0+H6OfG9ut1g7fv/rzFka+GeQ3LD4sWkrS75A0UnkE5Kqa1wMFqcf
	 IBMKmOyrSKSzveiMtQcgA6/Y/+9p735u8tmXrI+9A2cNWGNeyXW3pyFRaInBLWYPm7
	 MX36cpThDkkdkW+/HkWUjZx69RG6yMFoFE8RWQNzpE41tx6/9vAhFHBPpHIfdMUYLR
	 0DI5Vammqn7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE36CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064839357.26759.3911312170373906678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfa92b12bac4a1c3ddccf6620071730aefa35595c49db647344cb2b1518df36
Date: Thu, 16 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760648393
