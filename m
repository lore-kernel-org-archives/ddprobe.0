Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D5C4A24
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733538354; cv=none; b=RqC8rv0oJu7SbTqGXiXv74GTSSqYY5Z34K9n9tOBBoTSYXyYdDbrYiPa3Bg/WUc8FwLXhoqq5DLoSf0ulxf44J+L31PMV3RKg4TpeoFD+Z/gAblttJHvLaPj5Oq+G1+CYK4iDrMhO4QvDVxN6U89YWzqETXen9tFOZbgKX5A640=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733538354; c=relaxed/simple;
	bh=wCUcA5HdjqtDASzbna6UCQlp2yTr+EOKgt6gBXlFxoE=;
	h=To:Subject:From:Message-Id:Date; b=eglC3vtSiESAaDCA8lnZf/q4AAexcEkD/bgKCtQUYt2szzGzYzxQ801huD197IOoJI2jsV0al44qlL98jhjz/u7AijTf1/AHRi7MPtZkjlu8FTUPUuEuDH80bs4IuxAVgGyr55imIAjaSbhiv2bPPEVpnVHfBRCYFU8vvjV4jdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB+8Ep/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB+8Ep/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5883C4CEDC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733538353;
	bh=wCUcA5HdjqtDASzbna6UCQlp2yTr+EOKgt6gBXlFxoE=;
	h=To:Subject:From:Date:From;
	b=GB+8Ep/l/T3JctYeQtC2umHtAEmES7xQBn/DIz0LMPJLP2m22HabIhkfRZzjmTMMm
	 ht3muSIkViFyaDIXnOdv96dc2jVduJRuSeMwgHZhVt5HN8qplRaEsaPxwyjn0u1UNl
	 mVihGySdJuw+pBftMpuTei4JbVl1juzNGmPbwAfILStB8/vJSHFxQNNi3tR1R2KuF9
	 soYUnH270qqDBpz87QQg4GHvCPJByKUnoXS0oGGFkSmOCEoOmryfXvaorNxFYPE/xJ
	 4w1VhINsznlivxXp+9pEu5WvBou7RkduKWH9vFguVokgBTZdtRb8ak/XHeVxsvrqZj
	 2WoCe80APjD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4BEE77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353835362.26713.5526517665314410494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6393e10c8a6f213bab2b38f6ef23e8293b54f57085631b58805dba29941c87ed
Date: Sat, 07 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733538353
