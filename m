Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41B258EFF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767263034; cv=none; b=Xvy/sgI1SHLGQEEtJ6yfVoDnsTkVm4bw9XpwymJV4W1nKhTTWEr+w+2x8NjdQu6FS57Goh49qEt3k+r2Nv0gH3ApbUfw3XYsT7Q8RthNDqEV5UvSlzttSl3lzGJRYQvFo7oxYGeDPavNsgbYfXncP0CK8SmctrYxoAfy3G7aAxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767263034; c=relaxed/simple;
	bh=PfIAF3nlGimzR7QQa6JiqilP9C2y3dDGvPCqVcvP7qA=;
	h=To:Subject:From:Message-Id:Date; b=sIjcsq9LdzYwu3hAT8NNFbsmn8q2bF7egYXPhyF5VYTCNTxKgIsTCSQVO8LUujTLNm8BLGwL576k9N67Mt45qNq61yz/BTrEDac+odtAtxv8cwdlnetNenKCKeGxN6ep5oCV+R+upOBIdwK7JfVsAlbDsQNw0ByE/thkpiF3YeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsl7qW75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsl7qW75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E80C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767263033;
	bh=PfIAF3nlGimzR7QQa6JiqilP9C2y3dDGvPCqVcvP7qA=;
	h=To:Subject:From:Date:From;
	b=Wsl7qW75PkqTjEF+JLPNRSeKDEB/ujP7XFA1SSVOXuJp4glrmYi2Z68tgHm7LU16A
	 KReAQhrnOTMigrmugZiSvE9zAI9skilLnVpZM/mmf1y8/LaFb11WhwAfMC+PTNzCWB
	 oaZc47cl3gPq8dyLIrNh7LAc96LAGGLVI/qs2XY5372vKfd0blS/L8VxgStGHhB2Xt
	 jicqrOP7PHT3/siK7A5kpKF5RpyYvmOGqY3LSUkdcP7CBLRbS68lCbmO0XViKAxU/P
	 O7ZFh8bHKTPLbbXXLlgV2+RnxXNs3lA6Re7mJkwNr7EfsHJk64yL96Tv9xgcDT3k47
	 7SbgKthFwrINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94425EEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726303357.6699.8830955720374245884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c7bae617bf0fa572ded2aea4ef8ea05a89005aefd69e9982b59c939fa7aa26
Date: Thu, 01 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767263033
