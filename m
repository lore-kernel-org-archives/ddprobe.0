Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C50A32FA3C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764244374; cv=none; b=JxAmJef871Wf0cb9JipGDgeo1lfs9w//7LoIvNi4kFsrtxNjAY1XntK0fMhk7uZ42lWurx+Ki8SJH4w/ajDEsGF7cqPz8vECY+JNCEQc9QPngZDuX2XY0BJCXw14P9RIW9JG3eiEW9Gxua2XbV7y9DDQq2jaop4XnCONYxeHPOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764244374; c=relaxed/simple;
	bh=LIs4OkZc9h8L7Z8NPe2MrO4zLTiuDoP8ARbLSJc7M4M=;
	h=To:Subject:From:Message-Id:Date; b=j00+sapQsqf6XUm62/xkHfT6P4ncdY93cXD9QJ6WSf8iDm9PGxWBz3BemhzxOMSQLSI2WOBorvXP3jHegGJKyDxKpTh181EtUWfXXm1BwXaXZq76gxTGGrrnnAz3Bn2jYm5BctM7YrhAWgMHeg5IKAPIOHKWIVKEovGAcWJ3Z1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz6QM1hI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz6QM1hI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B260CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764244373;
	bh=LIs4OkZc9h8L7Z8NPe2MrO4zLTiuDoP8ARbLSJc7M4M=;
	h=To:Subject:From:Date:From;
	b=Qz6QM1hI9NkqWFftYDQsodhLySSkL6FRluWOjui3KHdkOs0SMqT2aHea/6YsyNj6d
	 CJmGBC1dZFuQY+YF7EMKbocoTqWjR3KznyhsdJygVD5U036InJ8LA6/fmAcgB7sLMx
	 OOYo1kak504tmtsmMc+oDVZFSoZI7DHea8h9/NP3jm6WCwONm0t+zPC7mJfQ/pzIKk
	 HlxaZfAJ3xMv4P8J5fegVOaongFqdeALnUy38eOzO1+oL61kDN0Ycsgoit+v/uRif2
	 TT25RSOeaJTgBUqZJySopLbiBTljzCx0PjsSTTquhEqbeZHN/IlVgAB0588pMeyjTB
	 EXPTGC0tpOPfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9609ED11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424437360.17084.6760471150600247317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3d0094b30a5bbe5906f02d91b69ae123a118b76ef50bf179bf7ff3bb461cbf
Date: Thu, 27 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764244373
