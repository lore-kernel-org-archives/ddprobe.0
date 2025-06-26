Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C21B85FD
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750912194; cv=none; b=DLGDBTjfEoytApwTqO0wTsyXm0IrMjqqqnGbzDKDhB6qFNIAu5oEnwwtrkB0tdEYc17mZdp2yLEaDg1u+HXmOdAQQLcExxGXqugkwIlvOEt/ZTPsWFw+KPigbdWSnyft30rxzutb/dn/9rNLvaQCbncvb78UTUiHeyWlkc6yehA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750912194; c=relaxed/simple;
	bh=O8TuQO+1Z0ueLRAS9QgOvzTZZDu6mOTkG3DmhEMmyvg=;
	h=To:Subject:From:Message-Id:Date; b=EkvBJqQ5mkTOvnXnuoukG98EAQKMX73LXPShBgl05dXf3ZpUi4++wiKrywbRj4NVHo5k/8FeLnmCKQFPE0JKaSz66bw+a/YnPSj9hHbwHBD6zfVXYL6hIv3qpe8/D8ZG+xTPv0lkS4DxVSMsSCLsRPWXEdfbSSYQ/YhFerbAXM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQtCutBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQtCutBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750912193;
	bh=O8TuQO+1Z0ueLRAS9QgOvzTZZDu6mOTkG3DmhEMmyvg=;
	h=To:Subject:From:Date:From;
	b=hQtCutBXt7qRcf0CJjZildx+1PU/kZzBvkq7B/IUr5TTDWJYWWI1TjaQLTEu8Q2+p
	 PXNfEr26T6EYlO0IRGkatjxOVAdtqRSiIwMPCCfYlyJdq0txygiFHu/9YYP14hkva8
	 1yaUTdV7HnCjmjZw9lxuM5uGVtRe+r+KHVYnOaxfecqy1D5jM9s3ITksVvPDhqAw/s
	 753BTs+FNz4ebRdXFcT70xkCGRFzouZ0/eGqJvN488lZOTymGpgWFuxOT7RqiQrhvs
	 ZSJ9mbP+XDlvKcS42WP1alFNFQ8+9tIs0E7N3Qb/24RB3vVHGMQSw6uDy/WOcqV7kq
	 KtZJ0FTsvuKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A4C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091219360.1530.2324491148870508218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760fe9a36f667afb5916e1b8b060c429cb4f76969e04b4c452736f9e933f684f
Date: Thu, 26 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750912193
