Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D446B5
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780099414; cv=none; b=LWQFePxtb598ROIp6faE/MAhj5RDS6Ny6r2w8HrNEnkwzCpUEwjFK8KQifAS/P3ag4q/UgP5M75xe3b5QYHB6fl4WqXJbOWU5PSnTHlr4Hgv3IhWiabXoHAER31BuCaaIjhd5aPGjPlMyscy2ecFNo/2v2TGkhKMkgVRfKREr3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780099414; c=relaxed/simple;
	bh=Qbh34MkOwzf+d7wL8vjoccdquOwPkPhmlDtK+e/KLBo=;
	h=To:Subject:From:Message-Id:Date; b=GiwsMhXpfbYlzX1ybOqOUKmOK72w21NMq5UAnkiXplBuM/CJLEE71MP8nSaXOFxiaB+8od2/qjspeag6wuJcJxGzKgo5m0ShOXs0OLatzdBsvnobpJ1ISktzM4qBrhfEfH7N4XolNPsroK47NyJPefnOXIyTjjxv4EWLpXuhXM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWcqJoG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWcqJoG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780099413;
	bh=Qbh34MkOwzf+d7wL8vjoccdquOwPkPhmlDtK+e/KLBo=;
	h=To:Subject:From:Date:From;
	b=EWcqJoG8yxi112QL4TRdMWYmvErk7+HdfAVT5LV2QB/2LQfRLWJPROFQ1x1WXgHbc
	 lg7AriPi54OQTyZ04r2zJsJeUhPxU9KbQIWyACFnThkb21J7kYROOO1/zyHIY/kVUj
	 Oz6zJhr9bmVEjzkA6rRBz9a9ohgmV7cZGqeKf05kpiqUP8L8iYpWP6UwUdwND4oXhN
	 D70/TIrVozxxoTMxTYO2PAOZkdQY/1S7SflIjVNcwArC/F5Stnx76b42i1sUvSIrym
	 Gu3Bqa1QSdNoo/AJYaG39H0rj8cv0hnXdSnuxIIgwspMwkNacv9PB+t2S1rEkDEAy/
	 P+3mbXfrL1pJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79BCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009941370.23382.1152326184708721540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd4d7487721c19f8f096ddea5d65b52f1f4a88b63c1ff8c670d7abc36cc0b43
Date: Sat, 30 May 2026 00:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780099413
