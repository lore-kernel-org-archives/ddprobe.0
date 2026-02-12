Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E42F214813
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770919494; cv=none; b=mDEgVxSVCDmz8r47KOS7uYFOlWmUR+1nc643lMpWAAZ5mGVeS4lMys5ylr1y+V0vzDpjYfuV3H0NIW0k/zBq2DOSgvQkZGen0Mjk1Bw1aEsAlaBziL3wilhe5JFRp5pkiy/1/gOvEp4cWrW+953UN9qFR2ZHzkcgB5+z++YTNfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770919494; c=relaxed/simple;
	bh=6jheija1OD+vu1fcowx5cSiWuSrdVrc24jYhELiwbxE=;
	h=To:Subject:From:Message-Id:Date; b=HlHUtH5TPMetq4NjhNTZw4lxCRvN+yIZHBY75yCI6JYuYBoHJJ8CWOLmG4rfjuPdBqMaAw6rt/uWeMFpsM0RCAZKPgsL04YYVTGOOIFbcNPHBlhK5SU3mym05Whf801a9TtgR6EY0IdXEj3OP9TrCsmvjd745d9g7GQSkJAMP2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dhopw90t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dhopw90t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EE4C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770919493;
	bh=6jheija1OD+vu1fcowx5cSiWuSrdVrc24jYhELiwbxE=;
	h=To:Subject:From:Date:From;
	b=Dhopw90t5KT/ba+2Vp3KhpQoLxbB7ZqmaNmr8DuCu89Fl7r2OBmrX0JIk9bAXBz4I
	 p0qFfMWH0mB0TO+4uUbTsQVwGpA/VoZ/3N7b1KfXvBFGpazEQikrds0e1ySVS0YRM4
	 0TGDhmxeYIEzL1sV6yXbW9PwNOgNCrNSR8jyTxdXHEqYJo1IWKIlDlkG+S1VPwTsgw
	 mCP4/tZRabaM43GJOzYzLzxc2MFJyc27Mc6lgnbqGPaexotZTjaeRvbhLYsj4oV7GH
	 NbwaYLEHcwdiwUX+Pk4h2bEA7IIGj1jn2a0m6QxmBHSuNoVUUv8BOzlQdIrGWmEnRd
	 RoflqJ8dzErpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C9EE36B2
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091949361.30476.14118995622565162296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08454d5347a98411a8768b3bc30546bef70e7e00b9203dbbb798a3d80e4f11b9
Date: Thu, 12 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770919493
