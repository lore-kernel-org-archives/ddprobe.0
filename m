Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435A9339A1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743257395; cv=none; b=ezUbn6xeiq3F7fpQ1Ymnrav1cdov6o69TRbzakW840S0TKYyihANo+xeL+15Dl5IWQAhjgpgSo55/oqi9F/163f7lOwZck/P0L5nY2WSSAubtAZUOAff4CWPVl8FLyLbh9HwfKfdqutvj2WbXzhkLMn66f5daQ2xNx90uKtiwu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743257395; c=relaxed/simple;
	bh=KuvxgrTR4gIDEmqgB2Guc+h7u2fIs5Wd9/u8Yl7VYHk=;
	h=To:Subject:From:Message-Id:Date; b=bs/oSDetOl9s53CmBrYATogP0gnvdUSNXoD3ZEdrGHpprzsb2f1mBhIbbDlhv4UylxtSKdOs6YHGW+On+mRkxtpR++QanMaDrvekMuyAcrBuZYfL7MZZ4EOo3eo4cpzAP401ufgaUbtqJcxrP1JuOw8ceIACSlmNd6PsOMqpJHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEE0embz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEE0embz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9660C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743257393;
	bh=KuvxgrTR4gIDEmqgB2Guc+h7u2fIs5Wd9/u8Yl7VYHk=;
	h=To:Subject:From:Date:From;
	b=fEE0embz4JaM5lyAGqkKP5OBgV3TC7b04uM7iKnNPzqeA5dxc8niBWmQkShwHQ93n
	 Yd5q7/2y+NNzNMWEH9mSGxr+NZJmKwhSmz2RAf/qo0GoLO6A0sl3Lm2w6zydGyyrq+
	 9A+C0oqLPwfevfZcOZ1+yYeH/6/BGkKoscwBfc0P5SK5DAHXGT+j+OroZpvj97fsPR
	 tOpqHtiEawHyb8CicAfQgP5rBtfU2D1IgMbGPAKwo8UIvUgvaVNL6sp3C738BQW83l
	 0uaWGrVrKjUPK3Y6ldroOTqMO/KkaJQ2KO75ajuXxZveQbkFwfbsMlY+x+lxiLJMGw
	 NHsjpAF/Weplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95964C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325739358.7241.10353664811641408988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375bb2f7cf1803fb57677c46f5d0d74d90f18e40656fe33bf98d037725ab0f61
Date: Sat, 29 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743257393
