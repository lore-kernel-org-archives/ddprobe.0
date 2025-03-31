Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357871DB13A
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743418194; cv=none; b=fEGp+n5tgLVToeCNXbO00iKjpVQ6EkDqjdWokPPE82d8dlprtYjgCHu4azXS7+JcIQse1XO0/JjaK7q0b4zHfBEjbqkNmZ6kXdjxkLQ42zG7p67VxZuirNhoTAWy1FUxnx2zlJ84ulHmOxmgq942KDPb4hooXTEca7yweCNF3f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743418194; c=relaxed/simple;
	bh=l1Ax/g2OwQAEoMeOu8TarnNWiKObkHjknVl1aGxW+Vo=;
	h=To:Subject:From:Message-Id:Date; b=An6Uen0EUAToqtsoFLkOfmDTWLXFkbqOXaWR36ojXWp46CiRzaQq4EJGOYYboM18vRMM387Xrf+IMTxjD0vnGAG3tzGnGnTo1PKeinepW3no1w5umQ+JneUKxesY0fSPuCxFxbm1pJPy0yPZDuJNoBez0pZ+KA2xQPZ4bSi19b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P09NEvXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P09NEvXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E42C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743418193;
	bh=l1Ax/g2OwQAEoMeOu8TarnNWiKObkHjknVl1aGxW+Vo=;
	h=To:Subject:From:Date:From;
	b=P09NEvXrV2faaaE7ANcEfbr/aQ4B2Lg3y0K06YV71wLnLRAGz41AJCNyqs1lVJ0/L
	 nbIeBixnZYfJwedwlWxtugkKccabYIYxToiV2KfRMzpX56qyY36o4ebY5cbr1ZvC/q
	 V+PbuoL4KrVtGyYyo0HteG+iPYOycTuX7Gsv0B5NVmBa5yenS0APNmU/Qqa7Aj5W52
	 FKPThiIv9h67A9FazCqWI3gM91usrrgxk1Lj2uotVmVMsKJ68F2zIEX5FlPR1lb/gf
	 UvVU7Sg7OT4ZB5krY9gHVbcDDsrvd40h4UfTiwPpQCrHDAUuCnvhirwW9Hp2S5W7QH
	 ymSgJWE+JLYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB8C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341819358.29921.4449082814364534698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64941bf3dd3d40ac4132ac4dc9544d062c00501d0f0b07c19c3c9dde5ffe7d40
Date: Mon, 31 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743418193
