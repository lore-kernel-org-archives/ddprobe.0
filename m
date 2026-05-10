Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376978635D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778434234; cv=none; b=TXZhZUkwe23OjLTz/l2R8PFgIpAiO++L6bbFxOgr53YTgA+f5HdfNo8PnAVeoIVyuOEH92rQ10TJTYCdpSJGer0P1qbwoorxEpfMqwDN/fu+kvM34LEikLdNKOhylnDvsANivY1p3j5kqXTdlfeXH4+VbGmO/rTLLlspL31SPYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778434234; c=relaxed/simple;
	bh=s5hiEYM43qAcRnS6Y7HTyRTbeINnJordppPaaznVT1U=;
	h=To:Subject:From:Message-Id:Date; b=BCc9NHe8LqktPumTCOUTis8oPxeFs4bSMc9H7L0PqDQK8l3qIgh95MVljABtAAkWFeOJlVcO2fk2GMJqn/FnVn0ifYjAghOIDobXqxSZTPPLQVPQykBFYEDy5i4O+KF3pAITVhVn7EKrw423kt76qKtQpHk/sVqiVbvl/Em2a4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKjIT4jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKjIT4jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36D8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778434233;
	bh=s5hiEYM43qAcRnS6Y7HTyRTbeINnJordppPaaznVT1U=;
	h=To:Subject:From:Date:From;
	b=JKjIT4jw/87t6Y2kvmtpqfpjXFTHqPUncPqk6IE8I9iUL/YIZMSGRmXf+hkAt0GHV
	 YvVbl4ETZ3hSGhnHaQb+FFmD4eBnu1GYvXGTQxf4gHBi10Ut2Hvjsn/uSTpR6016nW
	 Hkyd9qGGVCYaFHkl601Th8cvlK8I4LF9DcuMQKjLMf0rGBLYPAH148AzlaOe3/DOYa
	 vWD+4NGHn8kydJ4CVI9M9F6gGL8BX1qC7O81nE51wO0anY7wdjODDP7E5b7lNXmcLb
	 04AKtVWQOfE+uqxPZBtOE3qujDYXnI+6N510rCGh1pFkqkcQuchyo0CVwKTNbN91Qf
	 yTnrGEWelXt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDB4CD37B9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843423373.9590.14013762561850717768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f290086dc44d4edee3e14adf33818fd24c8f76333a6f1b37297625ff06e6bce
Date: Sun, 10 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778434233
