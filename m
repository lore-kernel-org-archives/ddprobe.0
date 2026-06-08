Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E673164BA
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780901074; cv=none; b=JYpDNXcccT22UOQ3TfoQ0QnVdQzbp8vflxvNoIyTQVuXxw/HMslLqIiOD+qxBG9IeAX573HAmpyW/YYcAhT8/3riJTQsV05QPIDaVXfZCScja4TP6haqo8sA9Kleh9eX0oaDjl6/aHVB4JS48dvx2GnLqEz3DOThLi9S0NenTfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780901074; c=relaxed/simple;
	bh=BVg4uXFk+DDcJAT4ZRZdtBArRybdafbqcP0KvWjhEcU=;
	h=To:Subject:From:Message-Id:Date; b=sEJZ5xfDWhzfQjYmR+NeZoub9lgD16He8WNhseDME8yY8tMBZWdUJfhgvcbE+hcHBSXh58WaE1/wzBonQPdiaJYlH7HsEES63lRGwPBm6tR4FVZyLfNrKItKka1VaTaZUzNdvcg8SxA/eCUJXwMrB81wOJD3xmdeZ9n53AK83Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4EWEEtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4EWEEtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFDFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780901073;
	bh=BVg4uXFk+DDcJAT4ZRZdtBArRybdafbqcP0KvWjhEcU=;
	h=To:Subject:From:Date:From;
	b=H4EWEEtmB5Fw3LzXntfgjF5V7f49h6lZYJ8/uSiw/zw6s5Ug0VzeIG/QR+PUSotQq
	 pkffoJX9/WPdlYZp6/gKtndBYq3oFw3DrgqVoQa1wUroX2IVxG0I5HWw7aScQtTYiW
	 ftO+3nFUFGahaqfaCSDBO6WB/pB5z8oaYzvUYsMgs4Z+Xu/BtwlW1Bjokyni4edhQU
	 groUG7/6Rsn/o/rO8kKI8QgEMn9miMVq+hSo3jSF/+buYe5cGq/RlmI3R9jzf+wyoc
	 V1Qq6Npb++IRCH6K7VEd/cpeh8sGpjbBL9FeAgrb9nJSkyH2ppk6HgT11saWxeZp/k
	 vJcDl7vxvOz/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AD8CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090107373.21119.14345174764460998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34758b9830439c7cc666363291ace295863b0924404e8ad0376aebf491694f98
Date: Mon, 08 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780901073
