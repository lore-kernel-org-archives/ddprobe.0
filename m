Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E52A456E08
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787586634; cv=none; b=lij8ZiC8TmlzMEJ7udGzc4uAfeUOBJNdVxqoBNUR5UWmzMqwBNhe6pnCDVdHsQFZsOKd4Ad0aZuWUQKMsa1ypYaS3cqKjv7N3q/EELgpCVXWrLVxsssctUrfBailiiK6hqQvYKdoKLqnr+xLgt0D4iMRN1PcaYPEzWEU11XlroU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787586634; c=relaxed/simple;
	bh=RydHuT6Si7jSHqH+j7ffHSc475Lwnv/tiTuhhFpVKoY=;
	h=To:Subject:From:Message-Id:Date; b=dp8rH3k3hAxgtnqt6S8pU037ep8jHEpOyk/uvg+ofMTsEBRMZ8sbMhUEnvUm0+L0R1T9sJd/PcSlxvmoaOuzHnPFRzBa8629VG6msTjUw1X6Ym78l5xghdLCZW/BK2qtbRjR4cFPJMBRUxu5JA6DeSLKQj41zvqJotTvwFMjo9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us0gSuCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us0gSuCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9DDC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787586633;
	bh=RydHuT6Si7jSHqH+j7ffHSc475Lwnv/tiTuhhFpVKoY=;
	h=To:Subject:From:Date:From;
	b=Us0gSuCAEGQLvMt89vACcNYTV7Ls32BXo1FVSm/xxIPTmoi7v44YI4yybXf7wMAYe
	 GhzSBBGZRWhXwjk1w8EkB0rv0sSAJ3IdNzPCgbchmT98+G6nTo+Nyb2Q4iM5ZLllzU
	 UK2SGoRL/Zrd6V0b665jprnte60LLYLre61JLffkd+CdbuDquTFobdpG2g+VGSihAU
	 MEXD5BNFExovqOy/EP1trjVJocJxTOStENR0WY8rY5v8rAhirJcXgcRGnyWcETA0+i
	 D5t+aSyPbcm5ikIdeZ+U7GFWLUuVhxO61aKM5QMj0L8gs5VyoCtWDagMeJ6zGCQmht
	 YQK4IlUd66fgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1538C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758663371.792.3952230812755564314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2685fffd72f0355ddcf4abc320dae2cc40f1c197dcee8bdc733af94212178cc
Date: Mon, 24 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787586633
