Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F228425A655
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770411234; cv=none; b=GSLUjOfAGGGcs8oYa5ybRfhJXK+qyJh9CerGhZRB+TNOxJNFPuOIt/zdauT4rNnoWc6X1jJ0mrycTCdipjCIBHvMuVndN8pPwVIBivsKF0nmvIWev+iQgGm1M/OFL2v2mBwvRyFUTQy266T9rZmCFQtW3aXY/l01ZE0k8Mp0w/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770411234; c=relaxed/simple;
	bh=62nViHlBX68+BSSfnX/ir6xTao7LJ9LKWIt6Er5fzdE=;
	h=To:Subject:From:Message-Id:Date; b=aSMmVNc14zs7fcD3SyOPqT4Aug/MLo3b1OD5VOEoPjzZvUqKl326iPk05WjXD5Ax7nyTO2tMAhoQGR3a/Wzc+itHga9iGvc7kRe/QvY9LY8g2XOlD9o5M6LXnaXWerjupbAB5fBNjXd3E8t5Ud3a78T22n4IEHvlTPddDwoRzvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBZkGpDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBZkGpDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770411233;
	bh=62nViHlBX68+BSSfnX/ir6xTao7LJ9LKWIt6Er5fzdE=;
	h=To:Subject:From:Date:From;
	b=GBZkGpDQgq8w0wVD4V5jML/sBrD1hwTq3Gk7Qr6jWoLTixzqcu28at635Cg/klfzU
	 2KLy7QkcdX4pG5oqkc7uopCKi0R7jH0CBp3iPrfLaG/wRLh2VYTfIrsAdEXro5wi0+
	 ePlKFziUSWJmVIlxsdMrbSykFquxIQzq3RvRhgl67px1gJhse0hIuU67ZOWCtj3dv4
	 dYu+bRlaMgjsONXuu4xq3hFiEB8Rfy+cAa+T2A3PH3uLHdDK5JBEwvi/Bn6ZWdQ8dW
	 Hn8GNeHGgITyf1LjNJmZ3jpIPxpBfsjiNGOcr5VqHSBlwLk/z+CQxLl3KF7662eo9h
	 0zkZglLbVfsYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E28EE6B60
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041123358.14700.9295705067908807798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f633d3b115eea083ebe912528eefbe8b4033e51e2a92a56099f91e1e68135cde
Date: Fri, 06 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770411233
