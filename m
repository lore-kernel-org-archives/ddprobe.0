Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3258815539A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750930794; cv=none; b=cu1erL/GI89pcRZmdXCAnsv81SbjY8sd/jfvc3AFjAnHwv3h5zk/ytWxTL5bI8L2Mjy3xOAg/F3ziTRQm/ugxM1JnSaNT65vpIuyA8UAyO7AlqiCC4iCb/UIryzq9RuvKqsQstjQo2Z5oKmT0XiDx3seO+Z381o1a5TkzWnDVDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750930794; c=relaxed/simple;
	bh=YXOu/9sYeMlNfGH4AZVbF5UH/j/rVWYZ5ejQ8RTnzLA=;
	h=To:Subject:From:Message-Id:Date; b=uNJc0pwl9O5nnAxviIayxVjqIEBVPvxNlsForAPHqb48Y3C4b9JoH21DawTISJgYGloaNzDQPWLZQu7kjCMfW9erqV/lNugpG3qKIE4R37u98VQd6TA8TfAmGSkGDv1b22JgrrAHDymIgKazSfgJiSX8cxo5ofJiYXZ7zHGyakI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5ox+3Ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5ox+3Ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6094C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750930793;
	bh=YXOu/9sYeMlNfGH4AZVbF5UH/j/rVWYZ5ejQ8RTnzLA=;
	h=To:Subject:From:Date:From;
	b=I5ox+3EvLenrriurArAXKCw5SL4q/xqdJvKXjV2bkcf+lterf46V4nDWubeD9h0z1
	 mOwmnOTEMq/hoFTt9kSZspFlbBGrfuktIg3dalpdA8JNb6Cx9lQ0kjGGI/GSjpC0AF
	 slt4MccO9VbEKs+TwQbSKuaB+YZxXNfcGT7Hi8PfY+GLnq/8KOlXkZO0hX7xG3TDIa
	 hi2yaqE3xKZXHjefy9hAqQ2XQYSCoSN1y+YBx82VZWUgc/I+CeM08xQvIGgQbOHOkQ
	 V3q+NnW3/1B2vSqvAMZVlLB+tv99K+LsPsaPo41xDjDimhMY+KhECttFewBnUwdgjg
	 6q5S3S5sedCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91032C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093079358.20986.6807790638049825467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d4219235f06a379515c9cdbc093e33220d7dd56958cc5948ecffeb864691e4
Date: Thu, 26 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750930793
