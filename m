Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3357D45945
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757395194; cv=none; b=ha2GmTWTj4IZ6i3qtNe6TaOAc2YemSA1R6jCDQpH1IMd+N7WEkxLoUdVWqWacYRnTB909gajrFlq1xDrukdxW83aXqnaLyHz0NdnEv16WEkZQ+bUzo/YG5PzsN6SZpALAId2Rpfp9QSq2hR+xzkkjzIONVnPG2EqRe/JCSLdgZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757395194; c=relaxed/simple;
	bh=K/HdtV6eUVGn8FXyk3lskFIH8eiqUcBnjumu075fwMU=;
	h=To:Subject:From:Message-Id:Date; b=em18P8JQXvsgubOWrKQb6irIUQ6NPwUbwYHSpIId+X39XdkfvlXoL8zR5Cy/nSEZNT0AJ1UwVXeL5yDoEVa4nToa9v/M5cl4FqQlBs2sdKi2F+seNlW784+E0azm92WzjlpQnQ84Sja3CVRw27sRNHTOljg9aOHV6AAlhXI/mS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzLgTTO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzLgTTO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757395193;
	bh=K/HdtV6eUVGn8FXyk3lskFIH8eiqUcBnjumu075fwMU=;
	h=To:Subject:From:Date:From;
	b=qzLgTTO87aRwXXV4UZLWTz/ZvGRdUwowSLt2BLSHJlBnTnGuYqFdkzYJP3NjUKhRI
	 IvBzYgYhD07t8skfHiUcy4aERQwCcPlnrLALPAoHF2uzT0SUwv0h3kYQ83J6ujC3O2
	 7W9Hkpmfu/huleThh9z2vDchxfi2jrBi5bEjIPBjM8+n0lObZmoM2jgT8cA5cHsNBM
	 coloTWYTI4WrgBm/NA2pgLi4AFZvxzuMUXi7GZR9Q7jIUsGRC97FQyR9nki5CQY+Ne
	 0y+dweXfAaGANmvjvbT5g0Y70CbOLEksVHjAsT6n8L4UWoHphlZfQrmQC9MCT2QRBx
	 +semhBqdonsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D67CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739519357.29492.1608221727034822419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b46c227c2611b04b81ed7f0a83d30ff9cd71961cedbdafd714bf7c5be992d66
Date: Tue, 09 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757395193
