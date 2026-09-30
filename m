Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6295121FF25
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790732434; cv=none; b=MEe7/WYcTEkflBd9L/59FyWe9iWGtg84jzzSJK6ItgOpfgUec3rwYp3x5+o8zrMJd7gEWfcZeTqs4YmuKOkmsIfWk+BtUhfX6fo/yomd6p/7MURBfuLdwWT0MNXVC32cuXdy0vFNcA9m/A26/v8bHSza+46AzvBo0RM0WRh8KGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790732434; c=relaxed/simple;
	bh=Cc4ZuDzJFEe0e6aiy7lnraX07C6eROXtagK+ksS/eso=;
	h=To:Subject:From:Message-Id:Date; b=oiTf8QJV16tgoxHsDCc3swApjJYlhJAyom8/caO5kjNOUROKzs2q3gsXFU0N4nv4Pz6Ia0sO9nUBi7tdbYBTFhHPwoB6fYDFoyuiq0zkWJcw0A3GuPmyO2bft2NTnkbMX/dxEBmhkpzQdhIV+7FUN7gBraT5efOgf+aUtGGLdXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STZcVKYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STZcVKYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF29C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790732433;
	bh=Cc4ZuDzJFEe0e6aiy7lnraX07C6eROXtagK+ksS/eso=;
	h=To:Subject:From:Date:From;
	b=STZcVKYgA0PTAVCgBgA1xpltiNEOq4SZBJl+g8mozROjKZ1HR50Dnp3+YgRVEfuMG
	 VBpQDYa2DEhZR8Kp+i4oROL4avNvQieDGutg0tAfKSUS0s2sVMWs0R3BMeV0f8vLDn
	 +f3nrk2NtcvO7W/QwNM5ym60yfUFgGIrwLvTw7b12WpFvaUMBUsokF/br/vRdmMIze
	 e9AZMnyBXVYpbTNziFjZ9aKzXDl4gh0q57endNEOva8uZim4usE9Qtq6yxv3NNG1kC
	 d/PDW1Ychab57hGiGVE7wqDfoa+CyMFdNcSZZ+zBUKoB1/J89QoW4mrf5m4FxNzmQs
	 Er/gt+ozm9cRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA917CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073243369.15802.5998906687346534481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b964e915343961010f1ccdd1ca293527671a5e039ae66fa1d1947a6a4c80f960
Date: Wed, 30 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790732433
