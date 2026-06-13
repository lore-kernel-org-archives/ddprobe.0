Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53986348860
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781391394; cv=none; b=dMfYpKsxd1GLo3fiJ3X28BZguvkTW/4bvKo+2cGNcf9urBearCY4i0Y4tQazCqHtda77LNplesUX53XqXSssKnSwMwTOwQkXgFVcQTTPfJWRhKsmX5qa3y61u1P7R67eX4fxvLj9nWqQlztJgBeLA8DYXXUPsMU16ji3yIXtEAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781391394; c=relaxed/simple;
	bh=vny7RVCY8z/b7oW3atWhDf6yb54RFoB9yMvH4zZTqkU=;
	h=To:Subject:From:Message-Id:Date; b=i6C54UU8pgw0Lv/onG4HUPBYruTo9h791EWYa7hgs04TbHxVMTCbvta0hlCQcMvs+gMy6xtk3uUAgqws2FTPQuB7sTHUgaDUWJThu9HGpUIHcamwDErFBiHDc22ugRiDYSAkfQF7lkXv5Cjxe88fHT1+80AdyGw3eCc6q6LYVdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbQcTrvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbQcTrvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD5BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781391393;
	bh=vny7RVCY8z/b7oW3atWhDf6yb54RFoB9yMvH4zZTqkU=;
	h=To:Subject:From:Date:From;
	b=QbQcTrvTUkQIOtg4AtS6D2k7pUeY0GMBySJCaBpWgmsJBzdSCk4zsyn51zzk+mfmW
	 CbQ0dCSBZao7QPfWozckbVPTjSfOZWkLPZzLf8H4q71/XgYiJNH4ebHFMcvSkJw6Bu
	 xb8CMl1QSgBZjwXbtfqpI70eMAo5N517kWYnodvSWyydP8sMZ9b+55P1yA3IO82F38
	 igfo4wHTJLSfHJQvh0kjav9895kCOiyIUyihPn+lmUT2sLXB55RwgTa6XhyjQB0k19
	 REh5pzXT1ThV7IYOLLNh9ZilsN2xt8g2oK5FM538m3C6q4RINaMXlh1AnPGuPga8gv
	 hzjwK20sdex5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A657ACD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139139367.15190.12052217573907371054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30e049d51fadb89cad7f2656e0ab2a5832bba33f07d81e67a411a73b49a9b79
Date: Sat, 13 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781391393
