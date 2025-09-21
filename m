Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA2025783D
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758448795; cv=none; b=RHBH6GsAjGbsUSOr5Hu0Ga9OPqsk0GhdR2W7l39zrkf+OKlpUzaCMhHfco0Ar35eTif39ZYEIRQGabqxf7fJisXhbp1xUucLhiWycYQArEV2RBwaRBOMgs+pVllle9a0++/6GrzqVR2OLzGZ3HnXUKbujbCzg73lU8/uMmXXWOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758448795; c=relaxed/simple;
	bh=OpNcufpuzBcwmR4Tpvh5Ho4tG7rbgPc3ExjxGN8AiL0=;
	h=To:Subject:From:Message-Id:Date; b=OT0HaHWNvEKW8T0kCkrsLZuZZ3fAa7oWH65UEFd40sHHSctnh1xPrs97y/Dkf3uoLqPBhMyFCez5IoofkBaOCYFIGvSGO8iPblPNNXGdGJCCA1a12WtUJUAp9K44CF++OQo87C2vPqYLxu5NtU7gVcGq23mIuIeohjOXxBO+q3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLeit3NS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLeit3NS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D869C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758448793;
	bh=OpNcufpuzBcwmR4Tpvh5Ho4tG7rbgPc3ExjxGN8AiL0=;
	h=To:Subject:From:Date:From;
	b=uLeit3NSLlyXV2s7MirrCPR5pGiwe3NwZZTFKctWS+AQ2TjgfchzhkwAmWrZc1DLi
	 vIB/LOs6sQLMdJeERwWP3Nwd5SRd+QFKr3lrHyhL6B71mhK9iTcGEoUQTy6T+c81NU
	 zBovyLAuVfFsVVuWcZR//eug+be3anYyVdQtJdtD4OyIxzM4qewjQqNUCR9QW8E7f4
	 kdz/RSh19nAkBmPwIw3zz6FsZilnZWO1x98V8jD0IreU8Y5AFa1fKrmFCwsZr1idv1
	 HWd6O3fo5i6kfWPikgTtOeNrl5XTBzI3c+Y7arfRz/6p3qP08iZk/iEdpjcHXFhhWP
	 Xc1f+fU+WufPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C9CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844879357.15345.3087766000013263339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f647ff085af01709b7bd6ecb20167731f65048e1c450d879321903f279f27142
Date: Sun, 21 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758448793
