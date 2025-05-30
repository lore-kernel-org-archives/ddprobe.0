Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FA51DE4C8
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748591994; cv=none; b=eiTlflJPVkmT/ZUGfoQ+VcbHMcH+DaJQ3smK7ll5W1E3/cKEvt+rRAVbhcTzBKxnm+8m3JyWUxMQrxXVl7VgKirJrvYgJ0kgA+6RooPaDXNDcskuXgsE9iQuxAGcIHJTd5f6m6gkKutV+SRlZsFvdbwjn5raiMZtgUbbWeEvO/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748591994; c=relaxed/simple;
	bh=anQ6vhAbKqIvxqH5gKpy1QYZbtuiry0gptz3avOciuc=;
	h=To:Subject:From:Message-Id:Date; b=BpDnSW2/kzJ40bnxx/vBOtABNV3abA8D9PYc76qJtoX08w9FLMUx+/xhnFA4bvYFgIA+G3uqeAq7DcSiY8Sq+i8iNJQ3ZMoMCasruFnDNws/bBdGAUbs7de8sk8MUz1CYhqxn3SVIPvCnhOQtusT9b/75BUqHGBlRnRQq59hVQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDshiRRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDshiRRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748591993;
	bh=anQ6vhAbKqIvxqH5gKpy1QYZbtuiry0gptz3avOciuc=;
	h=To:Subject:From:Date:From;
	b=jDshiRRNKAPNlXB/Kdi6y2rf5KTIfn58nRYRnfhqg8fBRzceoWbxoPQlvhgm5TH6+
	 6+DtieAJ7Ee7vOQwPtaj15XT6h/6/chQpakVUyQTO493nMPkMNSeZitpVgVCgdcDP5
	 kSabBfoOJopABObdepBPQNwdhUA+VZiizpDJuO48fUDy6iuCbp+ap2bpRwneCw1iGh
	 GFwDn12kOePfqVQ+z5B/lrUijOL5TOpE4IOu9gLCrA1EQu6XXOJ+cvRqf7sS3SUb64
	 eprwBjyw5JwRk3zX0gYY0nmajEkp84EKojyIoDGm1DudP2/607W14JYHLBjIb1fDmh
	 aesTSko/6Yygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A2C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859199357.15259.4188478390384355705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00e6a86d37f08df060e8e0c56db6ee3a26264d2ccc8e0928580aacd5625b382
Date: Fri, 30 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748591993
