Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9B22DE6FC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756052994; cv=none; b=ZallVBOs2DoAQUTNGivAh5ODcBRnDYBqAcnnWxa1yUl8+U+yaXAGr7BAbfKdrnNANSyA8AUvJ+DtHvIsgNlcjHfUdnc9EvVggmqgBW95XkDMvY7Um0UQmrzstUX+UQPzKElvOjT/dJK3y5EWniW5BZQ8t0hsJlMfa3iQycpkOR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756052994; c=relaxed/simple;
	bh=Z6Q4rTNH3l3fF/vuC10F77ORm9Q1UM4+BANuK8KH+W0=;
	h=To:Subject:From:Message-Id:Date; b=dA5kY2/FsZ2sJzwny2LRE7JW89xfMooL11Bu+z4tkLSe+ssrPe120WBS403ND7oLwuT9aGWMtcLkbq3KhvFDqjfKjb9ZK5aOmNlnbUO/H+Ch4mWIIRKNmyjc8htObCRca3xpGaPxA9zRQi2gdMtttEa5H5+zP5EpsPc0bmSZT+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj7YbkJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj7YbkJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF02C116B1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756052993;
	bh=Z6Q4rTNH3l3fF/vuC10F77ORm9Q1UM4+BANuK8KH+W0=;
	h=To:Subject:From:Date:From;
	b=Xj7YbkJVShJhg0qhZ8SoU+FvUYhpl4W07GdpWiRCPGQpEU1rl3YD2TUhSenNnV41l
	 AkXge0jjGBOau/fd+Q9uo0mjH1FqkX9FIWp5F+4dNtjSBh9Lo8DCj2uq8swOAEEUxx
	 GmbzqjeOlbXoUV/oNcWgan+GZbM6tmLp0tUhlHacv4Pvogl+idxKyJdBzav1i7QD/l
	 Ijv3FbIpCU31rpXjtLQtwciCnlZ89u30e33hTLSXZ8CNZo1b0UtaX3CdoNDp5LTX/A
	 /WfH9AGdMrCII+BPIUrPsk4DV2SUdWI2SboOVpGzSGtVogKZmWz+FT1FI5hfRnsEt5
	 8u9/dPCKDtKIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605299357.1823.8875255226622397148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230a93a6561e0934fc3cc13874bc8873aaa56d59fc765da73eff22b3a1c9f753
Date: Sun, 24 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756052993
