Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480FA17727
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714473143; cv=none; b=IfHZXDSf6fAJGLlypFvbCbc8IvOzTLXb6BdPt6YTyroT1rSR+72psZiANtmSms0IV1Eh+C8ZlBNMjyQMovFiKt2tc+bRFxHor4FJV5wv9DglbDmsTvKzD0DqTtUwCYWujydihpQjtPGF6DiKgLC72ezLHvnThEX4SicDrQkVxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714473143; c=relaxed/simple;
	bh=Mtbb0J87JHCd1JFEUIMjY+rWMjAmt8Q714paoeU5JrA=;
	h=To:Subject:From:Message-Id:Date; b=mOtG6bH3zsR3QM59spMJvgixFfjmEOebcqN3z2+5XRmHgBXTySVPffI7Lu1pJRrr2FVokKv/IRyIAPl/aJ8E0HPGy6oYODTTm/jMGLcv8E773j2C57CVZ8dP86DQiawOkuJ6z17BLJIuIAo3PVM+gW9u1yQQlS2Tykh7d2mkwG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzqGALsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzqGALsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7435C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714473142;
	bh=Mtbb0J87JHCd1JFEUIMjY+rWMjAmt8Q714paoeU5JrA=;
	h=To:Subject:From:Date:From;
	b=KzqGALsmvK74ZmrHICpDsW0+v73cOVzmQoBZiFcm+bwTvxFepWl4X6gVJNzCF0E6d
	 fFAhXQC1AbQbT61VJelEc98YVlVNDbJKXnnOBUEsjOxAjFX+v0HJr1r06R7dyHF/3q
	 INmt5254si/rbqCcJkT0fc/A5mJdxH8ZsciRa0tFOt5Cha5NYHpi43zzCfIZ/O8YI4
	 /3XsFriryH3EJkJnvgXmEyyet4soKuOKbmvCfmMfrb+lFt30dn1scbTaslPRwvxEZn
	 OmFAjCS55xKGDDBd04Bel7XoeOe6NF6Dih1HMbqAjK1DRGAY9agzzqwGVXvWyssX45
	 nq/W4FMMhIW5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2A1C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447314277.20679.11177188419772531263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a89010ec3612e33c89868fd57680f5f564792028f4d02705fdeda783729fbd
Date: Tue, 30 Apr 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714473142
