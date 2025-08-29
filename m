Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241F92DA775
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756457994; cv=none; b=cmcaB/8OlHpEYr/Buws6hLPpgGZp2XlCDRBKRrkLKwsh8cy05+aFlvEhWYLMOz/ucCkbQuz9w/Vuo0D666o57fegiGVuwjB30TzGg06ZjxY1fX3hRxm/ifX1/kVkaP1eV1QmAmsrYEFXHyP/9gi8K4p2Ilkp+D1S/nGIx9403/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756457994; c=relaxed/simple;
	bh=FsIiqOve03FwlVrJg9qE5vYK9WngOkMnFJYWXrtBeAY=;
	h=To:Subject:From:Message-Id:Date; b=kwHPVSvUixJVM8daT4b2Jw3r40QYpu1SJvotWrX5jsxHMIkfpCxVAIHQcxicGpKmkD3I6W8s35XQM6K/0ClJSVjn2qKbM0Kg1cKpg9Gf9KIGenWUCta/8nJbNMO1kWlACFwLsetFwINF/rYvBCyuTPe8hMReyQXkT1wKVQYG7yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e36cP2x3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e36cP2x3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756457993;
	bh=FsIiqOve03FwlVrJg9qE5vYK9WngOkMnFJYWXrtBeAY=;
	h=To:Subject:From:Date:From;
	b=e36cP2x3kmmp4QupmB7IL1qGJKqg6Os7O7Gwdygb5msHPidMKmMqElxgbnRrd6fK1
	 aFnG4YaeumgOMOyGuwYUybKxurbWfyRwPnm7/ecgnHHir85yUpw0Qot2q58Ll+mx+R
	 Wd4DUuJXEeGIduh9xCnZeJlz2LrHLepNO1KSJJc9SXoXK1J8CVYvyoqPsKcIrdxEZe
	 oJpmJYjNZ9xAI5OAulr/f0IfA2z0cp8jBSIsG1GfZ+wScIR9b0RZXV66FZ035GnS6G
	 Tnf3RQJ61D3cAnDfYv7IqbiuBHJ1NKL+cBwr1lo1jqB6QnTxmGcEL+Vd4cYGeS5Lp0
	 LlhncMeJMkUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77AC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645799357.5913.5396634530608755293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c8929300acc5f5bc60a0eaed280a67afdb397a8fbacc3361d8c57264069e8f
Date: Fri, 29 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756457993
