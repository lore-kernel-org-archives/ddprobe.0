Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238881E4A2
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726109154; cv=none; b=ec6tLcljG7cKBt74waUqyABlsAm0QWLt6yxFXPGUZ0jnFYiWF5rn3/D4MduxSjAkYnVOJWc5Kf1aD5qjamHy1on0ifR7xDKo3jUctsFNzZO1da4+Fpb/mrQow/jIJdgh9lIdrBRwE4fvUhZjla2tAPp4v1bVHxMBpOVZwwgT3kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726109154; c=relaxed/simple;
	bh=bSp07SDJ9sMfD9vMTxBhZtbEONovaxNe+1+FhjLbapM=;
	h=To:Subject:From:Message-Id:Date; b=K00NSeQItdHxk/ocRXPb5sYG96PmASi2svwQKwLngo74hSsp7Ju3e9z1j2lFgcZ8IUa8S5M7NT0nKqXkYaObEm8WyvKau6C2e2OX+Ol0HeBypIr9Q/ijTLfSE6i2g1i6vv43muv09r6ck8+I6SFjvq7QFKZU91VWfjxGR4qwIeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMU7qRfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMU7qRfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FDC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726109153;
	bh=bSp07SDJ9sMfD9vMTxBhZtbEONovaxNe+1+FhjLbapM=;
	h=To:Subject:From:Date:From;
	b=uMU7qRfVVzvHlvMX8uh7Keh7OoYZh9sRgEYwgtO0Qq0VSiPiNXqEUiGUcm4oSKrFB
	 0jOF16Jpnx6O4IhV2a1rhW/Z+iCDr0LZGwit2zT+H+ebbmS52eLXdcsbCGP82cbmfe
	 IqUAg8whH4+8FaVW8xTW5YEg9L0vsF5ResAmWS7IfOmODAk3vPXmJAoDvr49zeifUG
	 w/eWSX6yr63pjzx9cpOMkANhf0/quub3c7IEdplbgJo35a2I0xalmAT9OaYJtmCXXj
	 g7K3kyO0/oxqX4Wvm+rzK+QtIqTZZGIISsoAcOIkGrOPfda0N+Gpylq2oRBy+ojfrY
	 ODgAIANP1KUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FCEE57FD
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610915359.25425.16469621759957851446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574108ae21d837410f535f93fd3ba25e5109d2d2e8cd2e44399e9fbdc7654135
Date: Thu, 12 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726109153
