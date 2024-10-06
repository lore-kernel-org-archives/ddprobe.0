Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3599C28377
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728256554; cv=none; b=ho0pxBF+IzT2k/fJLkuH29Ji13J3WONaPsDF+Yvx5QgJiRTsXbpmVy5elZkJJ73oWyMowUjyQ9VLrM6E0kcyhxZoa5S/DJKouMEUkMNKAqYLKAA8E8lxilZyEbCN2Zf5gbhnieyoC3vkZ7p2meZC+who/Awos2NCohO/HgQKe1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728256554; c=relaxed/simple;
	bh=CCxA4I7hfWhS5XwGyFGi/lo6D4X8la+cfgUvZgOsQQ0=;
	h=To:Subject:From:Message-Id:Date; b=RnVdR/1alxmvOreva4gfCyxBhgtlnoelYPF2umeQWu4uYd6FbC+eWnvdp+CF1MdEKmULSsmrjBM5vsLXn3hwWGudCjVjIEqGAMXRbgWS8ORlgVR0b+9tTrce0Mlik+Ctx9S+tRAsIQftLBvW3RGZCGA1GGuM4Giapi9+I/WJ4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlXmGK4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlXmGK4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12D5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728256553;
	bh=CCxA4I7hfWhS5XwGyFGi/lo6D4X8la+cfgUvZgOsQQ0=;
	h=To:Subject:From:Date:From;
	b=LlXmGK4PHy3l/QfGbmWuTZRSv1cd9vdhLSoVWjz9wq9lT/ZqTyqnknp1V+oOmF5mh
	 JvKorQXf7IMj2wiyV/Hvzhk14vGKYobZTEEmg3duwqiiGl59yT6+PZTQ5ThptVvKkx
	 LGUaa2Elw5Ts9ZyEFhFChd+7LnJNKpnsVcwItEW09igMmNu1gUyGOtsZbVW0c2XV9i
	 bJJ+6820A3CtSD/uNwyuNaTCe3UUYZmNMPBTX+oGSDi0711yZ2+6os5ThvPvg3tktp
	 ACXiYlkjqex52F/Itx7bNPjPt24vAt70jT+IVS95wI16irepzasTQhBezPK4ju2JZm
	 chbMU9r8AlQtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99385CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825655359.15581.4286627171705675012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afa9a747397c49d4b35da062eebefe0f0855a4a5c8b24a6954161dfb0e87712
Date: Sun, 06 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728256553
