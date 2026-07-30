Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B87377AAF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785451834; cv=none; b=ccai9lMpmX/HNrXP6U3R1xf+uCXgOeSOYyy7KJdmWv0qnW7QQ693ZQXB/8d4MVcOsU0eYPhVpO6RCUyO4HH+PAgMaRAeqOpnTVB1fzE0R+5cgoJvyEx4xcYEHYZVdxUe9De8UEjf0O0VqmD0ZGUTd1GkXUdJ0ZclLv/8NBfog9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785451834; c=relaxed/simple;
	bh=e9A3DV6ca2+6hzHRUtMlxmSSvG/f6tIYvlCPUnPW5YM=;
	h=To:Subject:From:Message-Id:Date; b=bmbauMWfc2SiVbEQxv6pChlB0I96hgMRnAYPZYiATIWuKDOtheGiM9SmFT3sDxEnCbW1P2WzxR8bTJyVQKao83LSqoecT3W9Bu97RnmpBecNNCpKxywOtU0LFL3e5BcNLpvJblCX5KAXfgPBCB0ZwgaJQhSKMF6YeTWLAlikkpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sucJbSvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sucJbSvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA659C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785451833;
	bh=e9A3DV6ca2+6hzHRUtMlxmSSvG/f6tIYvlCPUnPW5YM=;
	h=To:Subject:From:Date:From;
	b=sucJbSvTGVFj0Zykj+cAsZDeyZXQPmMIDRACoKsq3UBrzGdA9XemWlBm5gJW/sQAR
	 cCOEjbk0EhegNKjX7DdVygY4w2/FHvGeSKbpiGvnvHdWm9JWp8icoifm2T8nxslBZ6
	 6tgTmHxmYxIwZWvJUilmoU9YAZUrgKGuNDgc68AoSt8Q4HZVa4vJ2LYbNEQtQyvGq7
	 ZpCOh7UGGNYp6DlyOvgGsmI+bqO+1v/pkyOEz9KggKayGTh5axyVM8tROFLfaHYcPm
	 M5sq/oGPsdEWq465cDPOkL1C51G8dbkB5G2m7YwA/uB7QnfqRVJw/va1/hFT8f/yOd
	 YNqlwYvnYo49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80A0C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545183368.32204.17882068192716202699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f06cd54298fdc48a0f159f4f97906cd676892c24a20b4cf3ab2e76f4cba8ef
Date: Thu, 30 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785451833
