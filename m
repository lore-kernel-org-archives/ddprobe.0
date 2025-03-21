Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D502184F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742533194; cv=none; b=HxecMongnQe4k5Hc444zMQ2Hrjbg2QXb0hQNtw4A9SWFvq6sK8en9ZpSuviUBbCo31Wb7pQrbDIs9GqNT3+ZGO1IsdTlGlNiunFD0xKiVJeL/IDqYDhQHx9ecWhLdxDIoIKe8sLKMJnCTKHp+7zDfWmUv2Zf2KmBDxpPC3GjVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742533194; c=relaxed/simple;
	bh=Qwy5MAYiak6I5NYDcj0PI9C+opioclQAubSxzuhcvns=;
	h=To:Subject:From:Message-Id:Date; b=psWWNrvgStl0+v0BWgSepM9mmuSUogO3DuVOqYhbSBuROym+nompBAaMd/OhERaCKpiTXcVyQrNVvq9sGdzqrA65qJxmPuogVmVAKtLlTLUSQKh4i+eYVaWfP+/4QprnVMyrgYh20t96QQ8Uxi8u1JQQcKlatMnnQVSrbY3EiBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1OO9g0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1OO9g0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B067DC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742533193;
	bh=Qwy5MAYiak6I5NYDcj0PI9C+opioclQAubSxzuhcvns=;
	h=To:Subject:From:Date:From;
	b=r1OO9g0DxVcuKXkK7zPjTKkzupe+yypboTkcpLfHgnEabnjrGgfSgrBeE03hLc2aR
	 CvSE7m78uWIMd763NLEA0xdO+aOtmJjDlMo6sFVLaLAVGlazxK+iFWa1Ki/levSUnU
	 gRuFudGa4KksY4qGUNMyr+F7YH775bXgBJQBAD10NxsB35DEshzhHlY+M42BBWOt8C
	 dFGfCijras1LK1oXv/C7IMm/3L0EnwEkMsWLDSnd9N8bGc1myzF3wmKadysIDx6npu
	 cWEl+LG6ryK1dDSrZSN1zRMwZXmGirUY5njBI46Iw6zw90VNgJHYym6j5fZ5Asmr2Y
	 goehBSWuMTbxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E8C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253319361.14210.14859101463331046394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2103e88b8e302665b0c9c06070a59c2141ece14edc3b903e709fb9b12d4c126
Date: Fri, 21 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742533193
