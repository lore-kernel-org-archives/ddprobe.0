Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66D82DC786
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757950793; cv=none; b=FRwXATd4DW6rYnxtOtuQcJSHytU1zWTEBxrxgVOufQride/L+Xg1vhH0U0e4h1mQIJxjb3EZPkBznEu4Hx/e26bqiraaaCpzelNgj/r7oAqmQsykOY5YKMAjcRkfzn7vFlSIoxJiiIs2u7i6nB53vAq0LG3rtNSjo4Mlfuj7W2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757950793; c=relaxed/simple;
	bh=6iTEQpJ6aXIVNS0kWfKYlElB56JJJSfTcFk0jE+9XOg=;
	h=To:Subject:From:Message-Id:Date; b=falcqhSErYVYS8K5duJmfBDsIjVHAZiEDFns3aWuNarDR9ekPE/gnQ6qNiK2eWg8oUx3sgXZY+/k7lyhNomqe1qTOYf4XeLoM2VnMzDik3vhzT6lVnUFL+Y41HiSGHG579LN7/5u4EmazhOBMOFWi9Q/YJahBgm3B3p2Xa6hNd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwrcFvwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwrcFvwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757950793;
	bh=6iTEQpJ6aXIVNS0kWfKYlElB56JJJSfTcFk0jE+9XOg=;
	h=To:Subject:From:Date:From;
	b=dwrcFvwq6U/n/RarN+KzUjJi9+0FzOqR0AB4N9DgMTnCbFRjesjIWUsHLmZcg47jc
	 j8Gb7OO47nDBoZ3jFVRpP53c9ItKfUVHf3KcU026P6ACLTxzjdLY2ooL9Xc9OoU81c
	 VlT5IKqkT5SF8OZHFkIeCuNrA3zsKIbxyJH+f/UG9i/Ph8vZHdaL+minu2Zxv7LqrA
	 hHObe9z6/YhBcWS6fe9Mlr/1ayJPujMPV179WpUKZ8TWamumXC879G4kar2XE72S2n
	 UxmYvu0UkNW9mv5a37sROjBVh+F/BsF+y5EA5oxVAGAHgkPex2qxRVhUgnxrSREB8O
	 HupWScAkq2+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795079358.24222.3506547606195443297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5cfaa9c9ce1a37416604e1cbf335f3840a2ed0b0ad4b15555870a3e2e92079
Date: Mon, 15 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757950793
