Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DB81A2C25
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761368394; cv=none; b=jA326clQbao17KaiPri8wSfZk3iolvtCfTv+lnO3LzsXJmN42zSXEFC619iElGRO1Hw1QzUdjFcy6GmIpgbCJSKwYCiQQ/0h/eIWc36PHdLMWqWCWb3Q3ijh+ohgkWKko0mPkOEsu1RAtR62GcglR8xS4PzSiVBErnZDZyU1LJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761368394; c=relaxed/simple;
	bh=AkYCVGwrrm2VBmT70bcBNubC6tYuSTN6x2dLFjdfmOc=;
	h=To:Subject:From:Message-Id:Date; b=IjBsQsd3xmCAKmZlg54iK/yVI2Isbr8Xk86IP6eyhjZIGrHnepSIpPBu4t8awDjZm+m5Bl8aJI6spgpUdyYubm9rG1ks6q3QTqHzZceEw1mDond+VHRGvWUEAvMgwuzSlfoZoaSyaRBaQbF1w4zLp1epBOdLn3WDs+EJ4EGcjUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKIRNeau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKIRNeau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C46C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761368393;
	bh=AkYCVGwrrm2VBmT70bcBNubC6tYuSTN6x2dLFjdfmOc=;
	h=To:Subject:From:Date:From;
	b=jKIRNeautg56/Tvta0g7vv75Obht9X5t0rbHgkWzq7CUzJL2gCA+84xjrwnIaXhEt
	 7BDBIlEDxjhkrccBsUZK50hd+t1KZdHSLi2qeadx0RpFOgoVYLVdEESloJoX+ChjAL
	 1jqT2pHvjCZY9nUKlwHDSH1ClsXHyRt6Ix3kY4YUTyfo9Uh5PHMjl+mvylDD22aipi
	 EytmZ/4gEodYxnzam8liAYZn6bM5qzaL6BmhaBg279ksegcTb3r1+lJmaITsRVn2lk
	 NFtzMs9uaNBi6xr/CNRlpyZPVfPI7t1wH6w2ip8dAYWFDQO3Q5OtrSkrgDUwnncFM5
	 fA0/Vqq7qjpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F26CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136839357.24439.9916599047282068028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0596b80e030b0b830cf7dc7751c08fbfff48dd205b9d464ee69aef19c434bdeb
Date: Sat, 25 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761368393
