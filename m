Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53931184E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722312354; cv=none; b=mH76U2CRhLO+an5N8faqeDyPlWxvQbbst7i8JoGqebfK2KMiAXEL50mk15L/MsLiVxcdmqhUYjnv3nD0lwvRpymgETJp/juNWZ4dGrpU07UAiMzSMrfK3/SVdUBNIG2yFcbrf29rQAmiBMHrIvQT7HqBYwtnpSd6cvk+4ZUf2Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722312354; c=relaxed/simple;
	bh=6Zt4pstRvk3bjmetAsui3ySb5cEEWh7zxHqbvaTqYLM=;
	h=To:Subject:From:Message-Id:Date; b=ZmonjTGIEk221zViiblZrQwwHWZteFgH5qNDWvFAdeBM6QJ6kTakbWsJYAlo3h731M/BLm4qdfB37aispb2frhzzc17+2w+tzTQlfHkzW7S87h/JEHMYRTo51X5pN+1f5f4DRhfCgoK9j3gpnQkY3mcxJSLOvNydmKRofAz7qkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB+vqveY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB+vqveY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9124C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722312353;
	bh=6Zt4pstRvk3bjmetAsui3ySb5cEEWh7zxHqbvaTqYLM=;
	h=To:Subject:From:Date:From;
	b=LB+vqveYehl6Szhn8U5LKWbzZjkL5bUwgZJ2Ci7SgvjXNdTBq7I5/GJom9TVL/sYA
	 YfKzVSCw2mya7UYJyBO6+zHFXEas327VKdS+nQwEC2MrZk6lBBXnCMo810G3e8lvGr
	 uX2bL2nPJKmGqL+Ib8t3WSmJiqOE8GTswMJjmZYBl+Es7sxQl3yqqRJfB/8TTrY/PX
	 tER50g3nGxj986kdp1fnEo7Q7yndmYGFTfVqpUgVfSt0fZlegjTCq0aksUHWgK5P01
	 ltxUAYxcACm02FbQoPa8g3CEU9VVmszu41oNK/OEl80+llFDJvXvOnZQKE80ZGmGlQ
	 mWyDrKyuDYWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11A3C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172231235361.5849.5164243729304301883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733de266429994888f23c6fcefc5ddb0be5ecf59ac79bc578bc80db6f8c7a881
Date: Tue, 30 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722312353
