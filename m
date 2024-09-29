Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCB92263A
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727634354; cv=none; b=PzQMdN4pg136l+26g5nO5d1Pbs44zJpx+Gng42C/+B26NES6kYSO/Wx1ECXnYOWtQ4LMg+uGiS7s36YX1BgW6gL1Acg/AGsvBA1Qy/OA/jQx2EgXZYhF+ZouDAOda1AkteDzcUbTmDFW00woJ6gQwAGwerrZyjMIGxnYipTY24o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727634354; c=relaxed/simple;
	bh=dlco+g6JsTg2qmy941pzADLB4NbEpc//lKwFM4Ro0aM=;
	h=To:Subject:From:Message-Id:Date; b=r0TtbsMLxVI3HBitKy5EBrKlZdD3+QQEJ6YolU88qkbf3jvlTf01kQjMyohEODU/T3QRu2pZhZfkVx+InoOQHXfL5CVBBcIamvkseL9WPPChcHXzceDa07nRI6iAn9Eprj1oXYK+MMWgVO2M7Ss86kPgekeQEshnU697hZXH2Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZj30AL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZj30AL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4824C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727634353;
	bh=dlco+g6JsTg2qmy941pzADLB4NbEpc//lKwFM4Ro0aM=;
	h=To:Subject:From:Date:From;
	b=fZj30AL0Mf8Ahagf8ZBU3klGN6rebgRcYCKHGFt1SZzLBUELnBUt4dtKtXkbBJkCd
	 hN3/yw2n4QvLikRaM9/gkoDMy/ZBupK+lmvgB7NR+11N9sxWelE3p0oBxn2iTuH5dL
	 rGY8JLtBr35VUBI0TGRUsEy0xSAQe0NfmQlaOAJw40bZXc0TnXM9cMRHrmgsoNo6Tt
	 Ymi00Dvf3d9tvsIn4x9xbS86lTAEPES9dxShWtxua27k3y43+85nINWWODlIx1d9B7
	 MQGuaOJhEHAATFFQHHQt5/TJL/X7UGSnRys8ucNifAepO+vCJnh8U3Nld3Ax5xKgJ9
	 VlwfWD0xTuBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52CACF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763435366.8805.9184886861314993017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8da44a0486c35a292918fcbbe4903c0eac233449fdc031b279965b0366b29d1
Date: Sun, 29 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727634353
