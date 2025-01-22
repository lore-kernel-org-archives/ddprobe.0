Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359388F7D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737581754; cv=none; b=OUGe8YzAMyo3pumJgyCZvtOw8s7UAugSmz1d+rk+e2HdBpkvhdnysnjSA5GoKNDC6sPDb/3rD5/Emm3y4xIrhEd7ABy+8NAZptNPUTDMDmDP5mk/HrGmOtHEcJBtkI+wGhUI5TLXdWODWwhty1SvWcKWo0PTBn8CH7VTkjH97Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737581754; c=relaxed/simple;
	bh=eJm0bE7g9VAYdBcazUos+7Hmk02eHiqcsMRLYBZcNxw=;
	h=To:Subject:From:Message-Id:Date; b=u1HaO9pY7HTZHLukN145CB6QqKQc+SkCv+ahfEQBWjQhddc4kxeXyYReAIiJoHWjraTkAfpEBlBjoGyeuZG+TyXwyB4/EPO1M1KosrJb4A+scR0iO1H6Wy9rXmvu26H0jxuWbw1yMiPhNYRxS+hVvC8iqCAbgCogaaMrU1Q/scs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bktKIjBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bktKIjBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D910C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737581753;
	bh=eJm0bE7g9VAYdBcazUos+7Hmk02eHiqcsMRLYBZcNxw=;
	h=To:Subject:From:Date:From;
	b=bktKIjBS4bjI9vEz8/CL+AxjjgI2ov1eipIFsQpg8G/LHPhsdIbbRF4uuwRVuL1Xt
	 tv3pCXIgWbPhm0uGWWnHOAXWjFu3ZHz9JGe4Uo1A+nl0tumZSvQ+AItkiQdvxo/h+T
	 CW8xtTeTVacpn2HVt++sqs4XVTIhGwSXC6b1O6zOL5N800O53GDVhubqSdczM5yi+p
	 d0yW4Ilqdsza1BPlCxb4vv5NzMODfOcsHzXlH/oMXlpW0mo3pu+uc5DCehJOmHbZ6K
	 u9ucXj6TNhGtw9A8VduxqyDTSQhAwKCkxYwgLXAXLN3z8bfH31xG5NcgzUQltpckZu
	 Z60c1v8tdAgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075CC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758175358.26659.7930409755367589124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03ed95e09e311adb57fe38ea862008bfdfbffeaf7c01d92797ec7dad3dbc5de
Date: Wed, 22 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737581753
