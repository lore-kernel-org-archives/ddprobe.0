Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD4230B533
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769016234; cv=none; b=UpE+W75upSlbS9BLZX34gWdgYcjOXz5wffCu/g+UieFRZFQP6SoK5P/HZaEtGpY4peEKzEX2d3hzImXvCPtcrSsHFLvKPk7uCt7Baewv+PFXEwqCvehwVOJU32LQdzUS7hksQyU6rBfwfkTu/a7xVPbB79DFLrmHOPoC+EynjUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769016234; c=relaxed/simple;
	bh=//mcHSsrT66fVTFT2Vk3SnhD8mop9bV7s3h38XDzJNY=;
	h=To:Subject:From:Message-Id:Date; b=EX9hUQwAP04IIrR1M3DZPfEJ9Fg8VwcOZEGbC72WlJwOXvDGsd7meTv7ZppUG4ecjiSHDcLvnCOR6/Y1jOU65KPpceedwx5lgMhjqLwQniq4NwZJBlc8vQ3o4gc0Nk/fWRL/XhsALJv/x1tRM/MpvKH4xTtrnqaXT+YeDSvRIK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgz5hW15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgz5hW15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC2C19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769016233;
	bh=//mcHSsrT66fVTFT2Vk3SnhD8mop9bV7s3h38XDzJNY=;
	h=To:Subject:From:Date:From;
	b=Rgz5hW15Txz9hhHNkPOgKUFRU2k84h9A9qAnuuw2rnLQA2ZvlmJ3/rbSqG4bVCitA
	 A11jfD6EvimvtlVnvnGfAiM1ipBueMJt/S3Zl9p145iNMNAEBwBw2LyG2pt+hHvjmh
	 ua5SW8k5zOQA3qfGFtI2diCYRedoE2Sj5gZMscMapygaHGkgmMfigswYrLGrT+TWqH
	 LbqNYBE1kUMfVLE8RX+CqCoIWzRzEy1aWjmC8WceMiQchnJ3D/IdmowAbWErlQTWF1
	 IyvS3EB0dQQ15UqreNo6R9vMevHSnxZoPrp3oPeZIDyqnWJCn5HiwrQGvC7gXx6F3O
	 IQVbWQxN5oXgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C3C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901623358.7124.13466060083887599419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e192530f028b3bbc7538fe238eb6189aef0a32fd6d26882f982e78a8bc34c163
Date: Wed, 21 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769016233
