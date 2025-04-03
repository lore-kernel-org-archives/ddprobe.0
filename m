Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7418DB20
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743662394; cv=none; b=f1B2OgSyr+OAkO8+zkIS2KbME5T1VfqzNTu66w8aD9mhsuYTpoLCh/5a9PGoq01KOJSkH47DmISc2xzAwsIQCDkHy0moJjD1Kx/83iWHWYVtye4tR6v7JRCMSzoFYRCeYASprGG4eEFIwVIIfrsYOELyEVAV3F3RLMBY6ZLN2xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743662394; c=relaxed/simple;
	bh=HEckbfVb+fDlnx9xDzhtnvY7VB057i9U2fY+Derh/9k=;
	h=To:Subject:From:Message-Id:Date; b=orBoP8LUV7267+hkghMYROFCicZhbeUJ0a8wX4NRakvkClSq/0YdrVUj7LDtwJhNCM6ZTEJHrwKPTvARTfp5odECQwIPYlmhUF3F3tgQLfKVM4ban7nCOM3ou8j2hD5vSozMK1oBQpZ323YwYvcGM0HJF4npea+Nr7ei/xgQ7SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7Z98/7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7Z98/7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743662393;
	bh=HEckbfVb+fDlnx9xDzhtnvY7VB057i9U2fY+Derh/9k=;
	h=To:Subject:From:Date:From;
	b=I7Z98/7pvFQ0Yg/FDw+8gmf0d9kFvdK2p1kQGWMGzWJCGrq3RNJcresjvAP5oBRCv
	 1/K4d/HRVvp5VaNsR4hFvup7bDXiwGUKZizmjKtrghZ6e8n3ZLOppGNNxiieP4UcxK
	 b+WHtUVubp3MCVxzKhE/tHyjhGrfeUIhpK81W5WSoRvxPxdl1l2pYVwyA135JNZmJP
	 PjVELX9cYjnthrDhp3tfs2vuiWiERtegnayXkcwlF0xc2gxUauCSBKYexqi7F9LhCO
	 QcHDQxvlsEjz3+BbL2v6rvvxoBw2tlvNtxUnVenaVv+N9q+KWCNE6kfeHfFS+fNhZU
	 Wyg4Z4BGC9h0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBBC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366239357.24372.17311788517090770448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2d2290265b35c2a8a67ca572def5a14fe41ba9398f0c60aa826b53e21c02a2
Date: Thu, 03 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743662393
