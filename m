Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6FF2F0C45
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770062034; cv=none; b=pkRgYZz7fBFfKywCpbvJPROCUMHo0naESNTOrKXLeEnTWWYi8ezhe2BDMi7XsxBygK76MZ5Ibk82knT9uPPpg1Jg75B8OikgfpCJSaZPkLftZGqcntBeCh993Xc5qLEPbOZqQrTCCMrmUIwYzAQl+ik7kjbyVPVLF0EW0Aoz64k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770062034; c=relaxed/simple;
	bh=T/eFO2cq6XzoI1xqDw4QGD+O6HR+2UcaSlD8eDXpc4E=;
	h=To:Subject:From:Message-Id:Date; b=udJ4w5T+qwga6t6ImdlawCFJPaZtRGvb1zcp+gpk+vdW2sOVC0lAGnS4N4G9Q1yqZ9zOilckKlOGhHje73HVvePsVTcNgM6feFgkbr94MA6CRICNF9YUdAYTn6qUo/gy8b3xmp8bDXLEi5oUJcBUhwV5ELSjX5i4OLf78iVeMcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml1rO8Nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml1rO8Nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA4C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770062033;
	bh=T/eFO2cq6XzoI1xqDw4QGD+O6HR+2UcaSlD8eDXpc4E=;
	h=To:Subject:From:Date:From;
	b=ml1rO8NkBYPt/XWbsD+lhfulrU2jUPdj1ps44yQQ6rnm7ca3xBunmhoUpPfL/avNr
	 VHJLYWmbyGm5zDA/Ccbr5fdNKQdwmCJ0I/+CdAZDi4P9hdwBn8gSWQekvpZ5PnT+xj
	 DKpO8VLqvcfFld+sbfTe88DY2xhn6lbA0BZWCVjDkF5SYlWCTZBz5GmZc2AbVpz1rc
	 i/FFfuGo1rqwifrSheWfaxXPK2UPiuVmBOtJaC+m84q95q5dCMC+ugzO4XoW57T3Xn
	 RjF01qr3QR9ZO2P7NlsXulaI+yM4mnQLlqugF9XGRmvimoD/ThekxGWDrEZGrqKyGL
	 ainsZWPu6IO+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97617E7FDCB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006203361.23263.16077398569109535190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1721337e9755237569b367bb49b95f757ae21b1bf547efe48cd0cb5daa335ed
Date: Mon, 02 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770062033
