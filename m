Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1438023A9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750220394; cv=none; b=ruz7fFLfshPO5FQRhRbjfdRs5TAjuecqlQtA3IGdcA+wpl7JklDG79k27esO+MXe7fBhZGIa5B9pQINxmN8VtdDRiDUHey0Tas6tKHPOhVrbpSPGuavzvRHVEBv+HyIrbe4P1Sx6UO5HyO3bebyidBNXrpr4sV0W3EcA64GiUgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750220394; c=relaxed/simple;
	bh=s2v9brnIsHmAhITLA/tROiEI7pnrSAC8wtaRWENFHaI=;
	h=To:Subject:From:Message-Id:Date; b=uITkN8Q4fv02BLoWsjhG5oYDDLypgB+vInNPETo/Ma5Ov8k1uabJloVuwjJxWrUro+LivsYznIwR3eOgV4cq/7m3EnbQo/Z5zVNhrb78zsoCk74BOqmL+47UthGuz0D+te+Pf6F8UCu+lTPIou/tJquJJCF9+B8uvT4baOn9RUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ8MIXrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ8MIXrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9164C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750220393;
	bh=s2v9brnIsHmAhITLA/tROiEI7pnrSAC8wtaRWENFHaI=;
	h=To:Subject:From:Date:From;
	b=FJ8MIXrbYxwfupD4utud3aH/WQpew9/RiG2ycmKdIz//pLc2om8njNB2CG3uYa7OY
	 w4Ne3HW4utjqsY+H/IWm5E8cbsvQlj8xdQ7DtwLiUsHIfh1Bd8/vTy6Jm466Y1y8sN
	 JcRUBNae0KRSvKdlbt+iAgzh5PbJ1r3vtlp8JRk6yu3pyLGTNFbU7ebVoeaLceZfXT
	 IrVhP+yhWoAnJRqwdwYOJFAnnujkwtdKNbrpPRndnGkw0QzoaJJPkNHyxK/bZVE5+9
	 2dbJ3qbebJxeZz79t/SnGd0I9MSdyVJ8GNlUn5YJa6RlQnO5W9t+63UiFTsbjw84lw
	 4A83pNNkliqPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90318C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022039358.25821.11812162362349995354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1c13965161363821cee6999b966ff1fe170ed301e8cca35092b36cd10d8d61
Date: Wed, 18 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750220393
