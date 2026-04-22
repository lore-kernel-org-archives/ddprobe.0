Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9521CC5A
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776838054; cv=none; b=sVS7PJpT+sCXTe19vQ9ZSGQGc97PrYRd4O053wF1W0nk0jXof3/p4FRhk7BK1gk4QlpqdeIvw7cWaRSL75aF9FGvrfjioRUIkXWBnLVRd1jcIkI3xovO+7BYLBDC4FS8Len0VbqupXuMZCqFRGBuKh0953pjUPb611OsyoFhGyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776838054; c=relaxed/simple;
	bh=xZk4tlL4EetLToPStu7qtGS0mbU0M0AOpZ1k09qNnHc=;
	h=To:Subject:From:Message-Id:Date; b=QnDkKZjyN7Z8owuHCCoJCa1avZ3g855sQoGi6YvVmwG7fxGSc+04k1HtAXAo559c6TlwAos1nek9YzHFbxBXWf4+9CT3TG7egWVVQuPxsEcDCfW98LCe2kD+GoyyGPirfLjuODl2Yn0W++uiiPn9vk9Ybjku/HArepuqNVF/UVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg7PlRa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg7PlRa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF072C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776838053;
	bh=xZk4tlL4EetLToPStu7qtGS0mbU0M0AOpZ1k09qNnHc=;
	h=To:Subject:From:Date:From;
	b=Tg7PlRa3/hYJJepZeCqIWWwVIKQcVSNbbPHjrMozWcT+E8/Za9od477jDlv6qVxa8
	 0s9NOPJZ5xLSa/1gny9cTtW7PuL04O5dAuZnw4Ox79DwisbHU8eXiEncr8iXpX7Hs2
	 FiFd14iJWlzvPCnaRoO1LYdKREtsOUvbB5IqUvqtdRgM9oLV45YqwH21hA3cBhwnfh
	 8eV7DjSP/lULCnAXELoFZAmKoNSzSEU3MEoZ7TITlWSuMazaSjOAGoci5/Vvek6sPR
	 mYVPYzfVtro5DPAqYls8eZK7NxVgU7DYHpb6P/YD92EtaD3gMiT1/ms4BoT750FaUA
	 YNOESyIgBtWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F1F94CCC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683805368.19038.4905639434823622504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b848a6fc58874b215c90ce5289d336de88d0a61cf0ed1679d4a3f629b01f797
Date: Wed, 22 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776838053
