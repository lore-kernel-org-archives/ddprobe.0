Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B941A5B9E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782580714; cv=none; b=bh4/RireOxg6I5rYtsOUQjXxlNl+I3i8/PXFta5oausbbUEMLKP2eW43qC+mQC6jVFaNdLnDDW2OSXTEDlDB45wz2ZGtp1A9jdQRadGezjSjQZD2NYIyBJlFKmTojY+EuRzb+2JPxYnguwRX4RYjyPW71ajDevNeOp54gVZnXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782580714; c=relaxed/simple;
	bh=JSSfYMlT6HJVPrK33FVysZzdVfpaA/mMot5+LUmCEa8=;
	h=To:Subject:From:Message-Id:Date; b=DvJgZ2sgGvyS0RqYP2JoNW2d/Tppe9TaOy7a4493f7sHD02ebrubeCanaeEw5L1hieryXJFlJyuWrOiTuhWBTyYfob3FHa8wFcnM1Ez5EWdzPC18Klgxkkh9MPMTf2okOiU89vaOJOL8j29JignvgWdOrREndP59awYOQyHtjv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5PBOVTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5PBOVTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FC7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782580713;
	bh=JSSfYMlT6HJVPrK33FVysZzdVfpaA/mMot5+LUmCEa8=;
	h=To:Subject:From:Date:From;
	b=V5PBOVTCdMy6oudJlw8j2SjwL+gJUob0vx1Qj8ViITgMxBfNNCKcNwxWWwMnLp1Nz
	 RqcuyQCdSVnVY9mPjQxrRmusv3U6ASTD/WvUWvXSIc0dUt2VuoXrHtCvVvF7cfrQBN
	 IsAZI2j+QwGYFwjhnI0i9pQzjNJRhMysLT44nFppopt0nsXRF36yW6b+milqyc5AfF
	 CQ6YvxHVZACTfaohtdNGmrXryEJe7WYdH49aKd1d0P5oBfcT6G3dn0O9+IhXqsLGnZ
	 eJF/AakT2F7LjFKRbRA6al10TlR69HxbdcT5SDfrHNa7C8ecoKwBm5FvRasYub4EAI
	 3t7yiEPzIyVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F07C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258071368.25956.3677501562139631188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c77c6fd7c012582cc2b1e9cad381879289eed31960bf71a62b9a0d50514bc9
Date: Sat, 27 Jun 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782580713
