Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A17040682A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782739114; cv=none; b=hJN5eOFy6uY3QqTu+Sbt8uIBDcZeK+owYvAQlt2v+kgTcG/9FKUPqKdVOIv8+gHRmhhbpWP0YIj5Eat8KZZcGJn+VwUWgOaFxSM8kh6Yq9P8s/w3EqlU4qWT7knHCzq6VUyg5DrP7cww+RpwWBzH/yn8qsIZKORoMcHkdj9X64c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782739114; c=relaxed/simple;
	bh=uR6jk5bFFYcHurxenCK8O3uNUgi4hxtoR7fCnlE9OBA=;
	h=To:Subject:From:Message-Id:Date; b=CRUP6pT4nrWmzixsBNFXf6AAh9ppqb5NwfhHtfKeww5yjyFO4glVOJyXOTNvVjG3awZ1IMQ+i8qbSXLEzbAj96tK8A01Ml2lnD/yrMzkwZ2uZgs3oc7xMDN7naoP3y1ts2zrIm713beR9e0SqtfwEVtjdoowzRhPHt4C7ghbkAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1OFFj8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1OFFj8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93D0C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782739113;
	bh=uR6jk5bFFYcHurxenCK8O3uNUgi4hxtoR7fCnlE9OBA=;
	h=To:Subject:From:Date:From;
	b=W1OFFj8RPF1yde8EF0A7/nT43XAv9o9Qu2P6RdYdz4gZv8y3tM6ibJ8wCxbh3KGJ5
	 gPFyEU1fsMq+bGre0n08J4M+DEp/LSqTh74VRh6l2CeZX7BJoDpI8mm2O7jiY4VYcF
	 0fowhY/HA0kFtYZZbS0NGSKqH2L5eJd6BgTYXaTYv8mbZ3l0YY+AF8Ssq+t5CI39l6
	 pGLTKI3dhHnP3LtoTFzBfSfHu/IrtviX0x/c7Ll9V4H4mxkgCc06NCUQ/UsJ5fi+iK
	 rsxDO6tBy+/0AWDoIHIErXEg2XmgMf+MC3VUKiT7sRe6gr191Cd9sVYAGVwgfv1No+
	 LYvdw6RjpEnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C315FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273911378.18480.16975854857558271857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034b2140e8dfc4429a319ba6d26731a7ed60f653b5ac06da9f52fff8cafe41d7
Date: Mon, 29 Jun 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782739113
