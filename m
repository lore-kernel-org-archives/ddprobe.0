Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804883F54C5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789326034; cv=none; b=l68wSiIRMVcThOIQFeYubCFDNFFWZt2og2gU3kOLB3AaeRbt8g4klX8JOMKxUKchmABzCxcrWYICAO11IkSRj1eRcdjWB68M7vJDk3vft/8uglnNGIc0ZzebiFJNA3VD1uKzyk/RA8TJCIGgsKMvoFQ8jBXOXddBnSPB3/Eylg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789326034; c=relaxed/simple;
	bh=fy1lvWYlwBOr7Rhi2XAwVL8CCCi61lvs1pwfrKIyqNA=;
	h=To:Subject:From:Message-Id:Date; b=dJdU5LUhrY2reaZcFY4jjCsVCoFSGK1YH0mLU4+TCScRlU0MOTXCdRe03CTF9cVrvyZeRfF1JB099rhP6RhQ54PwZwT9AI9VSG8GafCPy+Xfv2wYkYbXLahBI0SCoacclmh9qIRanP4+gextOwDj4a2oQlAx5zEkNWVig1Zc3yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB0BXsgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB0BXsgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF308C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789326033;
	bh=fy1lvWYlwBOr7Rhi2XAwVL8CCCi61lvs1pwfrKIyqNA=;
	h=To:Subject:From:Date:From;
	b=aB0BXsgvWMgYDQk4F3yUObBZ3JxmKM+cXq4d2Uitv5rfySve9TXTAXuTNsSUcGjHV
	 hTrixt+GO/LFzp5zOpWOjltbRl1xM0NpMxJ0E8WISFO6ckTXwhkEfQmG0xj7MTkO6P
	 oc9ob0pEeKBiLSDR187ZmJotX0NCX//C5GDQcy1lFZF8Kc46TL+elZbZZjkrWEPO8h
	 kkKGDOYt3GGmWGbqvFVUqhTAsGzWxAYOVClTv4U86Q25uyYtccHwyfTAeDRlOOlIPf
	 ovSJEXCLpU1hbyUkuXFvu9RxyZze940PKbfGlNS/QMntqQZ/bBeb9EF8sUPkiAttUB
	 PMOYlLvN/t0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB192C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932603369.2507.2553865539814411111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd54faa7ae67eeaea3b98eb15acb71ad7834be0cba4c3b38d6f5666c437e492
Date: Sun, 13 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789326033
