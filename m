Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192CF3859EE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779383554; cv=none; b=u15k2DKhcgI6OO2VqzIl6LRZUqlnvlvpIzY2ZMABEy11oPy/Ny6JmdnZiT6ajZC6N1TsaMEFUyzr+XCaQnuXj5GPAs3buRdFKYBs1qaM5Vo+/XCTt+NoPS75Q1z5HNH2/aT+0VXUUKRbnZJi6CefafBJwlGFcKPophgMQoBFUXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779383554; c=relaxed/simple;
	bh=EN2Z2WfMkVxXS0sdBjZl6yQK2ibUKCZZGDYjqfeqxag=;
	h=To:Subject:From:Message-Id:Date; b=rSrPMnWuY/dSk+bVeQ/9oh7Wd8o8TSljLUWkkrC8zQFMEFj4S9PlpasCDtqKD7yJZj1I/ieXhkmfMKmb/UROQ0L+Ha1ZZJWMVbz3GO8fKJ0zb8zffzeg2wjffUrBbCC/gvzrJl85ewIxVcVhrBFmLFPxr25zbsWJvaKqDeAmIzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgiE2l1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgiE2l1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12D8C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779383553;
	bh=EN2Z2WfMkVxXS0sdBjZl6yQK2ibUKCZZGDYjqfeqxag=;
	h=To:Subject:From:Date:From;
	b=JgiE2l1AAvsXnro8+EveCHaFfxGoNy5arq9r3sXubxAwBuj7aLMPzelmRbihPpfNG
	 pQnE7zhjhWn2z7tbbcMBE3qCkvBpAvSBSSIphzYgFn4xpDP5sCV00hcFn9UJEFCNqX
	 ZALokxnuYmnsegDnkNxyv9KlddG9rey3Zv6i1ka5uln6xqAbRzGeWtHTAVErmkPm5X
	 AYNXJbTmyaYdRG+sbUhTEzx/Un1ACUUABI9QNApWaKjvfS8flHMinHOuTj44a5jkt7
	 50SvwYTUkbnsFyFrpDDfL4JTPuMKIGT1HUleBm1sh77098m/pk70tT6Zo0tOP16RLV
	 HwJ1oXlQAw2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE9CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938355369.30532.11051294537565791131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8350e85e360fb0c5eefb40b1fb39958747a8f154e2301ac11508f40fc4aa8f
Date: Thu, 21 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779383553
