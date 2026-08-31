Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A7455162
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788187234; cv=none; b=GAOXO1sOr/FQ80/0SSvtU8SlB4W6nB0SypP2gOeuvgq3u/GQhdSaBIa5dc3/1XVJ7+IN6fFWJ1gG4h1llqyrXk7vHNu+WepfG3jCRf1ybxrK0j9sfitpp1LiI0tUtaTVbf9L6o6zuwZh88YDr5y6XWpXdWzM3itJr7YzCIbaE/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788187234; c=relaxed/simple;
	bh=F2/Vnor/58YCiBDw/KVBwwiywksKNYnrwAV4RS2RkdA=;
	h=To:Subject:From:Message-Id:Date; b=nRKznAdbmsYz5CLgWAjiKF7Dn/x8xBUqG9mSbOAkar55vr+FhGTjuCgKSRtMwOgsbBPwMz0EWgssa5mMUTWp6wG+GcbxXb/HZDOHw2TJfZonlhcY/gQWOCOnDOi8un5KEFaqSLXzU20bdYPY/F11wUKHWPIGd6ljKAgQXxjGoTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmZY1J+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmZY1J+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE53EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788187233;
	bh=F2/Vnor/58YCiBDw/KVBwwiywksKNYnrwAV4RS2RkdA=;
	h=To:Subject:From:Date:From;
	b=RmZY1J+P5yQUdZtCU8tL4ExBYvh+U6wcMUQjicR8Ge9/eEamYAB/civhBoJsrKAru
	 JBY3HF5Wf9R3O40cnMuR7S6pjUYzOZjfRhPoFZft5yziQvnetq5Fj3Y+2Heu4pdRIS
	 iKSwjYGFplr9ldooUWuvA3ULuOfGkHLrpNJ8PHcn/7mN64NaJhAu1m7MIqlCnhwoVB
	 0294/we5zbbDmIngtTobbl8kxSx9PgD73cKWvZ/MT9v0ftECNwzPbp+4iws5duJgNG
	 Ogrm1p/CpyHZqJdgEMbA7hMEi0NHMrwu9VGDN8KB5f3IfxUFO8shmIDaF22wQKstU5
	 O1M3w9p2BXPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A6C624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818723369.12796.7078262120303844674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446e793a0dd88f9a6e13be4b4cfb22a342fde53cf83eb8d7ec83cc96abdee93c
Date: Mon, 31 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788187233
