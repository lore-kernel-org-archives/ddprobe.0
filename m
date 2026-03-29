Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAE4C97
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774753494; cv=none; b=GhNHcfOQH/nXTSRIwrPHTasMnSGX8xNL/FaG+0IOjFLaB7P5/v/f1ZlerhrxM2XVJy8CLjHkZxBFWWNAtqE0OEl/xeF6JZmhuDSemSOB0Vu4YH+vVd29/TNoSo+chBSxoCvGXJiUKADLEoGiUEjLVc+kPGvxQtxYXYxPMkz9GQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774753494; c=relaxed/simple;
	bh=szBw/7/RjPzv4VUTscS5n+1URmT5BtbH/P8vLJT9Vn0=;
	h=To:Subject:From:Message-Id:Date; b=Mj4W8iPJGphqZWl0SpZv8Sp1kKjIsQfp4uypRpJo2hNZTHuDWWByjDhrRGqL/fGMnUg0K+fsATlibTC5Pv9A/t7RK4KR4f8gtPltviveL51yV3ckeVMya8lcIrSlqWXaC9r4o47tc8EL0VoB+PKYcsm+q+gVGPZ6fCsFk5MR3N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InVLD1TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InVLD1TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774753493;
	bh=szBw/7/RjPzv4VUTscS5n+1URmT5BtbH/P8vLJT9Vn0=;
	h=To:Subject:From:Date:From;
	b=InVLD1TAsMt/52d6CuR8gvmB9kJdnXuFRIgF16rBJHKxY6+ETPex+a9cIvA8v7JQm
	 I+xxCZRx2dagx4ZMYUL1DoXTfvKd2BEK52f5zOQqIMemniu7fbSCaApPBaU6ME9kYA
	 msIZIeTpf8tu1JRx7t7yAvEOPLi5ddG9bpRXcS4MjjppSxR+cdb/HUm0gLMi4bPUjV
	 gfTezTjszwTA68PYFPDHlctfcDIlmQjGNsh1Oy82t49Kninv/yikmc+csjXgP1OrIH
	 eiXx9McQM6jaG/FziNDWabRa0SAE50aRULtNfuXPNERbo4TmgebZV8e1oM+28Jofeu
	 1dvrWoy4Wacpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706C10D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475349358.10150.13679206883535584734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e781b139e5adaff58930789854dff8eece78373956b140a757367aa2d11ba584
Date: Sun, 29 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774753493
