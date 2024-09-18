Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2C4C81
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726640154; cv=none; b=BP7ts7wMRJZEU0L2OYVw8iHcneskClXISp5VGgsS8e9YhZP45qwytjKcelmmVXqAHS5pb3vzKh9Tt18/mqa00I5YhcNdOR0j2AObSw3qDAJaYFJzpdq+8STa3weHeOWEo4RUJO6awV4FG9UbvAFi18yCjodoMNZjXZ2l100VPpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726640154; c=relaxed/simple;
	bh=E04G6QNtcOi8vixlUH0kcqPzrTbuj+4cmZerJrHoiYc=;
	h=To:Subject:From:Message-Id:Date; b=pznOQ7WBkQRQ80gz9OcVkjYFooYaebD2cgWxuY4ykHQ8hEp3l5CalI8XnM+yDySCywEFXd4B6lqZUXV3bkWnK8hsO7eCrjBVjP5slfMVzLBNWwEsD1fuTFfgpJAVc3j+TsoucPritclzFqpJlXGaNkgD7WZA/9kqqilzWQ7RqaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF5orFcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF5orFcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE2DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726640153;
	bh=E04G6QNtcOi8vixlUH0kcqPzrTbuj+4cmZerJrHoiYc=;
	h=To:Subject:From:Date:From;
	b=NF5orFcSqM/lskJbxSJrQw82OAnAFfJQXYdN5amM/+0zmYV6ZyaKWfGqMhp8HwX2P
	 tVpIWR+T5aeogUtvZNExQeDYyS2IZ7eFnVU7Ogw57Tm4bL9XQE5BgpVROr6nfuVmlq
	 6Lx3Tl4gaBce0+t4jEoJXCHuv6AizqGDDVZf9alOjkuWoYgpvzR+GRcRBu01HGdke/
	 14GDBTMI30nycB8qUV3gGT3ip+myhdJzRvD5re4VMnKAv+FwlosYzaULEZTdE73h4y
	 a1TPfRbtNfj9XT5Ix7q0k5M07E5Foncdg2FnO7DfjQWXupfK4ANNWWi0UM+oHz6x6o
	 wii1lSOUMTWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7078CAC589
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664015367.30089.10642109350286929373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a03702ef43eef33fd61452d6c8289a86c7f88878d550b81d155eaf591940d5
Date: Wed, 18 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726640153
