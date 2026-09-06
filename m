Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C56C2BEC2B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788736234; cv=none; b=kAl7jH3w/Slp3Jdp07kIRi0c5W1syn4c5lBAjKWpu/jV76MKkPXgXkFbSEVTcdLHY+atDyt887skzhIwle6jNkfVozsT9oNGk3yAFcI2BKWk8bbwoQs/kX3FKswFb9kF+wqrWpRyrQ3emGn3qR2/ODcAFXMI4Ys362nt7L3RBQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788736234; c=relaxed/simple;
	bh=Zxip6FWKSqLyaBlK9aivY6SNnKnavFLAB6tD7Tlb854=;
	h=To:Subject:From:Message-Id:Date; b=H7g8Rnm3gTC5rYAo/BRh3QPBWTZXoynnzzBxOghkE8O6zT+pqrMssFthPOTEEBG4c0Ssa49fu9bxgyIBwg3gqV5G3siX75djo5A26yNS+c117FWs6MrYGR81en+j/Fc2b8i077pSNnF+Fue3WAqjEfnm8YB3mh6tDUBXJsKuSxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpFOlQd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpFOlQd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C81C2BCFC
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788736233;
	bh=Zxip6FWKSqLyaBlK9aivY6SNnKnavFLAB6tD7Tlb854=;
	h=To:Subject:From:Date:From;
	b=YpFOlQd3fBLuM8hasiPYmN9hEFtF8tR2MHf7hk+my+0euAMFmdG5ShMUuIwcmLrew
	 SsPAM7CrCS9AohzVt1giqimbrnDrKSuABwXtTT/4q+mAt7Mu6yRv6Lh0OSBt4QQLpg
	 nJgU33HoPhwXDDuw68TE895gnSXbASB82grtePe1UkVKPF+L34zA6/xgqF9uy3JMnq
	 eTHrus1xXSnNwBxW8D17v5Vr5i8CvMQy7iLgbMjCzZrS6CsvMt0uB7SaDc1WPa2yIS
	 gL/1CSJzFpokodGcc1IahBGaRH+mlrUblJAzvyrru5ArwmDajcEyjDuMvcw2wJyRT4
	 /+dKK9m7P2tZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DA5C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873623371.9578.5417310355037926993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2376f8cb3bd9862fe3814707395ffbeb4d13ed9445b89f3002e0e689043c1a3
Date: Sun, 06 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788736233
