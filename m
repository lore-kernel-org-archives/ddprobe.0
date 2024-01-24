Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BE317548
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706083697; cv=none; b=pa73Vg4acuxwHbju4C5zctXCsQ0s05LuFZcDc/s9cmrqiTGTcx0vgVJzxl0UEL6tLtUfb1O4lTs8ns7806dLqPodVHQIzXMxx30koZhUQg6Fi9BTpJR/OUOrlbXaZ2k9O9puXLnvQAnn8aG0eVXBcxrueQU7TImBmUE2GCVUwI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706083697; c=relaxed/simple;
	bh=knSnUijkzD7LEjE+BY/NyGjQpD28LOHW/MB9LNECh+A=;
	h=To:Subject:From:Message-Id:Date; b=AMDPND9HqESu0fjnKO5/f4r09Z9LfK6DFZj8csPizYCYYHJhKpB6o4pQy+6l6DnaCyN58mNPzY28xwkKkciZyG0LXwcwqoXiqcIfwLDxEH+ubgZ1eOKWXesMKnUkLYpFpl2wHj1jcOQIwCW51c9q51mpV2x2gpkDdWjWPPl3++c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdJtpoAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdJtpoAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87680C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706083696;
	bh=knSnUijkzD7LEjE+BY/NyGjQpD28LOHW/MB9LNECh+A=;
	h=To:Subject:From:Date:From;
	b=kdJtpoAMNyKNCVf1pTCvHRq1ol/oxdK+X4DyP+791bQkQkVFl9M8g7OPg9VQXt8DL
	 X9eswx1FK/lWjq2LQ5BMwIqTPBBZbR1XKIEpMFgeZF53HGkRR+wBnf+hePBvUygnyR
	 W5gctcvBVSqE9DhB2HaTF4xImdCnwyArsZDnytrgr9g4euGqFJD+bl6YvlwyjGOMf0
	 G3KJMOIJfACZxckbuZjefj+Mw1/grg+c6cbFjO/3MrEUhhFXJDknrJ2wmhs1BhLkMf
	 fyGFyjg9S9UJKWxCEE7bJQgHFFwlipY4wmexqreWRTtXHH6FnV91HaLXlsgIXo9tNK
	 B79ymZ5QaO8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F1F5C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608369642.19168.12185725747058475802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da18158058e211987d7680a5de3733a79f6d10191b20f7dc926a601d1daaa0d
Date: Wed, 24 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706083696
