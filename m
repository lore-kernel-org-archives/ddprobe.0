Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6D1391
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764382374; cv=none; b=O1pzA+bC1iG1jfG60hwelyJl1A9iz+XmR50nLyYWLCfsicQz8O6GMpOwFEXToofTpVTSLng6xmRDhTUDGQDhKRZnAlvs2UFWxvjzglf8WDrTmze7spiAmJQ+NTsdy5yflNa1pwI4QUJlNjUqVb4NFdTNTMIH0e9uH5ZpCyLQUFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764382374; c=relaxed/simple;
	bh=/AOUMoyN7BUV6PZ299crv54PYBjlSXmo2/La13NNpi4=;
	h=To:Subject:From:Message-Id:Date; b=IBrGOomJ6DzjCIJGskKu3L9+nHLcPF+6qlS7KPq/ZwehykyTnLv/HORzInjXM274ZltlZYgnaj6ZTHbvtGB27d2MvAPN3TM4Q6YJZw+pnnB7V9dXq/AGUgZr9Dgsoh5OlyeVPWUgGj+gTBO4O9vK3szM5AhJMSV7Qdy4z+pWQXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orLp9hjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orLp9hjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E06C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764382373;
	bh=/AOUMoyN7BUV6PZ299crv54PYBjlSXmo2/La13NNpi4=;
	h=To:Subject:From:Date:From;
	b=orLp9hjGa8BbmH/5gWAciMK8e9wnlkQ3baDjudm7m+NMdWBwEmrh+GLPyG5jj2Djm
	 5EbXc/JwHQWW4tTSQkxsqG8AD7M6pNisVTS7WknqEeflMmHHE2FVt78vJO9EYYJU/T
	 7XzSpzV5TK4bna8zWyGtHJU5mSKM/POX626cLKfTBliFEkeb+rxfYzRDiECdPXU46Y
	 JbIo7RmOzj6EAnpd9evzpedcAIZoGXbX6OjH+uRbzLNJn/b13JTZg4dPoFNfst+tk5
	 tIBB1tYrp9/nUczrovI1BwBm/iSx+8qnlizQyuta5XZl2vTddRDnBSB3F/0XqS17ed
	 CT31YUN/+qSqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BCD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438237358.10463.16436129810231618741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8d5ec9f9c9af798f58adb32a33eb3381c92b69deb01b7fe66042299403c28e
Date: Sat, 29 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764382373
