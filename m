Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC761F91C7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748341195; cv=none; b=sNCYDbzP1e+2RRF61JhCJ8zW9MlbDS+2o2e6qantmMaKBrWLBzg5KzHJAHVa33GDL0hb/xuF7f1p9qGz3XzqjeD9+n/BAdeItSEdR/uiUVPdN8B+e7bXg9HLYMRWPIdh3hUfLccl1ONh8MXldaGJxLB5jdS3HzIwR194j6iJ+1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748341195; c=relaxed/simple;
	bh=KoGaVww6xsN2iAEkUj8KdoZ0sgoZquDP4eAqM3w+c6k=;
	h=To:Subject:From:Message-Id:Date; b=YPBHBQ2sWsSiEEuYxJEM0HPXYnDHbUZaH+vxwNDuHxtjTYx7WultjnVG2EIAtAgGwy0D0c4ag4ppW2JLu5y37B1616Wxk+5U3QxrsDyLqNVNX+sIOdiHaF6SH+QvuBgNTZ0kd04JiqLZHXLGDaz6q9BiUOqy70CgKDQrQemuRNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at/rpwqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at/rpwqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C4AC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748341193;
	bh=KoGaVww6xsN2iAEkUj8KdoZ0sgoZquDP4eAqM3w+c6k=;
	h=To:Subject:From:Date:From;
	b=at/rpwqwxt+H34o3/QVbmFqAOYXBvUTwy9H1ZyrLCceRU75/XbuausA/E0VVWYrYX
	 2iAYGtW06rGBMA4CHTJzo4iLVzyQRhqqp8RMq8wX7oroib+n3P1auBI3ptjloQQ5rK
	 W3zjrrPYZ0isZzZtq3wJuINzFeWgRKk+SZ8a3BlqLhIJU9cZG/UhwIra/iEim+UiCz
	 8L8WwQw/wnqYHNHZTf0im6wP4dNDI2mrWzJVERdPeiRXQYizoVIoWG4UMG2rR+BHRm
	 jmYh5uTzn6Gd+qQYBM/fYm+x8ueJ/0l457x9M6RJdNGrWPh5Z6ysXdrcdS844bOXhP
	 pR5SK0Zgcpwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9527EC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834119358.22189.4863503069494332247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a65fbda89f87d8f6a77145f1c98f87e787fc5ac7994a39e0ddb8d9f02478b42
Date: Tue, 27 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748341193
