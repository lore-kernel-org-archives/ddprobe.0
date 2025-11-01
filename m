Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FEE244668
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762016994; cv=none; b=GeQLhCBGmbqaUXi/uhCdUaigYgCbOMAkAj4ikp5fqeAP+4yCdzttVBvToAyDVFPthf6uq8ab9JSz/caplMpKxMmm8UGKwbzo3yOrmPUH9eXez96tHuB1I+yopB3D3pvnaqq1LiHAQ9H3HJzH27giN0epRxeHXGLlVBxJ7tmHEqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762016994; c=relaxed/simple;
	bh=f+hbqECtRVMCUZcm76nAc70fDr7ux5MLMk/6X3xP0Nk=;
	h=To:Subject:From:Message-Id:Date; b=ZKO64dkvSVbEW8STGh9QK2gFxv2tgzbIzsaJN8TfMrBnbwW30h0hAV6KorxZGEGF5EL3cwG3YPJeOVWd5Qi36Ub154uPiUmBpkVQ1rmJwZ6Ew8YNoyWHHdoe2BU1S8o30xPisZOYesbqkf5wWsg46nYP3crt5YMi080Jr1n6IRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZ1uQ4KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZ1uQ4KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF91AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762016993;
	bh=f+hbqECtRVMCUZcm76nAc70fDr7ux5MLMk/6X3xP0Nk=;
	h=To:Subject:From:Date:From;
	b=AZ1uQ4KWlEVIt1L6MQ3cjXEeaoH3XqCtVamHHnJ7b6WZCTIPO8IG89S4hoXhWbb8q
	 XxtzMgIsCFlKECiAu1/8Hi5c93RZ9p//SuLCpviKdhyY8+qU08JzB20MOU4pJW0qIw
	 +nv3XIBFkTaJr7eIA4nGvL5WbOlqzwqo1EHDtu6K/+8P6nTwQQ1fy+2ZWRtB3gdNJ+
	 vsWLFdiXgbfIhBAVQB7vDqHQ8HCS0Oe+PtBrBKvCsTWchZIvXoW637LlQnjySIc9k+
	 iO0omwn1sjF6mF6aesb0z2IfYnOBOLqul8XlOU52F86fikSYid3YwYvI64otFEZ7T9
	 bHscc1poNKJhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B117CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201699358.25602.4879440141460721624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997da4bf3b93a88175d4cc7c713fa1886fad3f12049aef1ac30a7c928863eda6
Date: Sat, 01 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762016993
