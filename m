Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F48137744
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716222743; cv=none; b=QxDgtIU+hIZpJ1LwDcrus8jMia5hFTg3j1o4EEU7hF97qRUMTAEkNq3Jw1Xq1vIuw0ssg4ZAFrKSm7UF2MnVj4c1+bIyMKk2+9JXng4TDKdtUnBS39QSHWVTuhdQynQDc51cXNuzT/hsoXYRkNvDGKRQZys+pd3p71aczkelNyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716222743; c=relaxed/simple;
	bh=4rBA/CcXGE27kzYVHoj2s5YQqGpLfKUnD3O62XJvdk4=;
	h=To:Subject:From:Message-Id:Date; b=PnqUDXIAZsXBf7WC8vYD8Y4470sCRe9T+rNqsOr/8njQ7vf4JhywETdbq5KhXbN1thSmip1hOXMg9e0UybSNKIYujqoDDDWkToSfPJ8+Ai4mkyGM8+NQnesTTuqrCG2ra9S3DP06TDe+bnl0xzTM1xw8mZmo9teK7ScLK413Pg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLoBaACs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLoBaACs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB122C4AF08
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716222742;
	bh=4rBA/CcXGE27kzYVHoj2s5YQqGpLfKUnD3O62XJvdk4=;
	h=To:Subject:From:Date:From;
	b=VLoBaACsPlocmO5JuuXtZZ/E3LSmMzzOe7VEbiGvt+mnrzCNMJKLiXFApyMQXZHp6
	 zdHMBUw1ikigfzHdbFW340X+Rv1MmA+2wpIazmqavKTadsiWQyd1fk2LtHJngyfPTV
	 nlQ609pcZC/dTsbYVscbgnfXzWILBKFq6B7eXl99IGEg28SnOi0ODOOIT1Yc2W4+rF
	 qZ6s/wKhmyEz1ODlnWhoivHno1Dt0ZrXKft6dfldhwlOSqtyj++or7KFo7fgo3HhAu
	 5Iu+Czs32Y5EO/YtM8HbKvyo7iz5P176/oEsHdYzHyUmqbJSyHVqvyBX64D89MdzYJ
	 3Tl92XOSTaSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC69C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171622274282.16404.1317110055414749654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933cb3a728b3b194de2d3c93fb52a9abc844d8899fcb9f8dc38629e2130c79ff
Date: Mon, 20 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716222742
