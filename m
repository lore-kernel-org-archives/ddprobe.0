Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AB922D7B3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746176394; cv=none; b=BS+kdp/288iMHRd5leGGmZOLDnajymyfMBJUWFOnlql3jKaQ1eLktEfeUoS7g7WLUSX10HyaLgMVS4vHRvA7fkwpWbqVnwnQZ/t75f0v6v1AVF9RLe/ToaLeYWq1wY7+cH3g84XciJhq0eVZUPZ9Ia+heTE2I/7ZXKKuHB/Y2SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746176394; c=relaxed/simple;
	bh=ak8rN8EGgJBNyu7joz7TXw2sVVdFNCy8QsYfOGlb7II=;
	h=To:Subject:From:Message-Id:Date; b=b5BjEj8cGsp+/psp6zHfErccuE1BsLulCnSDowLGkFtNa2J/1GKsKZNkjhxglPA95Z1fmUllZJQ4IVXD2+js0FQxd8pCS9iCMTk5aOMLynr9xc/OYLwVBBL9nY7+oXvBOTl+YfVIXFV3SDPyyiwFLiMmQ49bkqln5Armrmoig78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYPFEoEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYPFEoEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA53C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746176393;
	bh=ak8rN8EGgJBNyu7joz7TXw2sVVdFNCy8QsYfOGlb7II=;
	h=To:Subject:From:Date:From;
	b=FYPFEoEXcFR+83Rh2NzmxJLhl28mjjySblCA6ChrAPOI0SdErm3KgLKE4TA4pwO8l
	 NO5mIduOb+cE26T1mbzMKht5X5QPlqT8hvz6LXXJzIuXEueN6sCgDpUbWMSn6b43cA
	 HnfvvuRpr3qO7Z/E1veB1v+R0/KtWH6+O2yef5x/NSzrHXXmXJF+DXQ9URSmYvLPEm
	 W/gBPCWXivvZTyWCPFFBQDbbBKzm4OgE/MIrZUbPlx3tZNVI9rUPuG/fG+lmOkWMRV
	 9JHm/SiNGXNAkRJiun2DUm30Eb5sGpquCqqJT/SgNIZTsTudWDum6wwu9+6eNAxFwg
	 9hA+ri+djVo0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF64C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617639357.5783.2594202827494083065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d89e9b8a448db47fe087c30c551c2223d881dab00311312d67e2115bb31402f
Date: Fri, 02 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746176393
