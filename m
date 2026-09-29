Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498933A7F7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790674834; cv=none; b=RSXU7luGrp/zhfnv9KZ42HIblMZNlxMa5HyySbMNgINHXxg/8ClCh2o2JeRyjhGax/9oiwervmclpnGVY53gupZISeFeBn89y5HM/iUDkh9DVRZJLCHeDgT+Jmrkxaas4oOhSGblUoAonWSMUwF1uaAElRd23Fl8SwpgNOgE1lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790674834; c=relaxed/simple;
	bh=BN2+SNqLJcvbR1PkBpTejX5kzf1/qPfjss7NcjNs8gA=;
	h=To:Subject:From:Message-Id:Date; b=PuSfq6XEcIQCXOskIGBNaa1I4OpTuv8CUwEPWgm02sw0y5RDgWuh0QcvUAgfBfYrpWRoW9ojyJ2mFwtkR6o8Lldj6X2mq1qykatYVMtyvWEEObdw4Ypgj5ZfmT0B7TWqLBw6HQhxX0zQB8u6koMbUD+XyzEhq+qUycf9P+08sgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO6F2VoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO6F2VoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC503C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790674833;
	bh=BN2+SNqLJcvbR1PkBpTejX5kzf1/qPfjss7NcjNs8gA=;
	h=To:Subject:From:Date:From;
	b=mO6F2VoZasfMPJWdugEYfv/53yzUQCO2r327dQI39H2EhlVNGCy6oNs97a8dykj3T
	 Z2d3z/TP4zqmvYElDE4MmPqd/YCUsqCzJnXhqQNQY6iAAqqJFsm9J08gmVRZ+9lDsl
	 j7VqGct6THqnY0Nujt3Ynt7CEqFhbQLVARUTdaRYzeVu3znfStkpGVQ3NyR24tWtXP
	 r5TVK5DnAjNVjO6bkHCFzNs9kcirgVCeGvcCZAUT7EKK6aCaE/uwxh7kvMPeDn8ixg
	 zzeIwYfycNljEcnhcgvEgcjNwnfZ0Ymty6zryxCiQBFNoGgv1SV63OnsmWyHqKTjjB
	 1xZOOcaBV/JbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983CCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067483368.3903.6059499911088633761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889c25ace1c119b6ed760a3fdc19cee7715df2920c5d959c667fe7cf20e7258e
Date: Tue, 29 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790674833
