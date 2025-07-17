Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331D74A11
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752724194; cv=none; b=P/pOnOCs5k1CWTlT35iajAqDIQBkU1XK9PDLTUs8an2lqYPa42s4vNkykwR25L5LLOTpFAR5kymDlpufl2B6HeWivapaWiPDoqh293D0G8V09wcHW9W8HM7zj0YtIZhL/ZpMB3lQQ+UIYFd2HfpGiLI965OACV87p1cUbTEyDis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752724194; c=relaxed/simple;
	bh=I/bSUk/Y0ahYGihDzpvMZEcyQP3FeMlQC/8bmAEP1WE=;
	h=To:Subject:From:Message-Id:Date; b=Ibb1FfUbqGg0g04MqzsvERzISMy4l3FeIZS7BxhBk+OcoFx4wyf+5Cs7xrIO5xTpReR5vjI1IxltRo9jCSubTcGHpQSiNm+z6XbimWeHS+ykdthkXzXQDHhdPnlGy76XPJPAQPzkMqUgIhfPZjOzMiDZmbm4fLeOUsMfDd3puHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwFhdRbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwFhdRbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752724193;
	bh=I/bSUk/Y0ahYGihDzpvMZEcyQP3FeMlQC/8bmAEP1WE=;
	h=To:Subject:From:Date:From;
	b=jwFhdRbNWSrKC3h/H5eyL4N3OJvZyGWcjSlTGKxZQIUt8uPwu4JeTEFvc/iAq1XE7
	 mChuJV0NTUqsqTUz/rrKvF+qD7vabu7AOHJUjmGr0y3X/YeUjtUBYtZboHJKUupy1H
	 4rUbUyUuk5/GmyoS9ax5iMElCudo0BJuV2sS45kVznvr5pEh6Iq8FKSVI7VQRkyFjO
	 UWVoZX+Mg8H6Y2Ydt7VFgJJF78zWmdV/90TkWKmPdEljePcZsa/pxEp3MeFCNapTrG
	 zQicRz4xfeEV99fqsYJYVOwtRf63uHItw9KLBuzLIPxuX0lxZP7VtALCm/3Jp+aG+G
	 bXGf+OnspEfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F705C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272419357.8037.15367960341583396343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83212628f8338f18e2ab4f13b1b5784861fb5b4d464b7bbfa0b4c76c84a904d3
Date: Thu, 17 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752724193
