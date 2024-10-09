Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438822098
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728492954; cv=none; b=asEDF1ub/eCCmmxk0zTFrYp8ctsWzVGmgrTlIrJa5OY+TTV2DOpt+DaPBJPwczszGVl5oCUOeZV1ocOrfta4h57q4PBTk1SkWs/7gggfpDXtb7SG0Non2eIkeW4OMLXPvtJw4CuXQTJ6U9FrBP3xYPPhpYo/Ji2sLdqetSuzl7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728492954; c=relaxed/simple;
	bh=Cr96jEIhsiozYzk2wB6H3hA6RB70UYxIikwfalxAHls=;
	h=To:Subject:From:Message-Id:Date; b=hJ2JeXwpW5ieqiEdEpnLNeJD0WRUyM70DJ+oXYon3MI9i9qZMvJg+rXNzDa+V/sUwT8243Lr0B4tPnm1MtavhNYUnSoM0KuxntdhlXuC5w8DAzYSLCrvpuqYLaqsTMgtjTr/nuZCiRMhlLPj7my8DrlF0w2qv1xFMXGy2slZu38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLNJP47p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLNJP47p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C24C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728492953;
	bh=Cr96jEIhsiozYzk2wB6H3hA6RB70UYxIikwfalxAHls=;
	h=To:Subject:From:Date:From;
	b=jLNJP47pLcEGEHjsh/U4lfQ/6xn/Cj8BT3VoWpdkaOW34reWj+4/CAhlbN1gTi+L5
	 UwL7D0Cl5Ulk+U8WN7p4wiIlhCpTVPtp7Qkgt9DV1Dk8/dUzhfE/rNvkGa7xlGlq9w
	 9OfRHJxcnx4+OqJui1Lx2MwMGoToLOyKjZZSe8F0+u9FQ6wUXaQ8tTp5ZY+qhFPJCN
	 cIEiqWG/DoaP+6Gy2TqVRFH/iXK3W7wOnWip6uRWBYgdgVtguA839n3F7QyfQlek/K
	 qxeQVq4KbfEme8AlI9exnd15yzq6SKHCptR6ET9CXczOEqTb70mOe5BtiTOgF3rhF0
	 4hyxgbzTViO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F2CEE330
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849295368.28936.11957915684376236655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97d70e5784529aa3ca7f82cf8da0cce99c8f9910e230f7901390686a37aa2df
Date: Wed, 09 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728492953
