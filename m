Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5EC37B023
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790504434; cv=none; b=QrxvQvJhX7iR2u8rhQQqo80r2siUgXqAg2LqjDIlaYLHi+JP/76/EM13azOBNzlqVJWGclEXEtDwiU+RE8otR9cAURsEYesZ87h2gUF+cNJd8OTNEHENiWVVOVxBOAGONFyyGZL8u1YmGLm6kRCAlB1//6UR//uBpSAESkY+8jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790504434; c=relaxed/simple;
	bh=hkJfXMcy0yLOFosZB/fMECsNTI15NT5hFbxGwm/nUOY=;
	h=To:Subject:From:Message-Id:Date; b=iWSew/er4Cha4O2qHVSOGz03G7IiXG1Ag5kxE8o7ZxVCr6X/Jruq1QwLZZ2qA+yPQKBx3TtcTWkCenoCic8qv8xzFgt9KVR5J94IVI+fZL+H2Ll+/QYDTVAJBkgPWno9ltEV7kipZgS11VkxRamqOja2tvzXU7QFMmkpiicOgfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI5W6Giu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI5W6Giu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC98C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790504433;
	bh=hkJfXMcy0yLOFosZB/fMECsNTI15NT5hFbxGwm/nUOY=;
	h=To:Subject:From:Date:From;
	b=eI5W6GiuZBRyubKZFknq2VsjS8Do9wXCLRGv6ejhmwK8T58cLNMlrMNCT5ikndC2D
	 j9z6xSGe7NlPKzowlfVO0tc3Ar1TGxC8YJfjCK+USI+asjxbwz6Nz3zD2nqL3Y9lB1
	 CjyqYNqN07OuVfqnXEXp2yqmu2Zp7lmQUItz1B5vU37WGyQm6GNERYqavQfxW+/eAt
	 4oo8VfyuiPIt7tIiULwHhDSJj9FBYXom7tIpSmDyOkjKx3WyhKUFq1BaOD8yKu+ZfE
	 5L1hzxpm/UWF7/ndxV1nWzPR2PIbBbnXVB5HzNzUUXmuWXg8bS5c5rhLCVR0J+DT7E
	 I1YXwhV76LJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8D5C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050443368.27066.7695919331512989882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7464f7cce4bf6f88d1bde993dd852cc93a9e4b6f7a34bcd54fee240ae697e1
Date: Sun, 27 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790504433
