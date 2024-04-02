Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960B44D9FB
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712047096; cv=none; b=LKNlzJhHgaHxeuqIUMsYC9gYtjSvJUdqm+CMCpNJW+qO3+E16bhz3ooUZY4+BQswhWMfnF/LRoFBYP3hSACK4mlgqOnGMRjKkTfYlOYJhKkn29s/bfNb1P2dPWyDZL/eqoMoLFcZCo4gP+BrgTvrjC0brbk41Z97bV9NQY2q8Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712047096; c=relaxed/simple;
	bh=ByA+8mpRwKMVH8djgq++0UJ8AZlt5nmuBfbjM+FTVa4=;
	h=To:Subject:From:Message-Id:Date; b=ZyX+gBVKakiM3uAr4gkgc7kEg1S1xolFgEGE0mc1NEqVpik9QbfOLufgaybcieD8IuVb28lzx8oucE5GkzOUq33dzx7LVD/APsU4CAlx7ivNSwLm0M/OVIgv2JhP/aTVkRMtZnCMh+0Ldg1tHGDPsgCMYRbGs1Bbtuj92pg8nnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwNprNl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwNprNl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769FDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712047096;
	bh=ByA+8mpRwKMVH8djgq++0UJ8AZlt5nmuBfbjM+FTVa4=;
	h=To:Subject:From:Date:From;
	b=dwNprNl0mH/j4T2jQYL01DL8Yy/tRH8/Phkuu8UdB34moDEM6fJy/ULNChd2RnbYt
	 aGz7ON90uXLv0Iion2ZtVkUjZHbU4xUIyL7IMAhmEpbupD/RHPHAPkFyhPh3eKErLl
	 YmIMim4WQdUaaTAHwBbNBynRi7ehWNHaDrDwnwDe3hihihA6Y50NSi5WYGsClKEJox
	 WDH71Ax+ni5ScCJDBUCErqKFxOnT5WRyZ960/YX7y2RdFJdU8mn+zRJeeuyvUNqh6x
	 pGYknjKPdoRGKj/dU16tcHMSHOTzUjNPcyyz1Jt0C7JX9e/p2J/ToGcYrMvkzNodhO
	 V+3w6I+ikExpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61900CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171204709639.27092.15469505171085496603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bea8940dbb4a043247604c2754a0d1149a95c2d0054f3ed705a8d23c61bd7c
Date: Tue, 02 Apr 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712047096
