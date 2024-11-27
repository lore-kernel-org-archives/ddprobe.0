Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9FE198E78
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732703754; cv=none; b=TMOqcJYA7SXnyW8jWqCsmKUS0PihSDDFZcjy7hJKLNJYdNN7tA3HJaWVxSpDwCIjsKe6Q/6x5S6PXL09Sqk4yGB/K2SNW9PMJWyFoZJ5pkFcGec1XTtzNPhKsN8kYZ0xRvaM8Xl8Sx2TsGSphjGzw3sKlLClMJjqDOM4kQ51CXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732703754; c=relaxed/simple;
	bh=uRy2iubv5uBsNNSMgd7wTmA3mLi2rGxVeEO88/b7eXg=;
	h=To:Subject:From:Message-Id:Date; b=GYrdThcgKpsfnLB46rkNNrQdqxW+6Py+RColwaRVbwSD9hpiAm+tNx+8KhdXdrO/aGMeQDgHwoNVx/81SjLhaERc+zy42T/EiqBIq64rdW1rgjcgiQ/SNOR2pyYXLva4xOMUvN9RGJNQOjYH51zxId2muZtp/ojxuINpvI+CExk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlBIn52r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlBIn52r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB08DC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732703753;
	bh=uRy2iubv5uBsNNSMgd7wTmA3mLi2rGxVeEO88/b7eXg=;
	h=To:Subject:From:Date:From;
	b=SlBIn52rOkv2txq8Gd6fMtJZDaB9Dso95AjKW04+gmiYRdHgCakGWqxBOYdI4S6+z
	 tu5DRrw//KDXuPCc+D3aLFX8l79VaBr+vNtnKrANa1bKzLVHnw8YZF3lQ3whuXl5/+
	 9yUGR4ZbetHGBfkQ1jHUzH/bEOlWER6H03ZnbPp0541aKHAOeHDltg/6J90T6Gyim+
	 dWlRIJHd0BC+xsv77psWFcWq1RTgLITB3iTzXpadyb7sZkwfoCCpjmsWdwqUQESWNM
	 7XX8g3KMUusgpI+bx1z2due5C9UCVTiVxXlUzrxbsg3dUAerZuLvJPv+WGK1B1+994
	 bpn9kT2sB8tgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCD1D609CE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270375363.13234.12241165707536053905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bd27588b610e79954fc65da172209df9e23591957cdc9477844cddf046472a
Date: Wed, 27 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732703753
