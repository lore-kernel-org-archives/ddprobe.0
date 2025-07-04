Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208812E370A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751665794; cv=none; b=K7fm/d/aCLdzdVLzxapQ7bjo4l4Ld+kHNoeA/n/Ov4tngKSSx6oFYTzQMveb/MXXUVmchJoEhVNO1nFZkFDfgUP0RY7A6dcJ5IEM6nVfax66luRYMHoArqJC5iGCqPWiGEf61qn7P8SuWhMys3Aj84ewaMgnRkXfOkbkIa41ch4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751665794; c=relaxed/simple;
	bh=l9Og5eDEDSH35T9eaKICBsCIzP3wAboX6rSkqw33SDQ=;
	h=To:Subject:From:Message-Id:Date; b=CjR8119wBKCi4cnIntQMA8+o4V1nMRugfS0JvPS360MIJpXlUDSG39LWGWi+1hft6SScsv42GQyad35pRac66YU6GuTSngEtnyIg+4e76VZM7pzDGoytEDrH5dF9WBphqJR5gvMxjWlW3Z534U88LlOdR5UDKel01h2XujUx5lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eioa+3Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eioa+3Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751665793;
	bh=l9Og5eDEDSH35T9eaKICBsCIzP3wAboX6rSkqw33SDQ=;
	h=To:Subject:From:Date:From;
	b=Eioa+3TbuuQH1PCktvq7bjbdxo/VdHDRgAmhMdEy4TA/lIeieLYWCqV8P0kWWSW15
	 vjsiHr18B8r/P1k9wnZqAeLFchSL5dLeHNFYnkSBQIcFY4jxnR8MAiRhcF4hHD3+ih
	 xLfA7zw/RCMKiIkVIdCy9UaKxqAzqLJ21DJX098bKdoAqeZ1aebUL8Cslo3uTgUL8O
	 p/NZDPXVYyU9zem6UvAWNko/Zlmp97uEJh6BZH4OF2Xm4nrqTtn+nixanGPz6Ux+BT
	 AivITbLVwDaEeIdDwuGPWzTpolou0Qw0Am8GJHEv1Bho64/jBNoV4JUz5mi4vqakfK
	 5UOor992aDAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F664C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166579357.29846.16532331273903838295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd1e191cb3a4aa635b36984c6be1c1de023b87b6794d77a061ecbf99acbe4bf
Date: Fri, 04 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751665793
