Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF4313E30
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779229834; cv=none; b=Y6mPbrrxFqAyEvyL211WxMT+HVn3ilNJL7z6dDqOEPZuepS/QPf2k8GT2Fd/xBgBt7sE6Lg9Iv3GGw26AGdXChaHX3dIcPbfz9MVh4xyU89uOMsQ1vadkhd681razQo3D44L0eAptJyC8phxYWsagbNsRMdz+HkMSRl0goYZIig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779229834; c=relaxed/simple;
	bh=Smya4OZdHfiddb4aDxOrX423dnSEicFXoYp/SQIm5Yg=;
	h=To:Subject:From:Message-Id:Date; b=bhjMrYG5eba+Gec0BZvAY++mdHMRJmMh2wVjRRHRTto3N8G0BD1/ETMIbHPv45qXeSbdoMqZkSZpXbJ7naEk1U5MplsNl7XHnYhdM79OLQ8DAicYsJMmfayutb27GOIpldUxbPEU4EG5OVwzkkkxoxDSeshc3e0/+TJg4aNP4uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7KILohi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7KILohi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43F5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779229833;
	bh=Smya4OZdHfiddb4aDxOrX423dnSEicFXoYp/SQIm5Yg=;
	h=To:Subject:From:Date:From;
	b=I7KILohi92QJynwVhCRQbbzUinydcszMqtIncEKJk0Z8FWiJKDKq+mYoOYDjSq4BJ
	 x8WUMEogXshT51WojsoKgj7lxnnxKVCU9Qam/KYy/ANfiAjfd7Fw/DsbJ0j98Ueplt
	 DrRwAUOobbov90a5WYffiuua+dohJWH5y8IXZRNHMsBd2WN/yvrg2WNjMvTllP394v
	 OWmPki7dIrjsvI56XNtn9DqlBP/9dyccfHvJJhZeUAzEySHmCDHX8YtXK2O1IMgs4s
	 RDAjhGZXYhaDJPwOvrz7xkYb8Cla6CxDJx+cwaCtnPhilVNT7DBTxbxzTvTmfu1Wjc
	 KF2lBggJLF+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8FCD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922983368.8666.12631125633087830352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f441ba26321ffbb4b9a939df6770507939e0e6e0f6abc9f4785749bef3334a
Date: Tue, 19 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779229833
