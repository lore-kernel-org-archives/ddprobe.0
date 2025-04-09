Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A96125A2CD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744187994; cv=none; b=gqhYjiH8G6jIld6JCqIZFf0+QZTh3VkzjN6saJZDf+j7Fyh8gb39BG6vp6LnEX5gyTQEa/bFBkAH7UMGiwyFD2M77quGVv4LEVRi+izTfIQl0/tWauSeqHwLWH6OJaCnIQBU6OPW4gzw9X2uzhs/meC+9vxthBybn6cS+QnpyC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744187994; c=relaxed/simple;
	bh=k8bwwVUEfQJRKLkywvcMeyZnXLtYsDiJpayJNFZFBRI=;
	h=To:Subject:From:Message-Id:Date; b=D5D8Q890VbNHRE/LndlsQbsVtcS+16cKRUPqODfk5LNQZLPkzXgOnZt4sQspfUHEKFqbPXspgtY1mQsW7Ngm28sMaZZLNfeXu0IijZoi1f6p9DmT2YHMRyR3d2VenR1k16dwq9TPPPtpouDmhunAbaM6ce2nWEfVSs5ciRaPtF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOAZpTFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOAZpTFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C648C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744187993;
	bh=k8bwwVUEfQJRKLkywvcMeyZnXLtYsDiJpayJNFZFBRI=;
	h=To:Subject:From:Date:From;
	b=FOAZpTFMaAtpdyc1EQxdBsLs7/f4LysJTVwWOjEVfVgn35J4jO5wghED5PxY/VWYL
	 pRdOwoq45cgzTP9POc/s4hOm/gpTlYoiTdFygrCdRc6cIx4igHol66PqEsn+wiNQ7f
	 VT7DNkBP7uT8NahKQ8ayYX0T7bcxGofeJbiSJdhfb6vXYnUOD0k+0CWEaajR85ku+J
	 boKZnNGp6osZxW5IDhFOBRDGYiLcBsz6Wi726ePOrJMnGuH8XVXpJGcYoDn4uTjeVi
	 n48X2P0w/Bxs2d69reI67TmAJdgqdlvf3hoFWV82fJKSbMoMIuL5pH9isZ4gcRM994
	 f+4j9sP3dLWow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C0C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418799359.17769.8531844210629658872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a699db147adf87c274d19189d0175304375859145fb708df3289a9025ebca147
Date: Wed, 09 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744187993
