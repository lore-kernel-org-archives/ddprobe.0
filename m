Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FEF2343B6
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747871394; cv=none; b=GoOQ1jcH5zO1JzYaMDFPzTqIhZ4eEEzmWMjKOZvbFc3B2ARasC51ShzDiYx0GKFNcwpGDMpZ9x9Jl/D6MTsWoXSULxh5HiwwHFQwlOggiqNveqt5qj6xJhmq1vIUIrJyXpIcDjfoCjSavi4l7vHWRB9CvD9mdi+ZkmIpuZ5uKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747871394; c=relaxed/simple;
	bh=uBK0Rb+N1NSMBEAW5WJ5OP5EBEAuxrCn/49HqsTFYbY=;
	h=To:Subject:From:Message-Id:Date; b=VHK3cVxxifqZURehe5q2dJO0laMpozkrWtmNr1KNOdcNF+HllCzNxEPC2S1oY0q7xYJAVyhwIpHQECk1YLAuiQK9rauOqVwcDPzpygRal83fJbBqFFJG/47p3OpOhevnVY3oBvyw0r9mUqeBd68AoBIGiJjS2MfMsJ2Q4eJPOTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlaW9cmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlaW9cmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7951C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747871393;
	bh=uBK0Rb+N1NSMBEAW5WJ5OP5EBEAuxrCn/49HqsTFYbY=;
	h=To:Subject:From:Date:From;
	b=AlaW9cmXy1QLa1TsXDGHyUHC/ylPfDuOc9UlBUmoiVjY+ubWMHNwK9mlA70t7WHsW
	 D9zLnRV/JJnkGjTCisebbJZS+Eu87Y06XRovLP6DELUJ6jGhmz3Ht7ZLzkvuRVhoXJ
	 PBnUcwtNzJgT7a6ezYo9Fkkjmm2jwA2SwFKANPZ52ua42eLfji7XD0pW9zIipwdcoj
	 q7rNL3GmP7EeFFly6ZmnTKDb8U8/EOCxJrja9fVeh/nxXejETidyfA1ek1ebVZT41H
	 hX1L49sPUuv2nhJjoVJbyvmjnh4IBnnoNVdZjYNE3+DoYdHnAB710A012c7XLkVJ55
	 lCnFriDmaxfVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447FC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787139357.11205.2888736302057413265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479e831ca4138c64812c1f8bb1a11b1b3690420ce1ff885fdb371560e5993927
Date: Wed, 21 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747871393
