Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8533DEC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761057594; cv=none; b=rR5VMZUFfQcoS4qlkEaKgP8u2Hkudv5MGXY267zEz2Tb/e6HlJlW12j1SL7AG1VGV7SQDOQya3POstge/bFiC3LATu4ba2tDYodO3vf+OahRQdujyyPvxgkuq8/uIsmxwfFcDibpofRvgmwbzQGnEyFKArLL1QgBu5JVg/lxD6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761057594; c=relaxed/simple;
	bh=gqbm9aedU3+3TXnWs8w1ou3n0tvm9fLGnESrprl6cak=;
	h=To:Subject:From:Message-Id:Date; b=ADP60uLb9kTeG0GqLHKvy3OQKcMtIkEu86DOeFmipjcfNrsngTIgIfg3auaNFiaKOg27lMsn+ws5hdmoX0LIdKoPjcyAeqegkgU4dfEXkp8asHtow88XpRsOQ4wE+C9bqJe1VnnEpWuWPkHbTAdqEFPpCFejDY6lwBurnX6ebrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvpVVb33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvpVVb33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761057593;
	bh=gqbm9aedU3+3TXnWs8w1ou3n0tvm9fLGnESrprl6cak=;
	h=To:Subject:From:Date:From;
	b=CvpVVb33lL5LrpQRjB14++Z9nvAjupec73maNXwfuFIU12QKV4P4MrIazJnFWAPIh
	 LqA2zMpUeCz/IGX+HwrLkXHFBHi7/hfimG59sTG1fVXKBSYXmo+dOtPT1B7LmnzYqc
	 PPHa1F43xbN6zhK3+iIMLHkGCEMbqQe25zQ2Ua8qxSIrIlAp0xFIixNXNAEbBqRRdu
	 R4GqqtoCWNrxm9GTTwOQ9yc+9NAOgHYEtSIfeLcOxJGqPWYPAplPltXVTxqKQd3807
	 HHMp46RrnPjPKynTnEs9BPt/WtKSHvC0ywlG6SmVFwbmnH3hcuc+E0RSMZVTP9agh1
	 EUxVWPJPp2Cww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D1CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105759358.6498.17365527564791139798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b743de76cc4ac826822f2e8cf2af48cdf138d01193d2cd253f556001c429ab2
Date: Tue, 21 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761057593
