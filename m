Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C0C33891B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762954194; cv=none; b=K9CMx+VnM+OTKJ21Bi0hQl82U7QlBXM6UZ1dAtSbJQCmC1I4QlxaFUZnfnCxvakr8/saw7y58OkDPsr/v8Pv52kXCPH4r0fsISsUsyvGXoQKs/YzB9qfDiY6iFYKWuyM+6UnAQl+bbjFX0sb47DmkYenv/9uDu/NLCqdPc4XPNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762954194; c=relaxed/simple;
	bh=khyuB22nFc5zRmXvoqWTjERdD/OPukxy2OwIy/3TFGs=;
	h=To:Subject:From:Message-Id:Date; b=Fkr7mYAbUNMa7BkC4bQOpmPdLghbWhyItOWdOCA2vKnFJDVm3NCZ8Zk9JxUhfS5w9Ns0RupNfJ6wX+mu0r4FxuWjvK9/X5BBTc6ju+h6LHuqPDG4CGzCxVEXXHSDI3308b82iz5QaR6icDEyfMHkvKw7hzBXZje+XYx4EJ0toi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By1eUW/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By1eUW/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA232C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762954193;
	bh=khyuB22nFc5zRmXvoqWTjERdD/OPukxy2OwIy/3TFGs=;
	h=To:Subject:From:Date:From;
	b=By1eUW/SBCpiysysls+I87GAG6X6FpBN7oz9HlW4R2r+af43NGYBWSlrFftRJk2i3
	 2ewiciWnPb0TKn4+bg6mtcvJg+fhiSC1jjhBiGamCR8TC31v/FkymVDXHD0cmLLxq2
	 vkBejVTm9h9L0TH0c5MFT7U4uEYHpaTV6wm2MedWlCtcEhjkGo0ig0Ug31P4eeXv4L
	 e6Ttq9ZnwwguT3GdvlkERg52hdCArCcXIJCekXvRTdJTjP1AdJhhIQn0Xtp/o/zfM9
	 JEMHnk0wSxFULsEdBL7UN08CX5PtHVnG3AGkifrTTMsAAt+fIwfvG6C9nk0so+58bQ
	 Z9Vcmk01rRHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95608CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295419358.31587.13524436374444892882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf69bfadf022553253b4c8c8e3ea2539aa8cff3cc383bd0c3e6e62868b0f431
Date: Wed, 12 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762954193
