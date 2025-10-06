Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4833CEEA8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759729794; cv=none; b=C8KFUvcLOXvy+p1c1GpuJ1B2PFRdDBQIt63siFBnmFW199DVo1hEw9vs3+0C2thzGflf8EvJPC2FarUpoIFPAdzMAbMw1dCkhA1H0K3zB3ppHgjQzNiG8bBbuDEL+YRQuqhWiisuExQhTV5jBN6yN/W2HJmXNL6+IikzbICWIu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759729794; c=relaxed/simple;
	bh=ZM2kSFg0tgBGQL63ghLWBJnqmZ+P13kiiMjW5Uej+38=;
	h=To:Subject:From:Message-Id:Date; b=BGGDzldm4FG3nYJtp8HwUN4rCIiGFUmNdhZBntKSt8vkNJXm5l/9qEXX7xFWGtzncvsvIqmFId0y+Tgd/PpbqmleOLPwC/p8lpyLdtrp1drQFmzq/U82bogN6OwLd7U7ikCHMT+W5ZGgEX5Y6dJh6Z28jB4DCt+hF5Zvmd1WJ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evpyCfNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evpyCfNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB190C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759729793;
	bh=ZM2kSFg0tgBGQL63ghLWBJnqmZ+P13kiiMjW5Uej+38=;
	h=To:Subject:From:Date:From;
	b=evpyCfNwVENg+03Ke+whmjdKIk4QlAlTFV39zJ0fMIgfvF/wythNdvYF11ALt1hGY
	 oRDqsfNiRyy3EEACvknOqMk5KMIXa7tOCgDFtMjgoxOxzHMFA4UT20Sy6UyBklFQFK
	 TRvOMmF6XxrZV43Ztn1QqaG+3xhVt0I0JCTypuY++0BXRMzDRc4UyjKOX4UdfVSTEW
	 tnjsJqWifwnGBL4NnKpCZPePte23Uuf1Ln5rMkuPQY35h37JCnEw5vK2ucKJwgiBDj
	 oKrWR35uxRDarlIVVOW30QgNqhvjlvNfqRqRfK1Zc+qdiRR4QhdbY6z/kDAAUMsxQS
	 oyzQvPsKPccCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98635CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972979358.3502.627571423143384635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f91005ca50c8fee55aaf492f1f41cd475d7ae95b7797104d1101520ca202a4
Date: Mon, 06 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759729793
