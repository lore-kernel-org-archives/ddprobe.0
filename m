Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E5624E4A1
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779258634; cv=none; b=cguNIe3xPf0iNbo5sxm/CJCzYyRoRHQCdexxF4GkooqPaK9A/Vj0l/0NOtlLNoT2Xqq1trJCRkVgKmwycCDr4dOGbl3RSJ6iykJaiCpmU95ssL1eUDS8YyPpZYxBT28zdOiS5ykntSJLsHOmHIlBOdyARHPDoSOeTV7vS044ihg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779258634; c=relaxed/simple;
	bh=C2XJvWvU50vM6b2IG+C81q8KneilDjhzgpzoJ8Q/4pQ=;
	h=To:Subject:From:Message-Id:Date; b=EG20jXTCxDgFSb9qxC/ydkDhznJoYhSMBrIrBuYPHOuq9HOce/Yq9RrQsiA5dyaFwwJR0Ao6FlifVY5EVoJxJje0jofDE2OzZl1KJklJpFanU0OIq5WbXLDCis6Dpwf2EbGmP9NRKRwMEH5h46s0QYxvnvsk3cFOh27CvbPo2Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbQCGYhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbQCGYhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C489BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779258633;
	bh=C2XJvWvU50vM6b2IG+C81q8KneilDjhzgpzoJ8Q/4pQ=;
	h=To:Subject:From:Date:From;
	b=FbQCGYhQndmU9KC8Lvpi6iUX44W7gQeGrFtiC9m6VkU58XMT7enDDQTF8eyQrpNKD
	 rOOv4tHx+e8jsdqto2kbbWbIYKDqRWxq6vNloE7p2dUiJ+YB2duomH7chjmQIUphnm
	 FK/fExzjWZELqJY4SH/immYm+lTR8YakG6bRwkqemEQBTuMhXhrvzpJpVg1QuiLOrB
	 G8g0iNDjNwcgt+feE02xcHj63odaxErap/ZWgJh2WlilwfoVVkAkIl5YkxWx9IjXhO
	 P9CzA8VA/m9Ud4Jg3RS/T2vF0dMrhIiTBL3qjFL4QslT66okS4HHGU7n/h/iTowDXQ
	 r3wR+Q5EvCtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB621CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925863369.11638.5350769959354821519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41be82df07fd4f4b92101bceefc251c914c3ea708e0c9bc618be30146e51ba7a
Date: Wed, 20 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779258633
