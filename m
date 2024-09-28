Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383C81F5EA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727561754; cv=none; b=clsrQ5enznuzvT/iyd3055s4khZx8qvSFvQSe6oL3L6MsanbVs7WNLVK632ta1n4qZ+45IAuUecfwwktTLVeXgu0MmScZtLlREAEwN3ggrPF8Vv/JihGFKgH3vLWmcEkzkxGZutEi00yg7CCQIWVRIG3LOkhVDtBgO4iE+WlhR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727561754; c=relaxed/simple;
	bh=eXdvwOUFkRTiIGi+2zZrIZs4+iTiOuYnR6dRlRS5v6U=;
	h=To:Subject:From:Message-Id:Date; b=XwRGIGJ89NVJGHQXdOLUifJ2Xa1WQcioyhdrRdjv4XN3A54wnp/7lDvGDRDMnn3BoITrM9ArZNm/9cxDWG9YOUhCZqJDa3lJn8vySA6eYAmkYlVf985c2AEeeXO09LdWzQNeZNHC77m8usaPUh7lcSBPhLseeNCiMXwNzeSumIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ8rboVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ8rboVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07D8C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727561753;
	bh=eXdvwOUFkRTiIGi+2zZrIZs4+iTiOuYnR6dRlRS5v6U=;
	h=To:Subject:From:Date:From;
	b=VQ8rboVhEESgL6X2PC//shQFCzU5oERhtiVC/jWGtjL2hwloNY+uaQFOhNETgajom
	 TjyPiJUnyBBf/jewwKzqKHYvWKwlHyFPDT5vqkFvpAcjxmZRJ7M89dQScuZH4E2C5u
	 h3Ec8gPwZGvlbo9dc99YHd9Pn23RZLxOpPn9vznaEGZwc6s8+cmipAr5+mrvv2R24E
	 gfxwNZwZfGSwm9y2LxW7VCmrP88TYGLAWyQImyIFEzvlZG9ax1k3KDfXJnExyJi8TL
	 AtP9f0NHUvQFc1EWPSp4Tropem6eASebKd50EecOSoh15lKyYe1S3VGaAxP9M1xuL6
	 SLMuC9/D6PapA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E960CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756175362.8320.11995925533360746754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344b3f95da14775f44ebc7f0343df35922848463acdca6f840dc523495567ff3
Date: Sat, 28 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727561753
