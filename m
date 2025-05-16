Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B31722D9FF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747384794; cv=none; b=EVIfaHUH5xVAhkdiY4RprAjNrNBLstf1FRysfIVckaHTuuq0uiUyhR14m9VF/Km93O5OJtgvmtmImyjPJU3C8bbLn2l5bFGmZzbXjzfGJ85MBHerJwRpAXwqU5lmAQzvY53Wiiv2sJpuracciEzJvGAhLNtDrcJbShAv+yOf+F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747384794; c=relaxed/simple;
	bh=OdoHmsyaQeKsNF1cZn7DDQsOCGlOAoRpp5MEVtJ6QXk=;
	h=To:Subject:From:Message-Id:Date; b=nn8vpR9zvqzATgMb7gTsV2D1Advd9MN7oyaCKijFM3qXcMkBIa9mv0R/EtO4T4EhMzwfau57ZgoTNKgba2PpRoe1ApiVd4jUCbVvxzJQLSddaXlUjAbURVVxldTrrHGihYypnqLJFpycKcHSzjEq4vuzlZvGliZERZTefYh9198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf04bD4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf04bD4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747384793;
	bh=OdoHmsyaQeKsNF1cZn7DDQsOCGlOAoRpp5MEVtJ6QXk=;
	h=To:Subject:From:Date:From;
	b=Hf04bD4Ijs37orerVRyMhA9IOGuOEvvM+J/F1hDom0/eArXmAdzot1EJ9TKmQPs8k
	 kHi0CTl4U7s/NpmFC/ii+AUXJ31L3h5tvNn7EFsCQB8yKcKaf0ksQDcBKpWetmp2KJ
	 kRQ/F8N0dFqyebQ4p8zuGUI67S9KlRtziKf7WH4ZnZV0ZaFH/0AaDoPVawIAOiuv6k
	 peQnwogZ93RpW2zXs883jc/ALB2e+3+pnGLUI4yof8LlClqotNjRRZ9Gl1Yr7K78iO
	 GVDE2vjEL6frUskaTOzSUyvyznJDStEJjY9w6zlbXpZEegaL5Z+c2tjD3TbG3/su23
	 Drn3hTKW0RBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F423C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738479357.25062.3288037608433393769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2cc72d3629a5c33a97ff9f2d176364956b514870a854f37fe8e235167222fe
Date: Fri, 16 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747384793
