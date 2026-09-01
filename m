Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A63390991
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788256834; cv=none; b=extxSEueWs2pANRgEXunlOBrdDtmqPvDtufZDevzhQPVimRc6vQaTgOju0lpM275GX2C1zc+wQbzDLXsoYGT1RQZRfY1T/0v3T4UWFWytAL7zGkXdvyo7u2SpgvYvZZYptSJTWwbtbVVeAnQmWZsZ6PzcTWLk0OtFVmoKW7expU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788256834; c=relaxed/simple;
	bh=8ImRRYcU4Gh8hpJfkusiq7eaPxWoJBJKplFIR8JdDSQ=;
	h=To:Subject:From:Message-Id:Date; b=J4tboSfQ1dsCyRSkI/DX4kajOwAl2BG9y8NE1G8KbjeRIOHZj9Z6M79V5/Xq5nxVV94zZncmOcoAu7DTRoGg9YfyOHPzlPuALXHoVK8Wtd6sTEXd9wJWDjlWZ1Nc5KJGkcZssLhDHOfv/9e3fuQXkKq1Lb04bfvjN+AlafN0dFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O75XjOQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O75XjOQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6D1C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788256833;
	bh=8ImRRYcU4Gh8hpJfkusiq7eaPxWoJBJKplFIR8JdDSQ=;
	h=To:Subject:From:Date:From;
	b=O75XjOQbTxhRYFJcPLDUnC7942IzPbPhmnDQmn7ICScpMMzXd2fD1Y6hRe6v2gubB
	 i+iEIC62j0fvSMSV6Nhv66ucM4Y9HINJy3P+hhjNi7cc/HjqonKDao3JFQYioEY/7i
	 IKENuruTyUi10qbKEWja8ImoO08jKJh9LoLsceVQcHarzbH6Cl7HxELyUM70PX25B3
	 LTJox590jrbXRp2d02uF/R2hXywEB4oo8VrY1wCxFuK7dz5V/dAbSxBIzIFrk6o7GT
	 ebOXb4ft0DJzrniJbkhnvdBKJeeZJ/glXeg/GB5Gywx35sFQjbSCW0jnJpBJgR479r
	 nY0QRqmtgwO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB3CC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825683368.6563.14738804983995845681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fb8ff02f02eb111602873e84364847706430dcf3aeb7ba1ccb623981b64391
Date: Tue, 01 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788256833
