Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF178BEC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750994994; cv=none; b=MzxY6hDd1b4sty+y/MMgHQo3NJmHBOjHa4p888Zy0nndny2L9xvW4PXxsFGpQd8tUTp90vFQZJAJH6WqGYfDTev0HnlItLMc4oMxmiwr8E6tcKeEdG8Dx78FUcVEybDdYqUqIsP93VMwQ9m8/Ef2esXf7QDuvFnX/jtDSs9753I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750994994; c=relaxed/simple;
	bh=BsGU6ZAHRzyEHjxnYulsJ3igRCYUECyo5K+IIOfjATg=;
	h=To:Subject:From:Message-Id:Date; b=gMkteb8FCVvhjS21pJUycAtZF2IkXqnO5nWFlBPvz/mGdYME4bddcs127dm6zqzBZ8P9Ll9mPaQZNxq1IbcRhTHGrxHJAmLPVBpZ9uV7eGtlBda27lw+XrM+YeYDZoRZzIbx84pRprIYLbRma7koITto3VZqOawzK8leudDX300=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfIjJNOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfIjJNOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40AFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750994993;
	bh=BsGU6ZAHRzyEHjxnYulsJ3igRCYUECyo5K+IIOfjATg=;
	h=To:Subject:From:Date:From;
	b=KfIjJNOaoZOdhRdDRs9TmzYHWF7Es2nRul1l5TYIGXsxwr3NK01yZinsOIjfM5qX3
	 TxjTD9TpBt9eInqzeX9mVsAksBGB/wqkQwG+MX9RjPw5ckFzPAnJ6T/1MK0Drumeti
	 gCJmqFVoLFdAODznWzkb0z2IQQPrjA1m6dVc3fw+YGAcyv02Zv7zhbnPq+uNxuFNFn
	 FTOY+SY9MQMoLOQdEzp5vAjMeJramuWfhRU+hGFCmCUW4RRfYC3zBEAayGkDxRgaUI
	 9/opPk5W5vO3mdg1xluD7GuwmXGQBpIzWFLzT33KB5IH+HFNqrsVyM2EJacn5zpq5T
	 a/irhDhtjb4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ECC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099499358.10313.15233970574789733423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a96064c1dca7c770d0b4cce394914d7e8d0ed6a7f8392c9800c55ff892e5eb7
Date: Fri, 27 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750994993
