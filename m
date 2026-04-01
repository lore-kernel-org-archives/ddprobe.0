Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAE3F1655
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775040334; cv=none; b=BNJotTIVFpeVStsObgRo9br6oaI0PbYqUrVqK5zcCphAGc34N47Jip0hdgZS9VERouJeoxlE51PKOhNUEReKPl9CT1Ta69OhqlsSypg35YshzU9pglFAEuWDMxk78nQ3GlKweZJKurfxBgR+arlet/9LyIzyNxI8loUs0G6i6Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775040334; c=relaxed/simple;
	bh=rE20juPeiAPCQ6Q0BDAJ5x7eF2XregzSC030npmO3ww=;
	h=To:Subject:From:Message-Id:Date; b=CJIXHzDBjhzdtchpZAJRqShjxFinzkwxy98OnV4uZG0ojA/1DfP1pFmHs4a1eAJAhSnTNRPkpBRZaVg19/UwJOrRm/kNljOVOgWMeN7lM3OfM876E3IkjDDLJ6M8ove2rnw4CVrXLDQH8vi2K7ZAP7B/LqOMEWmEoAVpQuxegag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFUnEiZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFUnEiZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD376C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775040333;
	bh=rE20juPeiAPCQ6Q0BDAJ5x7eF2XregzSC030npmO3ww=;
	h=To:Subject:From:Date:From;
	b=aFUnEiZLA2AUOETY5kQWl0gDmclKxMdMsDbQFwRkeBr8IQTr5uB4Y1JjEPOPsY9tk
	 rBlPUyVUetjJUKeynUUOMFSDGfQYeLfjIN9K/RJPXX3f8Htn6yMhZ9TqKfM9RpFAoX
	 fpHdUC0EsQt58NEmqHFKDvDCSPJWwFa5wsrAn0uSb4NgdLkYuKQ4q89lRsHcoZRS1Q
	 noilXMLIjEL5hMs/bW+slKSr+CiZ3kgdMrAJVyb61vHTQCYBdnU7dvuMIVbmXbKf7Z
	 HY4EQx8Z4Z/be/AUwiZxVbjoYHZfylXAeNxREElTYboURvV7hlttoC2hwLmuRDQ70P
	 wn1RIXrUcoA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD5D35175
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504033369.13141.3977751736250639713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf2104f8705d01f0ffd3804ed070cfda1717bd709c472054814eeed37a9dd77
Date: Wed, 01 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775040333
