Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065073A3813
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778504434; cv=none; b=QcTflrrAuJ7PIWul2AYlYmKsSa7fKrNwBITes+G/amTTiJZ7TcbVXxqbnWuPRxAbToKW55FvpYkfnVKIW/F9ohfML0Ujvt/qLU5Dvt4y8OkgpChwHz3zLup3z8subuoJXUSECUNEDalR1GVrJy5ygnVPfdEQd4zngW/dfyA9A5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778504434; c=relaxed/simple;
	bh=PDrcph2df3rClceaGr65++aYjLjp0nTjD8vPxLeQRzQ=;
	h=To:Subject:From:Message-Id:Date; b=mcN+WgDdEqoz24vjFSa8FBFOeOLUn3WAYRccXe77ZpBFRWAJ6jyN+b3oBhlny4MST76b+a5LWEHZ/74FVYN4Afx+u6JTRMNfbesty2rIDC/a5QGMcUVwLi7+R47iBV9kQaSjHnOxcoZMYH/iKT3K2BCoLp1BMwLE90hWad7oOXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkZ4i7v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkZ4i7v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95A7C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778504433;
	bh=PDrcph2df3rClceaGr65++aYjLjp0nTjD8vPxLeQRzQ=;
	h=To:Subject:From:Date:From;
	b=RkZ4i7v7pZBKz1+BPi1N6EOJuboLwD2kNnuYS/9heaDi6ISlLt0nKPHFE4JpLjBsZ
	 0UfMePAJhrxWGXlkGg5HQaNT+tw3KDaPiL1MbhhcgKxyJlTFCZah/psHiAdS8a9u0J
	 zuMNSlUSe0Y/pD4P2sEyzlB0Mw8A+LSlSGZJletEuizq/7ZLf65CeqEdKaO71CDTz8
	 4i5wQ4HsjRgGia7SGtK4ztnEL2K2hAp2S8lCMGHJpW0kIlWguQyMGPMg8/YnnXN3Of
	 QAVbxvGG8ilB7OuUo1Zc5qQ4K2JwmmVPHgQTqdgOGYZz5fz2B86LnFbtKGq3BNPa4U
	 fkef+lUmSzCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06CCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850443369.7818.16147552946257591643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5980ae8a70e036b3048fee4fbfa40e83c790b5243993deeda838cce6d8a8bcba
Date: Mon, 11 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778504433
