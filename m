Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C044DE72D
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789654834; cv=none; b=Ysrr4DaPVkmg5+xjWjccKPZVEIMr1I5Xip2OBDxyrDH3ayvA6lPIIhSO81TaRCu2M0Yug0vej9JFeb/+OFBe8yUZzdDzRNOs6e95LkMataKESajIIG2Sz1rq4jnVQBQi/8WNhPdH9lGHfYi48fLWNw0vAwI0XtjZdfRpntSDnGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789654834; c=relaxed/simple;
	bh=8U7ap20iwno0L9B1Ek0E2bBaLX5DD57+aXfG0BtUqI4=;
	h=To:Subject:From:Message-Id:Date; b=obM9ZfjgGi+/9Ie1iZYiDmvt5jDERLNgT4X72Zm7YlzUq5+9Br/vzB/ZHmbGHXGWodAk1NoLrIdmU27Al9Z0MEUm6yeXKyeaYzZS24Jp6dOayDJE4YE8gpgeizvmOjwcmVb5dAfS0L1B3x/vHxF/jgMrhrL8gF99WzijN/9gTHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtISMNlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtISMNlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8628C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789654833;
	bh=8U7ap20iwno0L9B1Ek0E2bBaLX5DD57+aXfG0BtUqI4=;
	h=To:Subject:From:Date:From;
	b=jtISMNlucW9iOwt3hU1FpXf3JBXO11VKMt0w9o4+NDcsvdyvLEQq0pRxm7Lc3ZaWE
	 3tCmT5t3SWD0fYLaMpsqCtNG2f+6Zey11743LcNGJCOucfRf1SUTEOYrdzz2VR5TmO
	 rNUsCZHTs6XESYiUb/WSYB+3ld97K28Qkkx7OL7vbzjzMPckv78XPbH+UCpXGHeifR
	 C1PqvCV3EToUvug/za0bAKDwFyj8S9q5LfjtCPDOMKj7VulSRPcEXbEoDUrs9Usyls
	 WSOVZDm5BE1MfFQpOYoFHV3hVQQCE8+bkyzXgpVakR1lEYEK6HQ3Zd4kA70bnyGsom
	 w6vHrbJGUiflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95FC982D8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965483370.29205.6744045741849389015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35512d302f54f6c7c7ee59166dfc15727240a8491b795d259ca903cb619bff0
Date: Thu, 17 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789654833
