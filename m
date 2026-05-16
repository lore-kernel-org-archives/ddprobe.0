Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2EF4F5E0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778974234; cv=none; b=ZBfxGz18u4F26vtZc86aYteXT8LG0fpaNQR+qSTUPOuig0dqarQ75E3xAyk0EdapqKMUuJoPrfhg1Z167wQ8jlJbo95Wi+laFyJafIyPYzAcoDPVM0GxhoPHyGbkaAKJhTq3rSzDPPpWJN9szWJ+RT7DQmHxVcxg7G301Q73hqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778974234; c=relaxed/simple;
	bh=T8B0cK+HpdxrUUE2eyQ5NsZWAB7orNzLO6647x811Q8=;
	h=To:Subject:From:Message-Id:Date; b=KRlcRxgD8bF9owZo/JgpY4iu7bV6JmASHEHlYldxbuWcnxHRrRc8xIIIu0qDENYd2mLX48b/nGqwLCsg7zRqu3/Ded7PkVU2Ihrkk8/31GR0YkkpAdqQOwmZgn9GJ4f87fdYNxriRMhUN+gKFllIgWhj8OvHCOpxAnE435H3VMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRCZ30Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRCZ30Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA424C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778974233;
	bh=T8B0cK+HpdxrUUE2eyQ5NsZWAB7orNzLO6647x811Q8=;
	h=To:Subject:From:Date:From;
	b=dRCZ30Ymk7l3rSnRNY8NOvdEVCBJyDh1ds/VIg9eT7V8deAQHDySEaGRGSuUoH8ED
	 CsG50dGHieEYtmDvUtLBgHNzkBapuyBYwlFfvl/R1lWrHBhRrcmhlXolwoNJ6c6jY7
	 1R7PiViviPLDoC0WwTVHGAt6YsXbnGOEIcCm94HKxHGJXa89/K43riDnJ5aKcw78s5
	 JsmzAOGpk/M1GciV0xjtx7DzTdqngIBlHP/yi2bABzCk+UUnG/9ClmdJGQ2EGaE8vE
	 VGToeOYqVLrNmF+TE8uWxTL4TbP4kEATMjhIo2sxwnke6CDC7rXSyN1ga+fbJHTSyk
	 OPtE3Xs5foRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16DCCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897423369.4639.15647836328001682106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc16c0248d16ec3135fff2fda7b201ae268687af28b7ec0d6d269dffa1d27b4
Date: Sat, 16 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778974233
