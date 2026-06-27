Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3552124BBFD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782553114; cv=none; b=Epub7+PRHdg+Qhoma4oUMK+Arrlxx2CElO6mN5oW2JvamPCZ51OP2Zmlxy4WpV7A86qTuLYCgc/pPKkR1FI7IxdIEg5NGhrVAd8q4Na1vxb1BD1Fy57rk1OvPzihDwqXwbynp4rAuc63awJO6cHhMUo3QsUbVCoQ8KPaflHrbFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782553114; c=relaxed/simple;
	bh=by2Df8cPXfStdaBLsobTUaO90KC3V2R+ylbwgtpUCnU=;
	h=To:Subject:From:Message-Id:Date; b=SXgwLGB/xqRmS43df60Uni5V/n8alFToUURh38p7e7QBf+Ks9s+65ttQFxY1oMwsA6CqaWr0pDO5djaT6mC/QpQVdDz0B5Q2ZwxbH5v551qLwnfOqS3L1dtTOZo1ylBJPfgMVg8BEebg8v9t7x6NhjPbhY2upNGqvVOTLV3M1F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaJgGeR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaJgGeR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BBBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782553113;
	bh=by2Df8cPXfStdaBLsobTUaO90KC3V2R+ylbwgtpUCnU=;
	h=To:Subject:From:Date:From;
	b=kaJgGeR0k+37aev2e0g5AqFQ8rZHsz+RfMoXllcBRI0om+dpBg48+ou3KmuMNVdOj
	 103kxfyH6WYMH8X8IqyfXX8g3QgXFxkelGr2JXIn3Xy5CpY+Wlw16YuYvzq4rg6oRB
	 YNUee5pKJNh8rBYM7Hd7IolMJlZInLDoffy4SDCjksV5EgDIjAwcEh5VuEPpwNvtlI
	 QoPQvsFjhgA40qTvMFQ5y5SrbFNNSmVs9O+Gu1ExOf8mxY2jJcadap2KlWG9Rtc6hl
	 LMEIIxthFL+DXCp71fSqq6rv8+6hpd4oQpWfH/kX5RrwUsZZFpocWeCKEhFsRG3YgB
	 6iUa0ut2+FuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46CAC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255311371.31720.9559473417962090351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d55bb7e61751a6e42a3db8ea709fab56eb6c67ba972130e5ed695f6f3ec825
Date: Sat, 27 Jun 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782553113
