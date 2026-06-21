Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DFF1E7C2E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782041194; cv=none; b=DlnQXIlrUoWk9coKoflA85ElhQREdu1DthbzP5kbma+ShgC03HGpiimcglYSCmD1+1MqrdrBpxcm8EcAD3qDthrbAeTF6BBYGEEChY+0w+vQ5WBk7BBZgnE6Mbgh9PCc2ayrj2SnyUKOBZZf9oQnOP0qKoncTvv2FLbOtgmNiwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782041194; c=relaxed/simple;
	bh=3g3aYYsw3+UY0x8WddJ+UWBIyoSCecWwI/OMRe4wyug=;
	h=To:Subject:From:Message-Id:Date; b=WUGyU4lPqXVsTamH/D+CLrQPyqJtkHt4dWGXurO625gkSbkYsztVurj41QB8G9IDfF/vVc5WRV+DCkSdvzSAq48k+oE7Fd5KSc9SBx4i5rJxn9QzzCLJ+cMHM27KKBtNJZdaDYXWvhhm7WwtQpJ2m8paCMLxCP1G/vvs1r32NMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbDP5ytE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbDP5ytE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE53C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782041193;
	bh=3g3aYYsw3+UY0x8WddJ+UWBIyoSCecWwI/OMRe4wyug=;
	h=To:Subject:From:Date:From;
	b=FbDP5ytE7mNwPeqf1njB6JqjfevJ+t1LBwWvQ8FEDDEG01DB3E8PfUG6P3AXtWlwD
	 eQM6uolaPyK+s+vJhHyN3ulKHg7Mm2d6rKzq/8VcWNi4UoiZyZjzSCD5CKrzpgXbnP
	 HxkhHjU+cjIWfMCcCtrnWYm5FhQh+hDvs0v5bxZExyB9vAqbElXNSIwlOV5Fk8PHND
	 TpZh1pi2MS3AGLuaylWzhIlhy5UwmXlvG6byjYeTGf5vZhb7k8OKFXL9w61LpfBY9l
	 GVnqFcyW6/W7Emzp6hqqEaxARA5Mw/5vKf8u9+SyjHFoSWaV7jnRsR8gxEHBQ3Pmga
	 QaVJ9pa/a4rag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B057CCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204119369.19923.10183206279399393993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2589daf689439466b416194b1c7aaa7c44f4df8a22315aa3ef49008d9d82996
Date: Sun, 21 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782041193
