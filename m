Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D83D813A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783085914; cv=none; b=LBJT9cZkZ8RQKxnlyyhPoHvz4D+bnn5W36s/7FbXM10XbfgVy2igzUFg1oW9jscEaOMc0yY3Kk86hI1Qxif0XUlmoIQe4ot1rsIx303YYGRLCsEQj/4wDJO8OL6M2dnx2XJhVoqL+35GI1/WVagUalTqdgyZepOrjZdg9nOMNwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783085914; c=relaxed/simple;
	bh=r2KeUNRoDKVxW8CMhLZduBXmssmkjLCZoViJ1de75rk=;
	h=To:Subject:From:Message-Id:Date; b=L02p3RdrO0wTlbsXpzTNc/R8ANrEFuwrHHHTdn5aC0UnKtJCV8CG4c6LL1Nb+QJ91M2I0Aoqh7USh5+hXbU8f58w/2w6q+zrAyExVZokxk+VtM4R9cSKOHxuDOZ6ZA4Z7NYFKNqWbOLqllRZePhpSFb5BpzjB1KnCuN4sncinvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpcpJhv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpcpJhv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC95EC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783085913;
	bh=r2KeUNRoDKVxW8CMhLZduBXmssmkjLCZoViJ1de75rk=;
	h=To:Subject:From:Date:From;
	b=CpcpJhv3t+ZczFD9KMEYzbJYPPu5Pg4EDrbgd1K7091lzdrXwlPJs1LtmEAd5W7IO
	 ZJMr5sjvjOe16FS6B4s7chblAdbIvURQiy1NSN6jWtLIXWR+wqxPG+xyqpNxbUsgg0
	 Ru8AAyoZMVOqrm6xBSJVKSivHJzq8Kc7rVeOSJbEyYH+gCcX5smZ8KoMGLC56y8L2W
	 6Qtwj6bhYfYPnfzCtRPI9+aB9HgSYBn2vZh2agCGt9sUnml5W7hWiKGeoQIctJ0mEQ
	 SL3+oezjH1Sj4YHRFO4AAV/HlLrepxe54e0iDACodc3hXW7qtG1OpRBovmy+NLMgt5
	 P0WRdoxaanDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0BC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308591368.29506.10975287553608086259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d51e06c8516af6c2aee73fcfe2091dbf7149bc1cf5e5c66a8d3fc5cfc6df1b
Date: Fri, 03 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783085913
