Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE24225AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720204523; cv=none; b=KGOeeE6RboNJo/5yTpKuPnrhe3BNU+AJyRiQMy0my/3xmEVyPt1nX/yqVHL3QrvaepK22ph6QUchn/Ch0E84Cwjrm8YN4oOj+siXnnGhyCJcITkm3eOpv+wywOG2ymdSVVllBtEAKhllZzYVi38dTlUQFuSJltrV71Jv9Lvogi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720204523; c=relaxed/simple;
	bh=fK3cXr7mgLrorM01nWdkQsDKGJuJILwaDvMTEIM+HHw=;
	h=To:Subject:From:Message-Id:Date; b=QYmSricFgvqc/RJHPuPobMVTXSQlU8bKPQppXywpwuvQo7jmARz/j0Q/o874dlE21lLDRkYPgKIVsM+BVgdG87l0DEFzUu7ewBxSoPeptShx/R7Tyrh1EAvq4xfss7V3aZVRK108oLZoOSfdFkucS3A0dBEkoyA31kJDUb384UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVw1VxZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVw1VxZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB4C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720204522;
	bh=fK3cXr7mgLrorM01nWdkQsDKGJuJILwaDvMTEIM+HHw=;
	h=To:Subject:From:Date:From;
	b=iVw1VxZkuUitV4lswbWo/6pn/phzIvnBI78usBeqG8eI+Al4DFueYHBakQ7AcD3er
	 6l6rUEY4U4n6ZazaCS52Ur/v1XWMeG9hY9D95IcaUHHAOl1O7K4WhmnPa06s8/9ptV
	 iBs0IYFCgkkREtfZu8pj5MfZYqTc38M8ClZtXfsITQuGxpRfcpO12bJVqcAN/gc5FS
	 EK+web/JJvL0949I5k8PG/qNXczY8THr+MAwC1AnpLnk75HU7JAPWUWQTbIChr8kmT
	 o6FmUMnwBJbuxA50N4Tt28SvmqQPE38DRCk9EX2rrbJcw1ABQcLH8Ee9WGRC/CorVg
	 gCnx5dG6VWRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7F8C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020452276.15035.14597432311353856160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afd2b0e0a9aff4c759eab3eaefb161b4a9d6f30f8de428654723b02b59f9693
Date: Fri, 05 Jul 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720204522
