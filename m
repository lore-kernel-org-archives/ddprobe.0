Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FC5322E
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743257996; cv=none; b=H3My8QKSKnYCdmx7ZN92he5WeUz6FAWLtQ8FkEak8Phin+fK6R6SATJtWD+VOsG0fw0tzdKRLH+MdPzLolzvHMNWg1FnMbsddJn7Jh352AjrwxHkbdX26K36xQ28YDXCORGojZZTJ5br0wKooVgHEuLKDDkWjbdllQ0SKFSqBGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743257996; c=relaxed/simple;
	bh=HxvwpFffEh9zfDwWsu2nUSgtjgxRnPGEY4cHf2MwQWc=;
	h=To:Subject:From:Message-Id:Date; b=N7G0zvHfk21xdQgPcpX5RUPhZQvo3kr59hhL0616x9l1/a0YOWvwkQ2iwtJ5DVxTUghoirflm0LRA2WkP02u5OrmBSS7q8QyzJA2h/45/CDpxPVvs2Gw0ZvjGWGba5kSn7qpDYvSsSEbbpZc2vf2d2GelUzPuVywRPHWENuRD14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK2OTUmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK2OTUmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B61C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743257993;
	bh=HxvwpFffEh9zfDwWsu2nUSgtjgxRnPGEY4cHf2MwQWc=;
	h=To:Subject:From:Date:From;
	b=hK2OTUmo9I4qwE4tbX5dFO2eptsIbLlxdXVXwvHUSr5tfg5PhdVK7FOInYY8HGmwd
	 5WabRlzZsjd0NJqfWOz+BI/CL7/Fekovy3XdcCPb4+cYuo3VbPnUN+xa1Q6WGrn1RK
	 OdfItZorbWLADlCqYT7Y5KmLssp3nOy5AulK+IBEuxe4iB1rYcXt0/XXcyWv/+ALsm
	 CYyrIHU9vCHxaIVFV1lykabddbgB7OyJsZEvh4p41PgLqTdyPEpXHHm0AVrPxzq+mM
	 gewEh+jJ6ZbVwJAP4/Tz2Wml/46/KrOzJT7YDJwRD+LP/T4uj4XBAHaFIvpECy6wW+
	 CrUBWIpD44O9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AEEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325799363.24850.15147229304264368090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66a55796466b317ee5fde3d433f2db3470976d051c0cb1d4256d6eb3e07fd2d
Date: Sat, 29 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743257993
