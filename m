Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267483F4121
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778730634; cv=none; b=b5Fq9Voq2+I+Zj4s32HlYY9V8iPaZzkxWyyGuAJxXvLO5UIndKVIhY/rPIwOzNAhj69+TjYPNwRST6Z6veNmeR0Hrp/dHsfgUqOR40h+onYs2iMMHIF/LF3UDBf+IglO+dGCupSvsrQ50vD/oQuCz+VPns4oloGw6rCkVKYyZsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778730634; c=relaxed/simple;
	bh=0RdF5RJHcdHPxPYK2BMk7pdbG/Cii8qfOWtFODjbLss=;
	h=To:Subject:From:Message-Id:Date; b=Lr89T7E9fJD7fYuu3jhzUfIl8feEU/kzcYA/BhIKylZm0oVZMRfPFbOZW6V4vre3nkFMrFwOqvg6YO0cHiLedE4iq/ce26DEk8aiOcPRWdvOOvGVODSudJZmV9RQhf5I1ySYpdyDIoWdu84fL8EaNtB6/owV9x6zf+BE7XSttXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjiNdrHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjiNdrHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FA8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778730633;
	bh=0RdF5RJHcdHPxPYK2BMk7pdbG/Cii8qfOWtFODjbLss=;
	h=To:Subject:From:Date:From;
	b=KjiNdrHc1FDDLmcgOKiWvDRjvSJolI4OchImmw9aZ9Fw14QWIZrKFca2IozV0neOs
	 IWDONIIttCE4lVDNymZan8UjpkVqrnkU1iZFCZ9yj0jx8p7AGduTV2/ufvvCnV75ad
	 PcYbf4QBunimKBCNn/6SqkJTVr1aXLYFBEeUX0yognbsIxah7RWSGDeVn0WOUnt9M1
	 0ORpgSCLfVN3qaSu2RQFwmrIQDgF66J6d2k9d7bYjnLRS6Vu3R2IATb9LeCHiwdnXR
	 gD49n2ThMEfJGCEMKmrRns63TxP3c9NEMKqJKQRDTWDW12I2MUmOlsrvqg4QZ7ONy6
	 rDy1opbxdsqIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3CBCD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873063368.492.1442622049238309194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3121853ce4440a91ba418182c4e0b11aaada8311de73b48269dc436d0f670a7
Date: Thu, 14 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778730633
