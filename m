Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42022C339
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760686794; cv=none; b=GSmGbUAi4SY4rm+yNcyXC4aC2/jV5sKmB0F0JoDXviu6SRgsu/jHW+DoUUptnw3yEdhtZw7KolrMKAgz93oZwrgYz9sWg7X5d3e283Z1PqRA7WYpPSYkX4xEJBRXxg5v1YuoV3xMqjzcxkMw3qoMXNuXjYXeMHozdyfkVi+v2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760686794; c=relaxed/simple;
	bh=z5B0PKL3JKSnhFkNjIggW79B9tvvoAR2BNIPVWRgF7s=;
	h=To:Subject:From:Message-Id:Date; b=olJmCNxhROofikZQoGa/8ZDzhGwc03dT8sxCewzmPBE7zyx7hOLV87Xd+OAH5Qi9dYiGo5xRXnbpMApJcQCshTNJJfDzY2diBdHZjkNb4Acd101yvuDBbCKivnAdJiNnVUlnr0jfWZDRF4RoKF6AEok/eh3uIY25L551716bDU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4Tstb8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4Tstb8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D075C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760686793;
	bh=z5B0PKL3JKSnhFkNjIggW79B9tvvoAR2BNIPVWRgF7s=;
	h=To:Subject:From:Date:From;
	b=G4Tstb8di19JNipHWbGexJ4FF+MUhUbooq8MPzSYdOQYVr2xcP/ZY1lzqVldHzNDr
	 Cc+7F0z36ccCoqibWFgcorE0C5ue1reeF20lnjHp2PEDZTvlH6yFOUHJVFZlYIoJDV
	 10aSz1z3WxY7EpbUCtkJ0tZlBFDz+z84/coNvTq3Ap2Etz7nXuBe6Aog3ms6cT0b3F
	 Msh5DrIuckbli8B9C4/dkYpdakssM5fe0vGHyzWGPibbn4A1I1CyNI+oVsjsRGCpdO
	 +vF0b8egGeqRB5f5VQl+64GOpIEkA8eCnlc0AKS2yOaWCi4/YlKnU5GwDbYcJAItA4
	 T/171K529XNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE25CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068679357.20474.8433063792374839539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b8d5e7f8d0c6a0d4573c60f5f0f83606b751812a0fb3744a0536c83ed0075a
Date: Fri, 17 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760686793
