Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F5719D060
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743982194; cv=none; b=j86NVedAsom4+B9dvBrhw3LYT1T+8m51K8ygnZYFAXF4jEVp+hQBZJW/u/vl/GSgtr7DwSeETl7Bg4xmjWV2dDTaIG4/J1yHxHHxftUHAaJTh5fVlLvKgbkVsQHMsqrzCt4nlKr305Ml1KOlZlLhQKxc/CGhXSOlmos4bQ9+aNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743982194; c=relaxed/simple;
	bh=vHPSn2AnholhtqpFDPxypsRA4nSGtXLJslKSyobxrRk=;
	h=To:Subject:From:Message-Id:Date; b=VHAPqi9/3XHw9tnYHbtpUFWtfZSjRonfK0GX3PaTIQE+e9LjRR0jT9wHHJo+IN8lpRFsb9Q5TcS+kejTUVRn8UakLfrhE573hGFpaWL4+8p7k1EB9CwysrpctkhjQ2IA/MJoRuppJyKrRFbQsIjn1oGsGrAc8LC0hJ7iYWTNTxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCfLbAms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCfLbAms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B222FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743982193;
	bh=vHPSn2AnholhtqpFDPxypsRA4nSGtXLJslKSyobxrRk=;
	h=To:Subject:From:Date:From;
	b=sCfLbAmsD3+JTSt3eKq9Hs00xfRIJAij51jUdxhtz44JrftNrYm0oH9WL4T3vLiTB
	 sko4eOozJ+FBi8wGY1ZqWWrtOesyvBN+yzVGyCVL/cseMD6wOHzgwmVcW5qwohlPRt
	 jYUE5hU+KBYEErxb1XfaZkEoKixmzw1ZFcjQ2umXvqOyYkq0H3+YlyPIJN0x9n3G6z
	 D2wt4Y0FrjCLxB/S+CTpqoNQ728fZKUPeTcFbmaOHFhaqxeVIrIlllJRUVSWRVCpDn
	 wWOPjRDo6Ntza+D3+jGKWUgR2GJ1R5KG5HZJZWVYLSEYR7gHmq8+sR2YmOKLsj94z5
	 xyYSFZZHfvkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99645C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398219358.26314.14411923757892519983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70732b665e7ee6f8c3158469c84eea43f8cab89fb69e988a0cec7e84db71ee4d
Date: Sun, 06 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743982193
