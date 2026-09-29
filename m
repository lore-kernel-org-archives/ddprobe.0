Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA973DA7FB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790712634; cv=none; b=stUT5MsO5t26sZaFblQNrVuxJ4nMnzLgyEsjQdqxIC4NnBhnhEuTrU2E5AM6MhbAk71/hA3pwp/v53kRetfgSgmwjXG2KU18NCThcFmF7pyH+B7JkRRfu3G6jfuZj3EPUbqWKS3xf/+WPW2m2K7gmYmVyaQJDGyr9yoSa7qHhsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790712634; c=relaxed/simple;
	bh=x927uXgOmOM+lkz6JH/EnNdM11mDFt1+WoGwFazRlOQ=;
	h=To:Subject:From:Message-Id:Date; b=mV62JiXHRLIpTfcx6v3rSL9B85z0C5prqkUki+e9WFzpZdIEQx1mlSCdw2qsNZFoljmORa+YZMyPwM2Q+KPDg1gBHZbvBTO8Tm9roSoHJ0PmlO6Ddo8mxzCC2OWt50q7obBmD6kZ2ZcFHbDlw9WGfbqTQOeUEd1h5yMUc26u/kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jszWdH+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jszWdH+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4487C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790712633;
	bh=x927uXgOmOM+lkz6JH/EnNdM11mDFt1+WoGwFazRlOQ=;
	h=To:Subject:From:Date:From;
	b=jszWdH+6jNaGV4uz92YjtimmHud8IWDYQju/VebyiPL64qflKJ4fg5TRtAWRd5bnU
	 hjwUnEg48pRN7C1s4jmyVLTwTgjdHWa3OtgGcmAvJDHzxdvg5BWj85pdYHLRUKGUYY
	 fKUYGymV/lQJWhs8kK7vPHt65zBs9C33i8HztlZGPQscdZnj55pCnoIzrjWmablu//
	 fQo7RBCUjEVUAVW3gLVKKNutVrhC/ReMEqQQV0vCespLtcXTDME7+W6ZH6Ngs/K9wA
	 dgYaYkr8JrnK9mJLv4X31rx0FWuAuZEPtK/FuMhHIPsqe6LEIz6qpDDeTzh8UB4ToD
	 eP3oDsr069jtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47ECA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071263368.2443.16065160543121903062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d686e41fa6fd0861da1772e70b2915bbe825f0cc5655943bf30fa58df1e4cd55
Date: Tue, 29 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790712633
