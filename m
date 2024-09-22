Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4A4B64A
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727034354; cv=none; b=ZrajarHk2ILPPyWRiU8RulCXF67VkosoFVZ30Md4DEIUoXPHSR83VBm5P6BXeYtboa8aVlVVKNotuJikH9NenCpeAAzglD3MTF/wCh80QpIlYYUAvl5ltDVHCAEpUuds9ozfoINpGZNojMFrKsI3Hqpk3oTqIA2GFlClpX16118=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727034354; c=relaxed/simple;
	bh=VJoL0nd/EHW+6bUJm5FLU0moZtgQVIwocGssetlhpak=;
	h=To:Subject:From:Message-Id:Date; b=OXpvIWhKBvpVRkQQa8ZcmCtZ9n7mFZ9eLK1Jrq9SBBvYLQ0s+BIx8uPaxC2tvgYoc3JerjhSp4GtWjZmV1+H18w2FRIURDOsHqSw5yMRwj5PNNoY6KVH6GomrPw85bWpfGG6SQjJTbeJz0vzgIGJmzzAMCwt9uffZMihsvjR3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krnP5Yj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krnP5Yj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB7DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727034353;
	bh=VJoL0nd/EHW+6bUJm5FLU0moZtgQVIwocGssetlhpak=;
	h=To:Subject:From:Date:From;
	b=krnP5Yj7ZX7yg97fXiSeWhynYTZ+q3bxYnqAzY8fQ5kAVLqm47XZP3N1aPyy+Lwyj
	 lRyZh+oGSpBQtenQ3U/Cn0DIC9xpFANHrELAEbkXzTdXdWFxj/w2FN8hloB49Rqhmj
	 LSt07i6h4XDWp++oysiowsBAjKz/D7EMrTO/imXh0Cuzpi9UMf2V429DzBQ/4i9gMj
	 RebMjK1tByGDQFhoD07W3fBES7Q41Kswv7L1xYHtBaSCCMZ7/1azyaQq06QLF+fVK6
	 PlImHa85OJfv5RrAcW9ZEr3Hzksg3/WqB+/fNuCUdZg+i1n3giReb7OkecIjQjyTBJ
	 A9GB3a1ju5UFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55ECCF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703435365.6421.17582605426592660074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69990a62d72b58c5600fb7dfd52fe99fd35a9df36acdebcb1158623a5eb992ef
Date: Sun, 22 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727034353
