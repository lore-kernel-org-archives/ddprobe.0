Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C879191F94
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789521634; cv=none; b=Xa/iRpT+BIyl+qv+QgR91o5fYVkU4HOPhGiCHtIS3dgFiDvNzhYvO946Ws7APC16ub5EOIlNE0VuuQMhn+obmugWUU16v6QPHYLolwbl8PaU7yDIbDLH0NYIJ8HitUmgtCEjcX3A1PZBvGry6pdbp7KcYuuZ3LMUapGma1hSs9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789521634; c=relaxed/simple;
	bh=LT6L+m0brR9H2wTYVUeg5vauaMuXSmRTr/HhvQ+cUQM=;
	h=To:Subject:From:Message-Id:Date; b=Cku7lso30s6s5qEAo+BzrgLnDEcWfRFgla+hkYjd4NaoYWbg5pe3WWoDMFUNeAiOa8PEvfLPoud3by0FLrab/2AM+CLzTx/8XGYks5G+AsCumDFdFukOxdx4lL4woYWMhkPz7vV0dqDlltADWu7WH+EedT1PbzhyVBFw2hILWP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9/49EmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9/49EmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1109C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789521633;
	bh=LT6L+m0brR9H2wTYVUeg5vauaMuXSmRTr/HhvQ+cUQM=;
	h=To:Subject:From:Date:From;
	b=H9/49EmO9Jxr5ozXqexjjGE8c/emUNUZ2nF9Olk5VNaDrGBrGVM5AOepl7v96aiIk
	 TbG5U5wRhRIX8h4JpkroR35ihfjeGtaM5J7NsPUrJUrLnGuGaM0zhjl13ZsSFiXfKT
	 60qiInmV1SpFhPjztAzagJeCo7UJjMO0nYhF9IXKuwb/l62ioVuOeGH1h8nAROaBHk
	 eVqWg+/8uPtlJOs6TKnVZkn4KldxqJrmCjRyg0iTpbmBGrEsrz/kuVxjdFVwLOElkp
	 sPe/rQG5Q2Y1IIQFlkaN/XunEikdtCgyGL5zTIZzNcBNFAJ7JVc7pM7AjP55M1caaG
	 7A79SM80+D0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7AFC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952163368.7149.956415050932742785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b7abb79c3c46426537aba8de24d7b3308ad2cc080b3dd9281610ac90e5b9a5
Date: Wed, 16 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789521633
