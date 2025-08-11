Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1537756B81
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754871594; cv=none; b=EXDiIWA9R/DPrV0cqLW8lG74ECLvP9nHiknvS1wJOxcQp4/tPYnU2veMcUfjTwnFKxy9XdQypsiLK4ym0QUdyVkht4MzvtZMfqt2KgfUrMyfJct8nMl2WOMeESqkgds+dKZcnkPniYunq/EcRckkYZ/c5BkS27pb7YgVtzVxy+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754871594; c=relaxed/simple;
	bh=a4+WB23XlV/JdGbi3SiJcyOXbmg2gwu6UCgGS68P46Y=;
	h=To:Subject:From:Message-Id:Date; b=U2ZRrUJpc2q2UHTfOh+p8KLLxcJCvIyI7+R+XF7WiCVncTJNuxBqGx55tbbYw+NIk8Se7wpQ13iMXsxP2Knvl8JggcxWppOBi7SckFZF8XuKbk3lE2f1CLsdJXNCtO/aua7knxFWc4kk/hhB8ZfU/eTU6LUxilqZ9y3DC1fTSGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGA+kVom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGA+kVom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754871593;
	bh=a4+WB23XlV/JdGbi3SiJcyOXbmg2gwu6UCgGS68P46Y=;
	h=To:Subject:From:Date:From;
	b=sGA+kVom+quG4EJvzbbuZ8C7tPnWAhOHBML4cdW9WDhoXILhr2WsQ38u2HmCJ1TgP
	 dCAQOJW/9vNqrDJrk67ci613HZOP+0WagUeaCpc+legqHAGGuiOdTx8FXZruds8YqE
	 jqAJHy4rQqrF7XA9Bx448rGCJxMSTfMjlCUMU0+PH91+gwonZNtnKmRU0o3CZisqUI
	 7EjYfSDXZfSmwsFBJcgiqMgAJFRZNEWQiOlVnaBM8htKZZZDksatSBoxDCUYganxSb
	 0wptHPYoeOgpyAN7SE7oNDM68hYj3T9l/QSBi5BrlJjPYJ6jSc6/gaQ9D2Q8iQXq7i
	 mUGMdPVV2XsaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A39C87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487159358.21928.847310393935430955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e186ed1cb97bc4b76139cd1cc052331afc09594d0462ceebf995cc1fcaaf823
Date: Mon, 11 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754871593
