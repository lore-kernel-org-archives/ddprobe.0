Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD80417D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763514714; cv=none; b=l8WhkRjUWQ4CVPjie9i37Sfqxoj2pi88WvGVnhALQAqlR/qxcnpyh6ZoYYHOUaOY0GBfhpJPHSgAyKejNBYrxktsCIJLh9CkaFxyTLa2Jkv2uoS9fgPJ6Z5fZfc9/DA5dpcf0OCxWGiKrGJSTZZR/P1KNqRPMZbc9IwAzRbxoak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763514714; c=relaxed/simple;
	bh=ZGIPKQcojT5zzqRT2hQlyDzhoaR/fR0/2Mt5jGDp7ag=;
	h=To:Subject:From:Message-Id:Date; b=PmmAp/n9Cox4D+SRFExsrLrQHH5LW8ci87EI70DPlgAMJ/DwccWplCZs8oASxxeA1a/YSQyt3YUL3EyrmLixC6Hgxc/vp74K1Fmzmevv4zlumNAFx3LDVxaN8INbm9e9u4coY+whLRUYAWOHmAgID2J7jOe0rA9dCJYyJzysx8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCt5vXh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCt5vXh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A42C19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763514713;
	bh=ZGIPKQcojT5zzqRT2hQlyDzhoaR/fR0/2Mt5jGDp7ag=;
	h=To:Subject:From:Date:From;
	b=TCt5vXh2qB7wuyLjrGJ6t2TS5NW0nVFkaEnwE6YuH1vWja2j+uNjxcxJ2aBWTpboL
	 GK8JxAFBqxbC36rogg779egIgKo+B0i7RQ2i+4lX9SbhzLkXD5bKIrMz8KCasmt/54
	 TySpo9SOjrQxnVQPURwGy/FdB4+jiyzp2iSrUHzyXS4ED7EjhOadUOd4zYLSGLr2gp
	 Ejppq9kb+ZmgfcB+OQoAH3wuHlam59/UsOLd3QFXdcDozJZ50eZZdL7Gv8qCtrHG+d
	 jmMI37i+BIQbUT1mo8evF+R6ZxUGzXbqHC0pTOQJ2KPUqoAlEo3kjp5VICzOfoVl59
	 nuWcOI1zvy6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8FCF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351471359.24455.6669098461880594861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d013c8ff0a9d56b93149b3ac140d52122d75c2eba309cb151e2d80d3e5298d00
Date: Wed, 19 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763514713
