Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C137CD28
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780394074; cv=none; b=FgOI4keRrCXs82rOk4fhSw8pS9DZuiyW/VRawUmDObzMaZv21s03rx5uoFKkPMCsn3g2lypdmxR6ANxRCc8wfOgVbJ9vdY36J8oIKCjM9Ncbj8Sj3BJWLaGJw3StYAOnn0mJSu5ZRYJwo9/IknBgkyg1pDAYpe1fIy20BlhCL1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780394074; c=relaxed/simple;
	bh=WmBYt/cNInfdS2us6QbOvLFJwd8AqVhuB9SM45JFQLA=;
	h=To:Subject:From:Message-Id:Date; b=gtt5uGdm1CUkBBTcNsK/2T2aABDXq2zF4vPKnI7AUoufh1Cs2agNgW6lcDJqVTZxkdxgpQHY4XmLaPKw5r4tz8+zOuPs1Ges4kLBo0K6qCK5Zd3ll3/UFqD56ETtqJyzko6CRzCq3ylAc9frZE0Ii3i/3dWDGjVjftBwNu62Vto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKGxzzQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKGxzzQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4540C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780394073;
	bh=WmBYt/cNInfdS2us6QbOvLFJwd8AqVhuB9SM45JFQLA=;
	h=To:Subject:From:Date:From;
	b=UKGxzzQzz+nylXq2qv49otWpT18hYslpCpmwY9JCdO5/Gw7HRFwnAWKt7ERJzuOou
	 80/rehPxfOeHdStB8SekyQuatSqCOKTJfigvG1ZIHjwzqMfZ2sFt7+LM+d3dwXQoZr
	 Z/1O3jC/xmfspnpQ/zPNUVQtQANXD5oscfO5DZ4NNsp4HtJZUkCfG3tOzIgcf3vmFf
	 eNeJKnqaML7B8TFyyhtmMf3g6BAthNeNTpRedsqIgqWetbsCxjqAym1/U9zCgoHNt6
	 CMDJlMGN5ij9ql3pUAexHaAeoXEGuKPeMC8OuFvNYZnEb0atwhWLM4KRn/y5SDoD1L
	 yVamXhCRhjHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE1CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039407368.24765.2546733139832379054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ed4746ffa35f99e384a0282de5b7bd6820f3a0efc6477462729057cf53e0a4
Date: Tue, 02 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780394073
