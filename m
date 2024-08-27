Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E3E17543
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724727954; cv=none; b=CfOFu/7Mm4++X+622ePlkAf+XaHATg7oipejtQfTmv4t2QMmiQKXP16LPLW5WIxE5vnzniBvXhLhNDPllI0uqjCAx3fx5Ogb7hq745BA85ujW0HtbTvdVJ1QJaLUSW/RWDcSo0400y1JY4m9RCvuZUctbW4l2tbDWbL+KHVRBDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724727954; c=relaxed/simple;
	bh=CF3jNzFycbDpUEvQzeSltSFlteD8kEhJPg1CkME05iM=;
	h=To:Subject:From:Message-Id:Date; b=snJyezkotsttm0MdRQ5imo5oFnrSQDr10L95DDo7GSL5/2gbCiDyTihjSWW9qXoxFky6Ptr6vqzN1Cumnyqk5zI3pOcOJ189RmjCovSewGSb7xLmUs9hK1+r+Uc/LqBg3Jcyyd2hL5YmuVD+BQv6gd7U1pRiUn/QA+zLQJ0Lg1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYsO4zOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYsO4zOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB167C8B7A1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724727953;
	bh=CF3jNzFycbDpUEvQzeSltSFlteD8kEhJPg1CkME05iM=;
	h=To:Subject:From:Date:From;
	b=JYsO4zOslXT4DwXECh2imTsZgBcqeiEHiS0we0YeLDfqarX4e/qRTV6OCxwKiX27J
	 VuuY8RRrOVJJgEu2VDNM/ZraaiFg/FUMizB37iDZ2ImrNXubJh2tHjekQ1BiBGe2c6
	 Dp6J4CjCbJUvXWT397skyCvlm2UXuW9fTIOb839a7LyzOuBeRbeUZ1eXe7IX90r5ou
	 TrTNTjelP4VOa9uFZiug7xAo8Y7Qa54ZPXjqf4urPkbZIkqyYsyqm6Idijwyay0HD5
	 MY5LhnX8zUqYHSulAOhqKCgmiuOqlY2gMAek7Kf/vKxp2csCqdwkVwe1GmRRRKeVIU
	 byrNv/xaagp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A53C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472795361.20236.12194125448235398805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb285d3c6643e9c2917e105a0cc1ba23e2c894ea5a73d23beb1f5fb1f9c15a9c
Date: Tue, 27 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724727953
