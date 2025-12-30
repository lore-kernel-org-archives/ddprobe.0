Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07568318140
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767107034; cv=none; b=lBUAqneNnufu7kDvl290hW2VyqB/M9OB/eQ9gI4aug9RWV7QOTOUqhIN8jFIlHiEizKTrtMBSws/Jwdo/9k0JFft91ZacB+W+iJWvkFp/iGrmHJRfXOm3qNzDqVe7JUVRuCf5Pqau4yo0c9T2RsFUfnHNd3udQGeanKSLjHbb+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767107034; c=relaxed/simple;
	bh=ytXuexTF9h5eH+vTeI519H26U7Nz+3aJCNTI++Ta8xA=;
	h=To:Subject:From:Message-Id:Date; b=mDPfW4DqFj22p8K/NVFkYL+LuVQ5yJtAibC7/NzqEYTOFjhxOXtEqi9evPuB3En179sEX3Xgy7yv+u75gu5SGnLK95Y5MUUZUULpz59+p0a0O53KpqSUTRZEqePnF/e75agp5RiTPrLC4WMn+MS3+P0j1YTjJgySjw7uqKCqW1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO2ZQZBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO2ZQZBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB73C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767107033;
	bh=ytXuexTF9h5eH+vTeI519H26U7Nz+3aJCNTI++Ta8xA=;
	h=To:Subject:From:Date:From;
	b=rO2ZQZBOu9iJFWOg+JPRiSjVe1oRNyrShqIynJxyLADez6hR7mNrYy/LNkR4vaT8A
	 Dm64G/MTdZ5RYvbAwC6TKxbTIB7koVpsVrKm2WPeQsD/oLt/5RpjO8LwJ/p16xqDoD
	 rKyLWF2gbQL8qPMtXFZ52qLj6PL4SJ3JtpimDxNb1GW5lz4y980YXlKZJdD6i/y6C+
	 QsxXg1Of3ReLAinRY0hLGFhuoApQOkemKJM8hLlFOXxLdWYHHdw7w2/DPRonLsXSxd
	 mvh4d0rEZMQTbqxLAtAAEd1L2RboExu0XcNkWzeASBJAIRECHbCw5T22+88fPB2/D+
	 yrcm4caL8p3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4CEE020A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710703357.28828.17977016738796215036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73cd9172712c9e8aeabaeedefd0ed991cb2c609cf9cc966c12b23968981f371
Date: Tue, 30 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767107033
