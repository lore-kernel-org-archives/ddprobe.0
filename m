Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E366039DBFA
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774904694; cv=none; b=OZHqtjfGZ58Urk8+xUJGSmn4XKcsTJdJIm/Bqtza5ON7br9jd0tyqi5CToW2QHoNHojF2Osyw7xCw7aNFi73B9hthWp9uUuN2HNP2ZDhyMVm5ERz7+X2kzb8EWD1Lzj3ThRGdk4UFITcku66SyMYJmiWUUnodaBcpfTrKFhMrYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774904694; c=relaxed/simple;
	bh=cI6eG0Mff85QnO6XzBP0qA8PODt4wEjuwU9o9I+d3KM=;
	h=To:Subject:From:Message-Id:Date; b=rBLvR4Y6WxMrKfgRQA9UJGF8VZslDQspSmJ8owKtCqiUhwvBYB5H/tCUyV7wbS9NL93uOYObguaDpRj9mpJNJuPzame52NOtln1HponiQUbbj0M52D4xsGkHrnz7LIBvF6kglISUnVPd6nZS8yVSabADVtQyd3hO/ZeJQmDW42Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBAvNt3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBAvNt3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774904693;
	bh=cI6eG0Mff85QnO6XzBP0qA8PODt4wEjuwU9o9I+d3KM=;
	h=To:Subject:From:Date:From;
	b=hBAvNt3AsiVHAb80ODB/+RGJynK7y3GaB+z/Ms9ih5m58Z5CZ6gFP9SQYkG8zfdRS
	 t3oummkxW0ryS0Z4gt+KVUb38hgqcssPo9mBFaF8wd0jZ4DNcmWOVPEbCXe+sMkLaN
	 SDC0W6ARGkcE+BGqk9GnVDaioYMvMXKFVbS7yUqLzNVsU8i3ZRKhOi2wXpG3AIrA3D
	 whIBRSAmA9woA8Rw7HJILhK5ejQjib6cp0KPZUpcwRpweg/pQo1zPun336OGgnkgIw
	 wXCw9VcDnnLqxU5FB5Zf3gQuf6Zmf9YVZ2rw616AAurYPhqTIwi+Fr8zUKeShd4Eo4
	 XZRBvJgjo5wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936771061B08
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490469359.15934.17079637406031329477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9770029b36ecff31937791805dff0da1e39c382850992986b6bed4f4b022b082
Date: Mon, 30 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774904693
