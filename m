Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD34A38
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713140963; cv=none; b=NPEBgfLXqpLr3myZoKmKPfY7SEI17cJ3Zpm4qiAj4IUPIcarEUUG2AAhrrsSOhxqvMdAFRubKldLTFgG+4/xXjeBdzrnddUnpa8FdeuzQEP0guDMUlEG0RJZ+RiqePE5hB7cv45xf27aGmYF7/+gvJRurYxCoJqpVTcyLA7N+eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713140963; c=relaxed/simple;
	bh=R5bkzeeN9pdwYE9jIMdzQSGATFPsyf+0dbKaw5ZhnB4=;
	h=To:Subject:From:Message-Id:Date; b=RVeZXAvDiu7VT5tmpqiQTOSr3HN/Xc4yHA6DmKMOHIjCCejdWjzMSjIGgnqxyeEhiaEnFEXn3xQSZEMFg8sWU/We+F/Mh9sy8QJbot+l+Fm7uFqvgiF4qcAUW70NVUReGhfbV6H1NpJmbHR0u9RstWu5E8kp5KUDjRGq8D47HXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APVYRgAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APVYRgAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4941C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713140962;
	bh=R5bkzeeN9pdwYE9jIMdzQSGATFPsyf+0dbKaw5ZhnB4=;
	h=To:Subject:From:Date:From;
	b=APVYRgAcnPytMTuXK/+BA7maTm0rg/4+VVIxNgVU8YOEtOt5wmGO5epgfFvPK9lve
	 5g7jeGPQNDX9kWHdbNJfiK2jQU/HSC/bjixn95ghDVeEtKsFWZfFeKBT3wjUQCKd7y
	 KPA96On3ZolBCPPhqc40VPIhikQJ1Lmfi+vVrwCD28RVYA9hEjdgmEdKvTFXkX42/P
	 clGMlgXskZrvArWAUGvNSEz5wxRbsWV3nxoBXqw2MFB/F3vmI/rhgSBWXS7LhNuLwr
	 MioIoAy0EBIik71ITu6iY5UZakbBgiY0QVaOHMCxNC2q1wuV6zCgFlO+Meo8WorRfn
	 MK434AxaBkQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1DAC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314096276.3012.11895529911641832195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353db5898209b9a54bb5be6b560ab216e916d40c19ee71e708e0ddf7f1004915
Date: Mon, 15 Apr 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713140962
