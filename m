Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16C51DE3DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769315634; cv=none; b=JG6XcPAMAF3D9kyiJRPh+FeOiifzD0hqG/GtRUPgdHEGNcdZouMERUDCxH3DGF15Z/Uhd4e7CGFe8acffb8cXqxE8oga92il9lqo144SMHomm8zGGKejUv+WD5aZ7sYUE150+PKkXMNeeD360ou6LfMc7TqHW/nE7nA2mEaMooM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769315634; c=relaxed/simple;
	bh=u9403uUsZRmTO0XrESSDIr6VQpK73QfpQcM/yk9IIuo=;
	h=To:Subject:From:Message-Id:Date; b=GS/IQ3+Fil1UyamZSaiIA1MiU04hyO9JWWDCepwsQr7aObUOXBUcMrVvDhpIb3amZz7/F03jpqsR22ICPeb/VUgkDVWCQxDBLHqB25HAN8Dd7DKOAciYqRJ1cOioMd1rNemeJce7kNU7f10mNqGTnRNiGJVKSntXbd2+Oi/kwY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUf0YoZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUf0YoZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD0FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769315633;
	bh=u9403uUsZRmTO0XrESSDIr6VQpK73QfpQcM/yk9IIuo=;
	h=To:Subject:From:Date:From;
	b=BUf0YoZXYfYLm6a2VQ0JBRakxXopWjZ+eGHx3/RwNqew8WIMaewWR/Do+Py1MCeeY
	 qwHyPoEiPw1oXLuV5TW5rahxMlETyccjvcHvYZhzex+bVRQXvenK9sVKITmSSrO/4e
	 2iGzZWDe4tHMkibEB/1JBRWu45dEoB3aaim4r8FJW7pJWEvcx0nckkP//G/zbZtypt
	 2wXvQwKU6/bg6K2awQoaXp+nD25IoI0gPAtR/0YoDByt21xf1X1XXVYNtO7/tg7hPM
	 iclsewzeI067ba79Ek4bEVpvdke8nxsf7fIJDO6vblO4OlJn92Sj+oJ8PwruU66jdS
	 g7SEBM70u5QPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053BE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931563358.3600.4413115688943635807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0e4e741654f613462bfcc2d6e1360e008a51f1917decddfa348bde5d820125
Date: Sun, 25 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769315633
