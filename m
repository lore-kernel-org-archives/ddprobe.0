Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600E157CBC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720593383; cv=none; b=MiFflTwJZmRXIgyTDSH/MGuQBR8CPRdqTHr0SPkLyXpiE5QwmmY3ayFp+E3cf/NapHu1vCelE5qyrSKkW2CzsSDOgiq1dqa1XKetb+OEK4vnOddkXMICdzluJxpmQ2cdBXIfJLyHegoP+bxd15G9ux0Ii6UsmQo6zrJ7cSKbj90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720593383; c=relaxed/simple;
	bh=uZvm9LVX5yzXRqauMVETBbGCemjPIRGPeTjS/B8sYG0=;
	h=To:Subject:From:Message-Id:Date; b=I+rMgp4VPp9W1YfOVUGJ6Ho6VqpisOfuWLRRjRbo0pyJH2iLaEzLq1E86GapEotrU+hx2kXLbmDFaLJPsCtQtavOrhp/fcXqMrnLv17l6hnQdieJA59vqOapzwkHIM7jC7+yh8LSrYwDoYj3XQB+jLhxAHxYHNPGdJnHoJc4hU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv6bCjVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv6bCjVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E043DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720593382;
	bh=uZvm9LVX5yzXRqauMVETBbGCemjPIRGPeTjS/B8sYG0=;
	h=To:Subject:From:Date:From;
	b=Lv6bCjVZdE/kCPZdB7Z8R1hzOpsTlKJqV7i5JctGLFRX+LMLfPZPT4BWKMy7lMUph
	 KloDMr4qwHcgBwKQd1s1QBBAv8KS/Ubpz9RGncFFuWk2uGgA2Z/hJIrM270EgvTNJL
	 OXtHUqnf4gSCFhwDW1l7/5FJvSLXYWQ9h0M0mHX+Mk6RJy0N01tKzg19KdkY3cb+X9
	 py7lFIa48CaGgJIaQNSxhJJcH4Oi1iUDLEAv17ebVSwUGIFhMPK/+JSqqfKp0uai8R
	 jawjY7/ZD+xtZUqM0l2EVXd7wq/OeZXDMdgvXBd7JbfDtwJGI8uK7yz+izvtZ7uvFN
	 zZ1tm8CFveBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81B7C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059338278.23004.16453100666136329199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec53c5b5a43df3d41c487c8059051cb98ebd86aba976cd3ea7052d06d908d0f3
Date: Wed, 10 Jul 2024 06:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720593382
