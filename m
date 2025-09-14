Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB471891AB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757820593; cv=none; b=G1yDGaL495ejmvmakouDiKugJxC+rJ8cEmHzYmHjTEpbqm3K4jYk31XuCPy7PhVYODJkWAC+uH5dL5Ygpw7+7jMe2Kp7uwpbnx4orGwtAKyXHvebUenLT4wOh49krsA4OJivlx57niRtGAEJZV30g/Neccsw0QYAVd13y6Ntnas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757820593; c=relaxed/simple;
	bh=uZm7L9mCdVn6xQtqvYWoN9Kmwry0N66BAv7NUjObbzY=;
	h=To:Subject:From:Message-Id:Date; b=EYKledpqiynuWFLDOKG9d9bfJ3oEq8g3pf6ZP+zqeJXSQn/P7eRYb6yGshIG4wYua2sZUyFUsn1av5tPsbx1LCD88zA+KRBgV3vpMLiyNWoIrmZ8iwcPOw2CXteuPbiJ1JRJcBfm6d8hXp18IIy6/qMTjTuUBdzDiczxy3gt3e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9f15xor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9f15xor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757820593;
	bh=uZm7L9mCdVn6xQtqvYWoN9Kmwry0N66BAv7NUjObbzY=;
	h=To:Subject:From:Date:From;
	b=H9f15xoru9y21kc5IVRnr6L0tDbu+xZl3RSdMGr9XGmQacD2/m6YZgDBlNaE2t8Fh
	 Kd/pzPlzhLYekJ/FJCjiD5Mf5gxxW0ugxSC8TDWxl/ctP61EcwUCUr480FaoJgM9q4
	 b4dmFhmG5i5ytKl3c02f4w9viOdzNnoxIRo33/dRSEoA3Ub1DrnyjWcl9VSQNVYJjv
	 m2O5IlcNrJJZq74PDTe8iL7thZ5la9YhitGAYDpYKV/HtUd/DTtxuQpia2bW08IAF2
	 6O7YW1nGpmH9fyKgFRE3M/zem5OAFlwbxJNzcMtCHT2vOWL/pYs6yKqW5CHAAM+v+X
	 UOda7HIveFoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92603CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782059357.10450.9689454122151914429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5cda865376b6593059c2498af8d92aa8c64691986abf02b8d03a907153896f
Date: Sun, 14 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757820593
