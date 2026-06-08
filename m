Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF033D092F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780939474; cv=none; b=qPjQUFue+MUU7h1nn/1iHWZLvpsMI09n3GOsoWkMOYL9NP44GK8ao/yaWDBZCOVi9dYnhd2U+vpH5qDysfkkHewx83SP3GrgR1dIRdSOGuahUPuYT5Rh2IvT1YLRXzRlWKzwTscvDHFLbltyclxT8fiQ1lU5Xbw/0a4zkQT6myw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780939474; c=relaxed/simple;
	bh=JJ0fhSl6HbjWP0vN0wS4/TJV+ySYBQcrpCFzC6kTUbU=;
	h=To:Subject:From:Message-Id:Date; b=fvGUl9DgRL7BecemV0LVWgYx6Pvh2Opf7yY1CIItY4DKBg9kSoak8k51oGke4hMzKvvdjHnVxDMJV77m1w6rzDMAFIcNabM6YyRVxUl3NWEELjyA2V9JqI/n08pFNSBpgPibAOmDTq9bIcXOco5Tp7hR23r0NPsWLLutWVKVbPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJIWzrrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJIWzrrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF55AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780939473;
	bh=JJ0fhSl6HbjWP0vN0wS4/TJV+ySYBQcrpCFzC6kTUbU=;
	h=To:Subject:From:Date:From;
	b=tJIWzrrmgXJcczIZdlOH9PXlJVKnMcp/sE3wD2KcSJMFBNc/V8luMfdWBrSW5zVlV
	 8Mg7ERnSDwSjjd8ZDkApgQSQBVd1f8gdEJGkPsZUkVemHv3QvIyLhnXCicAkJfGIcz
	 Uz2YFyBr2thk9+CQefv4eMXZ30Ldt55197zemHQDyOv5/oWA+NaOv8rnZYbjhEYqPm
	 w+qNPg9PkSWNS95Q7pdNZ+XlKlFRYq8A6YBcMIPC78lIVsRRPn3zuwEteuS9+FRt6N
	 G8L3q+pwGKFm3gXYIQLlj4f0MQ65xvc+Wn++8i8xYsQm+MwmTNrcjZQvS8TiRgdtiz
	 ZL0KGBtK3026Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37FECD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093947372.28380.51274145581775135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679bfdb423e1f8234cbc8bfed2dc83c83acac0d60a1ae6b7cfbf94bf4c2a10e8
Date: Mon, 08 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780939473
