Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C132032D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778461834; cv=none; b=JLiklSOC9bd0xHWQQ2n6lAeDMFPp+jjR9Fw4oIvQsc7xKa2h8dyM9WGkTnrihCUpcVynArBno6xhCRKEtsXiePDxCvy4gukHf2xkGj99QYMQmxgCOllYzH1TXjn5suVvgSstoRABqIoZaITnbr8XPWV4jAHfUwArfTGEjC5nnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778461834; c=relaxed/simple;
	bh=1mLl6R2kQ3tMGwyeca0geeY7luXACJUaYVylFBXIAW8=;
	h=To:Subject:From:Message-Id:Date; b=Wk1ntveVh+VLm/BM4aVlx6Zj+JU6589NJZZ8NixZjaZOB1/5uFNVS9cgjS7+IjZT/UgF9cUc8Qqs1MQwF1jTLTgBvU3Qxs+exEGnpJcVj6rnaQMWV1fsmQPAU5ahq8g4GvbVDiqinY29aFs213IbNhGuDlnPudTAr9aT3c+ecuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ+zbNTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ+zbNTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF954C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778461833;
	bh=1mLl6R2kQ3tMGwyeca0geeY7luXACJUaYVylFBXIAW8=;
	h=To:Subject:From:Date:From;
	b=KJ+zbNTVlXQuGHyAekeLNb7+PS1JJSYVHE7LIxYO7BShI5DJtCa/xsBwTs3ZhdnGp
	 hC0WCA7YpOYRTe7ACbNBVrtjbOlcZ76oHzY4BtmCTD85JdLoqSuvCx5tpo0PMbLUVr
	 xaEeIt1oeJclV5EIXeUiDgzoD1LfjHIA3T1dCksh78vX47aZpnI2rnG6RiFP54ZkVL
	 lgJfw/FO6+zFXy59n+rkeJWJn7L6BxDZa0h11FsiWhJIDgAqVGvIg02mTO/WokWIm/
	 jmX7+LgRygYmiR1gSEX/FvY4zS0A9Fz6zqCl9BIWN6pQoIUeK9MQm+5CV1PicmZkcA
	 wXGdjsEbulfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E2CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846183369.22405.17280925332043410763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5375c805cab742a3c6cdee30b379ba7dd0be44ad7802e617eca3b970219409ee
Date: Mon, 11 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778461833
