Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCCC40DFC5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776846454; cv=none; b=dU46vHvq+bDABqik6Zer47vkfY066nLAfwmqey8oKvcJTKVebzbzMs3DtWXSn3l6H1fnVfOEgBadGI8+AMVWEqxHEBVdGj8rDCWRDV02SfBGupwt47hbGovVYrIZ0uGRAn+pTphCaylEohfzEWBjNixbSMeB9e81uD/V7UW7tdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776846454; c=relaxed/simple;
	bh=+/gZrGmezkiBci32sxtIn0J27uT4GgCWobehONn921c=;
	h=To:Subject:From:Message-Id:Date; b=hU0nnYlZREnJknS2loiS2xloNU+fVtKK2RrVChXt2t8MCA6IrRMdsvbJn3qxpiNI/90VhAq8ZEtEBF/piK8FcWOzJSgIvfheFJvqajIFGczd2iFhlmzkvLW2RE7QlUayjCZbbrPPAQQKoSlUPon/m92marOtkCfnNnvQcCTsVs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWkMwIxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWkMwIxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA77CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776846453;
	bh=+/gZrGmezkiBci32sxtIn0J27uT4GgCWobehONn921c=;
	h=To:Subject:From:Date:From;
	b=TWkMwIxTlm/H6gqufwcxp5bGI8DCbTvjl2v0tqwEkrtzUoDXR2YAqiKEbECTlFeH0
	 UJ9xPSWslbwhsE88BIKeMLE7PYElgXaIl5VTGuae39urlcx3GcY+neKBB1cA6+AC91
	 lX7Z+h36k2wGIYPs3RnP/yE8CgSDv2xNeAZQS3FgFZZfCgi2XYKat80xaO9VeZwD0f
	 1nGXuhRIXhnVI8B7PujMGyvtm1jXGBxlBJMHNuCjSJqySt5YHR7yMfg2FtdL3Yz+Q+
	 D5qYr/+BD3kZuijgfdJivemCFrKbqiFkD7ptunMK6VurSgBXyr26eBwlMnWwt1/46N
	 k5PWv5BFA3XXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB560F94CDE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684645369.11832.13864283947380072167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd1ed42178f1448617c796af6c0ae508247d060cd8467602d8a8696fbe590a6
Date: Wed, 22 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776846453
