Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A45F31B80E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791484234; cv=none; b=A0P3z+KF0jOfSbrG6bjDreE9dqQVLP+D1kIlZAnik/zsIsZVFtoXwyHFXESjef2hPcqJUcYsFXrEb+ARCNkNoDpij6ZHk5j0EYZG8Khk1+aqus4ePHlgp4hAEv0GaluRJzFgz9e47dA+mBR7NGxKc/x7EqpWsMijMYSZMCiXhPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791484234; c=relaxed/simple;
	bh=1p3Fhm7qSEYwjqdkWgRFSm+F4eWuyI09sKGstDGfzBM=;
	h=To:Subject:From:Message-Id:Date; b=hH1JoqzP8OH88mkdFj4joDDp7ce14pQAWwGyfr6vzboDeAwtbKE3CGymQdaX1dh3KJTWNbPuhReZY18JCY1ALkO7ZgiuVcPsZESPHBMeNfIjFGhR8aM+oREHzWHsI8jfP1f2qPwHSUcmO2MU35PuVEDnh3b/0M0UjG/AUPKNhYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoxq0Fl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoxq0Fl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0199C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791484233;
	bh=1p3Fhm7qSEYwjqdkWgRFSm+F4eWuyI09sKGstDGfzBM=;
	h=To:Subject:From:Date:From;
	b=Aoxq0Fl5YE7wVfCZTJqliyK09DReoDqZKipJIgA/4C5E61JzKhUiQnUtRvdQujmNY
	 7jv3HmbsIurs2BMtJLn1+6olaMuK5H3HX6mpEEnQIEv36rKzi2KzQ7atAExhd9NZbH
	 kW0HVsFgtI3lPRKC3sGgAvtobgDsUMNpekKdJ7wAuv/UYZ+R+vFNdDF1ppFtGpmi8d
	 P8TBk20MMHl5h69dPpVDqCrihVXSYnusDY/o0F35pyVMJXwvjsYcLvuJQgdC/DTXzi
	 ySyBHM/qtEXoNQop89c6dmzgAR1bRfu8KxDkPojK9XPU5lEBzfpyWbQKzD3e/mese2
	 YW9PhD+J4aBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89FCA6011
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148423369.17683.12966327927380927565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ba38df7a3fdc623710d668976eb8da2bff9bc514c4717f03f91250d6b31b3c
Date: Thu, 08 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791484233
