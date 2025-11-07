Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187832E8B9E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762538394; cv=none; b=sCS4Odqo9s5av2hN/5p5kPVkh3BmACvb1wYrqASiupfe74rUB3yYIxDfivonopRzD0PBao/oPOhHkFoaJw1Pffmyeo//lNUP4wfIgQP3ETBxsHoQGUn7jhjqPOFnsMeYAkVu0Jtz7T9B/DXF22RvTjvxJT+65ShZKY+po37KFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762538394; c=relaxed/simple;
	bh=p1pVqLEz6jWIiVtbu9uz5FIdffMviceEWtbSwhr3wNM=;
	h=To:Subject:From:Message-Id:Date; b=IJ8f1J4CbtLhvTpeZBOlf5v4TE58Q3AOMtGY6mXrx+m6m2JOBbLhrD98Wbh+EEAC+SorVNOu4l/qC5myblk2XbXEPtAGwGOKsomYKF7W9tVGe2Yd/Wnpo0gqtZwd0mcWIQ4N6rBYNBuSnnGSBMuohhA4AAb01lUtvwP/XWvKuMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R780+v4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R780+v4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCC3C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762538393;
	bh=p1pVqLEz6jWIiVtbu9uz5FIdffMviceEWtbSwhr3wNM=;
	h=To:Subject:From:Date:From;
	b=R780+v4lGcN/lxuzeOa3nADmAaIzKWeTElr71aXS3Q5tGSA7o2suuwBuiX5Pj+dYg
	 BQi9UfPUNfwi4w9fXp9IewRhw4nn8nPJRg8FmKCjK4gxd4WTT1RrnS7+EvrY0gBn6c
	 n70PXFCuagmFsjVlBYZO/8g82wXxs14/lu3uHR67PcY2hUKVuEbjQ9jQ/8TQGEgTTT
	 T+b0TR9sa+NMDNz3nolol/DAHLYi/sg63Zyt9mfflxZ1bstPUaYTNM8b/aKoEc5FDD
	 uYP3hX7YW9b3d7a1lbPsGQLcMeMOUR4yamIxUjMUILaGmxqJ7/gSmPtZNPV7OOaPJd
	 4iFLAzaIaSCzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E838CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253839357.30533.1243225962619403177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7d5d53f683893b7517b4586bcf8178613d6391193a0f464794a93e6ef40b74
Date: Fri, 07 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762538393
