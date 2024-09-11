Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D62C1AB6D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726068354; cv=none; b=XwxTnmLacGZ/kmwvdv83PFwQM06bRPhGdwK4Eoh6+Erxs9meEfHg/ivT+9V0cqYLXfWy0Uwhf1tLAwA5Ip3nCdQcM12m5zsnLIWYrWh5XIn/AuRqeB8g2vp4oZWxvSGdFbxvWbK6NJEismj0gW//9DqAsqdvQ31bA4Sei0SW238=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726068354; c=relaxed/simple;
	bh=f2+S39KzQF0GutmfGMtkplr9y0igdb61Q0JpHocLOuQ=;
	h=To:Subject:From:Message-Id:Date; b=Nh8o9LKchlfHFD7415Ecg8eIQqqbjoOdVI+GLeQVnNKHsdic1ycWjue6ck07Eww0p4hgNqvP6lyo4/zjPKu6XwehUDlO6raOdHI2rwbiXvGxWis/eAdXur9pTQJmyXj4kLvcPzJOoklfRx1y4TC1w/mB3JK8kxmgbBrUwRTR21E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3M3ack4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3M3ack4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E74C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726068353;
	bh=f2+S39KzQF0GutmfGMtkplr9y0igdb61Q0JpHocLOuQ=;
	h=To:Subject:From:Date:From;
	b=q3M3ack4KccqCozz3MREmEsxkF6T94u1QY7tEngGeBL8vOoRZIz45VO/unM0kDsMn
	 qDTt3hCZSkvpNTkBZ2ed/1jIRdRfeb1d3i/tnzGE5GsCrFJERCn22GBEYA10lW71ml
	 i/J3ulQJBopYu0ya56kPYsnet8hRUw1i7wsdbugua1difR+Trmwrj73YE1bMcbITuM
	 Vn6NebeBqKbvWH+rErgv2Ak+ifaVReQyALTxUoNrT9WJ+SHv4VnoabC6jADn+NekYV
	 UHXOqSTzz+4jieTbwFnCFfk7K+RId9YNsDQxhwEhJfilW47+Miryj6Y7++68GdTt9m
	 QT77SVynYJJyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276FEE57C0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606835359.25348.5819488063567356561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2290b0b817190febe200e167d7309997fcdcf3c54b15a9d0abcc8d40995a2b
Date: Wed, 11 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726068353
