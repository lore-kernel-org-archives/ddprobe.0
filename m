Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7AE244667
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785678634; cv=none; b=QvaYL+d02rk+eKouu2ORRkPAu+h+yx6cMUA4jeGO4qH2oc28NC7E3+0hvU7Mc5TR6nrJli7yI3XCcK8WJcy4j9Pv+hU1W7CXQMyYBBVFzdqrd30y3AP0yZsZMb9pv4xZGZl14dnQFVETdzFKxH6ASSxrL5WSuhMc8y/MizPkSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785678634; c=relaxed/simple;
	bh=XQeC/JF9d+sv8xEa+0zhep3RapCfEJOE7cGJReiO4jI=;
	h=To:Subject:From:Message-Id:Date; b=r/p28s+PO6Ou6tRApTNOzjtzAemvuF4NZwv4uj52xvyjMG45hfMVTMV/Ncvh1vLcrnA6Es95EYa4geXiOocqATc0m4q6vfB8EA4ihwOCrzwdNf6GqN2dv67paJtCHCwGAS4i8ZQdMFzwrDW2kcGKj3mqeaPTZftbbaKi5waVp/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siJli0Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siJli0Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D416CC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785678633;
	bh=XQeC/JF9d+sv8xEa+0zhep3RapCfEJOE7cGJReiO4jI=;
	h=To:Subject:From:Date:From;
	b=siJli0Wjw8Mfy92lFkduJjVOH+jtTHIiK2enB7QDz1p1W/puad5NeYRCvhuTvAOOa
	 IXc89qZycPNj0wZM5KZZFB8rbU9+R5vOImtlwr1G4HRkAf2yxviaTWtOQWOdFpqUMs
	 5ApIyIYvBwpSAVcDJOP2bHzDUAwLaElmg8ZYjx51u6wduiTQ+hykp7mlmAoUgKmmrk
	 ADM/eynGiYYihOIzsfXNGtUkbtTmdOmR+LnY17tZoCZG7u1b5/s2KCqari6v2y6hdL
	 5WYtLfdUrR/fYEVDEp52lcdtehIVNz/dvHfnO3PCf0ujvLQyr9A04BaKm7kwB+ZLmZ
	 XnHDUl4Hvga4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBAC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567863368.7384.5684432823040769984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7119a7eb8016a72389f9ac588aeab05287b9f53fcaab86de5916e68f976b8132
Date: Sun, 02 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785678633
