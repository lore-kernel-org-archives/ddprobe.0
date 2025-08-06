Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210BA1B0F11
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754513994; cv=none; b=eQNI9lJRznwE3O18ffSFym96rqogw7LBjj0zmI2IDLjthA5klxsVWEgYhoUrJNHjRbjW5hj4ppbUKTW7IviaD59zKx1z7ZPLMwQsAv0Y34mT9RGPqVowIqR+hjOsTXLZL2i/Geg3y4xZ4zZNVbXXVoF/VTTiN3YSZ8du/FjCi2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754513994; c=relaxed/simple;
	bh=2UjWzKbXtq2NhOn3Y1yH30ouDyejHTAXXlqNQUnHuao=;
	h=To:Subject:From:Message-Id:Date; b=GCAb/tSXSMJFluN67cR7qL6SqfV1W+7Tern38m2V89JPLSEbxTJ78BHZJIl71s39LhZ6QoGJDSwYJSMXWlig0Tmha4s1ZeYQB+Xx6Wl2CdlR9z0t1xK2jFgzsYi8Hs5i+7JbZ9Ac/E87/LTfhaNlcLtJ/VWlqSprlvwQskwzvUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U30uh/vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U30uh/vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF7DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754513993;
	bh=2UjWzKbXtq2NhOn3Y1yH30ouDyejHTAXXlqNQUnHuao=;
	h=To:Subject:From:Date:From;
	b=U30uh/vsLocKyWwAlyP/HvOADRzYjTnlnvlrsXlehQzzDK943O9aQ8vwFkCSLsGe8
	 ymbzIP2tQamR72LBmUc4VJ+gDzJC8phXnn3wCkzmQhnhaf0wOq+0Be3sOgnSbh9qLY
	 84MXdFZk6EUJyOy8fTOI12GYAWommzmR5nwtQSSSoMMOnBU8qMANxNIZPubGvRbPgv
	 +QTE9HRKIGtMNaFTCErQu5w6fi7Lf3GVFQyj0VeTYKwsop/qT/OQRlbF/ffOvUyb4s
	 RRpfYrw7Ilqbs5QoMbr+YfpbknZZ0CpNjqFlekjiYx80bI1V/nMDwyHnPetgXZ9bMt
	 VK1MH3RGODMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B5C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451399357.13084.639693191038597939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddb5cbe85cb31fe6183bceda8c2d8ee55197a849832d02d1202075eff4b2f6b
Date: Wed, 06 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754513993
