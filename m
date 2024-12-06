Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392B61D515D
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733513154; cv=none; b=THB1VZOivaUnglvIux9jCMNpokCcRnKA6zPZFUoPgNdLR1hoQc8jL78PIHdxBa3ol6CQV+XKooqo8UdVCglYBQeRofhk307KG00S0gLb3jFsprkYOSrxHJIbLDFUHJNyME1D6r28afUFtus8A2r22fp1BzZMqnKWX1hF3C7fGGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733513154; c=relaxed/simple;
	bh=y1E/UmUNAnTuumSZPxMlSSkszYflgzoZk87AjE0cXYE=;
	h=To:Subject:From:Message-Id:Date; b=jSqKgTZoeHAzKew87K21xZFtxWGoi3A69JPGykjRKqWj/5WG+hLhTSQ4cGxZDl+TtQD0eEGJxllFYT78FFhboZ079+UBHQLY8eAveLSvjUtgzHh0XljfdCNwAw/79+HBL91p46FvvRTxFoEbpWe31Pma715ugF2w+2SM9szQVFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ0gE4YB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ0gE4YB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CCCC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733513153;
	bh=y1E/UmUNAnTuumSZPxMlSSkszYflgzoZk87AjE0cXYE=;
	h=To:Subject:From:Date:From;
	b=tQ0gE4YB8jo4C+9y7GOXJpO7zJX3kKKZKTrIAjlQEfOvM1O/3oIOU8bDEw+GxdRs6
	 EcUtsllAaXAm86aV1yAdYOq0xe4SIE0cjn9LgOg5ha5dV6e9iMCUNjM7bUCvEaIIAt
	 nXyMnwFCax9dOf0mGkdM1Qngek1MmFqhKmWJWDY2Blb3O08RM1xo390uylRpT0B307
	 d2d0Z9dlU8vF5e/mP5oMwzVKoAADdebCIPdtOevcSq5OTkVQEMTGWhOcGqoxIf2gsA
	 IhZOnZ5xGJM+EBwJopleaihaILeBj2H/j4Vb3UeJ7b4S9lgqYs7A9QwEbhHK3F5VNV
	 YXcXLN7P1wVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE06E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351315364.32517.18038423577521340757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e47dd812a88b1a96c0ff233f8b7bcc3a4d90b1ea1c68f9ba859a2b873bd82a
Date: Fri, 06 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733513153
