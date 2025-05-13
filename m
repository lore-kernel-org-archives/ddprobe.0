Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AB78BE8
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747112994; cv=none; b=A4EbpliBlnR85VxqeZP/c4thzlvA2mZ5+9jCPR+yLZj/3zEto+AZqxK8OsqhCGB/MDwZnr0sZdMhzvpDDH1jYPTIlIk+k+dqLzGK/OM8rsAoX5Y/M+7+aHzhzSffAihUxq0WEzw2fqpv4RqV7U20TvqWR+vcKmu1RijH6LaXAhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747112994; c=relaxed/simple;
	bh=kDKNQbU00H8qq8HCm1O7lz9so9WtOUWR5ZmWrpXbpv0=;
	h=To:Subject:From:Message-Id:Date; b=aV0WttK8MbTGtc2i+9pKxAMYMxDdBDjuAkwYXoUrqVXtajqY5cE9M/RZUmDCQ7D9eQ7YJD6Cv/9SEoZg9z+hQsEFyFZVHHX0PzSG18tgrGnOkN6V+2cP0h/BQ8MRyjDX50R6O5r2Zf3KT5OrSzn3CmJDRnILbZi1TJzmi8QaKDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmZ85LiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmZ85LiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1A2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747112993;
	bh=kDKNQbU00H8qq8HCm1O7lz9so9WtOUWR5ZmWrpXbpv0=;
	h=To:Subject:From:Date:From;
	b=AmZ85LiCnBenvVw+E3/79Wjqo8jVx2+uO7x+vVynogI9MC7k0RWw0Elkm0cz1067L
	 nCo9SfS8rUKYJQCewA480PYTCZXD3XyfIeOOu9Oy5BkZ9tztzh1HJ9FLV7nUhQ9WGy
	 gVZGz93RAvUfs/VJq50Ifw4AvI4JhdlD4CncjyvBwn0eSUGEaP50oLCTd4YHh/iKlQ
	 k0h9OVoyDJ4xueJ3SL8+NeDno7qHkUCO7rEUFuuGESUXw/1UQYX4j/g0yUqz/7IFAw
	 7dx0xFRmSnUv/eZJ3zzEMCSLwBMbGLDTu6LQRNrn3k8WTqpV1LioqxJV6+Lm4NPNKM
	 08kuAjF6GZ+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A7C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711299358.12393.2017447262298528711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3198d5a710b1df2fc3bc08e3b60cf5af17b613e96deddc49764e6934be2221fc
Date: Tue, 13 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747112993
