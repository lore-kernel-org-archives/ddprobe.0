Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E248389E05
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789288834; cv=none; b=CoGp/eoMdvY+Wm7KmLanowG04HrJnfWR6D8O0FG310Zs+ri/AMoHj5z3GW7l8c4VNEgMYlt6ZwAsVtuk3RKEvQHqJlhK21/FIzIj00QAeRiTaAgFWB9AUF6SoLd5BvIEod2TpQm4bOoYPk4kllWiWt4TNiBQgcJt7oiP1fMiQy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789288834; c=relaxed/simple;
	bh=0u/8ZJxiUf3cRKp4nnS0uOk11jU1CL84sCrwiO+ZJCs=;
	h=To:Subject:From:Message-Id:Date; b=CvqvF2HXfHAKNf4dN2OHK7kMV9uA9qdehwChfhSGxm3pe1ubO02A9ETdnH16Z33003wJyNiPWC5JnqBxjpl9jPTcC2DTghNeHqiKp3QJuYMcaeETIGgGKjqrPMHONBgyBLhv/ZuckdhpmiXdMWb/G6jV4KLtmS7fVKhW6ps72xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYwxYeDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYwxYeDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9518C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789288833;
	bh=0u/8ZJxiUf3cRKp4nnS0uOk11jU1CL84sCrwiO+ZJCs=;
	h=To:Subject:From:Date:From;
	b=GYwxYeDd+NmStFJLX9OJWtSEWcmzR6j0Zs/BzCFVCyZbI1s+DvU3C4C3zgUpQKEC0
	 QlWF1Nu0/N/2HizFQOtyp/IOdHt+SVNUxxCQFTCANqd7eMJenR/J2aw+iDC9cZ84bk
	 LJOhvaj6CUGVVhiKwXNOaq7+8FpVmKnVK+DMbtINRwznE2qsY3oCiQg4P6VP/TxYO2
	 AMFa2+19ABUhdDELJDOF9IOkoPXOdMPg/MUlTL2id7OCKiExIJqh82CRaqDhrVmV0u
	 NjxlMXQOBzNDfKmuWk01ypqJu2oax3eyBvhijn9tpLv+oGjZZoJvou8lrPmQKKF9J4
	 Flr5uopWcPB9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3681C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928883372.21047.133282785418599823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f77b3d53420d1c5299d2c2c339b8f91d331e9cc961b66776993b8cb38d39ff4
Date: Sun, 13 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789288833
