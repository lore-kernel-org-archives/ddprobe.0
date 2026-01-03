Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115F13597B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767412434; cv=none; b=HFF0o3ykcIwXdd5koXxA8lXTERTjjbf+nQpdmCKPBJ1LQs9N5PVboabvRcaE4BJW6W0nOVFAQNFwlw88DLNwnPxSdbkPQM9qFSglc+3GR5EqL+qo/F7H0N3NBVLBLGCtNmpuuER17eRhRbJ5x7eC+zka1lCU26yndrCGXUc5obY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767412434; c=relaxed/simple;
	bh=3TmjJPhRJUcXXZEUdDFlLKrkMcM9Jld6rLnPGa5Gqf4=;
	h=To:Subject:From:Message-Id:Date; b=NFdILaf1IluyFP+UzV5MfiZP30C6PEF1yQtdNWV/nlerb4NciPlHbkzRrpsA3sk/g52K8cgMibaLMwYvLHHeVCwQPGJZ/1up9PeZooTNSQ0PzIC+duvV3ebHcedYLuB8Bvmga1eYgER9/UKO1vDnn/29zq5dUPckthZ8y55xyM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUzRvnRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUzRvnRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DDC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767412433;
	bh=3TmjJPhRJUcXXZEUdDFlLKrkMcM9Jld6rLnPGa5Gqf4=;
	h=To:Subject:From:Date:From;
	b=CUzRvnRRnQEzYA8FhQinHPaWTcnpdC0dbnMH8DRYcGOOn9+eqmC7MOvPfRdLf/Kze
	 kxNG0ghoksusc3gFBeUqhkyxrDpURsmLiGOAuKXTc+jzgUcO1ru9OAjF4qajtYMKVD
	 qGT7wVxmi+iuoSFYeD7FAwgssp2la1YNiBoZLZ8LqCek9yrU+1bs4aXeh64kFmgk9j
	 kSY7DFnwRycWx1sJcp8BaKhn0i7jBti0lKED22eMLDrE+UTlKjGsOmaErDKH//7EuE
	 ObYc//2pO1iR55ID2xlbiNOSRox/J3R/79cbio8i9LughsuncPqqhkjE0rLYfeKctL
	 z0ZzjizuZNSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91305FC6162
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741243357.10642.8306656472792176754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0e7e1121351e6125b6ea8c079931950a676f284ee443d075e20c290cc3049b
Date: Sat, 03 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767412433
