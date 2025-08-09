Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB0F3C17
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754736594; cv=none; b=jXqv9NEa8EX2p2LTcA6uLvh/Wq+zoOLf+k/cajPJulCxiGX8xRUO5dkUjlIrj7Ffd8TfZQVbUtACa5SsdXs16ur1QOBd2bD2/yxgVqtQM0RHnzpKK671D5aldin5WcBKgCtjwh9VMfDTowvHoJq5JDlIyWfSXoQ8hdc6N4PeNA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754736594; c=relaxed/simple;
	bh=kUnDsPESqeK8OZ0DwmdrdPaAjKuofj2DC1B3u6iIBPo=;
	h=To:Subject:From:Message-Id:Date; b=Z0gD9I+fPxQ7pdk/1sZmdotDNFFGZn8KR8LUNxfuMzNxsY7mzS+wCgIu5+2Z9mOLsgj0vxzPtUBGkQ1llaHv3gRx8G7+CABa9M9CAhS3jH1SgY+0BeQzOiWR3objxztcET5juHgqcsYES74leCivuOkPN85/19YcyYc8CgyhYXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk3IIysg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk3IIysg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE86C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754736593;
	bh=kUnDsPESqeK8OZ0DwmdrdPaAjKuofj2DC1B3u6iIBPo=;
	h=To:Subject:From:Date:From;
	b=tk3IIysg1uvXpNIfYEsaHAoHKWZqQDtfelRSk7/gXFtqnXLu/XHxsweZeInQxVfOf
	 ABTY2mvcwdOX0aft92gEn+EUCW4TLovAIa0I1q0Tmm347o6faKwVNGYa2CNnuZlHuq
	 fPYV6QtbPUVTGve8oDDS4EIRXWYuccvUosR8v2KC+86sn8+ZhlTJfXmwfUI3po5jnm
	 3tTllRc0o+pGnERNbLUSmId7USSHWa7mYvGvGaQXITjowVx1d2+/SEUhV4m8WohiC/
	 PcrM9eO0ybjqCTRzYh9szSzRPvsFKSrZvY0DZ2/AffXI2EwxkCBJyThCw+emDl6+1f
	 rgWQhuJsldPqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7FC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473659357.19916.17762820864776229844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd43d0a3b055b1b78813066454bbe9be2703e225b9fab114f58fad6c6c4837a6
Date: Sat, 09 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754736593
