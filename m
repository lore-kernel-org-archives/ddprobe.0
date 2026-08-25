Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613EF14A619
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787619634; cv=none; b=MacIaK6ah0B/6yxUqLVaoBMitHA6bmB5aG/hbeJ0ES8R//t1emHe49p2jf+0apnnJgJBniBJy8Z4j1UsqNTKhum0ICCtNH4zojZr473d+8t2LxSeTdZN27lhetOfD2pIDBtn8gSdakpcn4+lj+uVpdTcniqu84HIFsZljYmQsxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787619634; c=relaxed/simple;
	bh=//KuV4C+ix3booYvUnBJBfxiHQETaP3IycLxn0EAikA=;
	h=To:Subject:From:Message-Id:Date; b=BORdMnfweJ4L94F32DhyQRaDCk9h08dlPipDZejA5JVqzUcuT01fDcEz4SnU4dxXm8WUQUkxMwuYtGui99ARlTNYiR5n5HORSTWBAZMBejRm+a/IO353mKZyoG9oqea4yB5ITEOiTBSevjTJVSxlQeqkESQhehudwknH68R2EfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SobmR4eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SobmR4eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D3FC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787619633;
	bh=//KuV4C+ix3booYvUnBJBfxiHQETaP3IycLxn0EAikA=;
	h=To:Subject:From:Date:From;
	b=SobmR4eTtwVt6gFxMGfrfY0ftGSRnxlYPVhDnRicNSIYmxlO7qst45uaP5ZpSoiFl
	 yTs2P1lhFQr6kAf0xGVE/dw3uUFJMww8P8GaOSQSHClC0t7p1BWEwH6hH9sPlggGtr
	 E54+PVuF36uwf81tepQjL7PMu2Cqe2FaLtVQStWhBWbeGO2RlUwELI9NiSBwUmR2xx
	 FAfApVeye9WPk5+hAZ+g7WNf6aDT94IgaRNCYCYWQVIfVeQjNHQza0lKjRyjzGU45V
	 gbRDmdL/tF1Mnv6q8DGfAGp+d0IohzpGmKW+bKAqfiKQy8uWpq4/RIrEFeQA2IiaoN
	 I3EKNDIOKRbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE32C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761963368.10094.4137199538471702692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f316372497deb619ccf9998b323105bedd109fd57069a911fd478432e746eab
Date: Tue, 25 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787619633
