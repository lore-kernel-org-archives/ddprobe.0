Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2631317B50A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748455194; cv=none; b=CE9oTv5uyRByvLnuigij73wTw4Ek/LgLFYeG6JY/P36Ksm4Lwd0yCAK66/9/VOk5KiEWFfUDwfOvxrQPhbg267xsc+mC61JhK6qTmtHJX90TFTLueILBI6Fwf1feL075W7uPZD17NUN0UTjb1MQbL59r/BT4HKedvTgLVjs6nkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748455194; c=relaxed/simple;
	bh=wyw5YbIyNGoVkaUrMpR8m9rts54mrrtw2DH0ikQQzSI=;
	h=To:Subject:From:Message-Id:Date; b=hIZCrA1cGwLTXQc7KS5JrFl4RsocbTbJJDG9W+Z1nh+tSSe+Y4uzH9gCJUmFtSTytNX/XQb4sbG8BjKfEuT/HPTwA+Hi9h/3pVo3uiZWRKEH9nsQM2TmIlyYhtAOd0/OGlAffjK6WxY2M3CBlWid7y+fa8JkcYRFOdjO5zEeklU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EePxe3i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EePxe3i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AADC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748455193;
	bh=wyw5YbIyNGoVkaUrMpR8m9rts54mrrtw2DH0ikQQzSI=;
	h=To:Subject:From:Date:From;
	b=EePxe3i36WF7qhv1qJrP1NLKy5T/sR1ccgdSKP8e5CKuPEpXhAvMaAz7u8wXyANEg
	 JixjBY0XlKt4mMejofuEWWg6cmG1sDas75+jAD1KXEbaz3hWdmNDhR6jq2YrRYoiDE
	 FH/Ke7/ZeFgTcPDpdttjFrMGJwfb1ro5MZFpjgeOYFZRbcjMRaAM+Yu0Iaj+Rz6xWZ
	 Z89k3Ifss5GncWeYskcbkOqR8zBEFmZbBg14BfXVr9cMk8fEzEW0PHP+Tc9hz60w2P
	 e7SamDWVpWkrpm8nw6nmmuNaPFZGhsWx2VLBK+ARuOnaY/jeE3AGye4sap+Hy3z51e
	 v8nCnUK2TNnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF12C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845519357.11840.5434384028090005920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2aed69d3b5bd2e349d5593441a52bbdeed50db2726880c375592d3081efd59
Date: Wed, 28 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748455193
