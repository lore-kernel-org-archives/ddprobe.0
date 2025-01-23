Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B5A20C028
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737646554; cv=none; b=egH2EJgtbkckw2eu+/+5hXQq5WQLsmQCLz5wuTYowNv8qqlpR8WcpLZx97vpbvrReLJS12Ok9ogmWWAeq4snqtfYL6gTMs8owb/SoboaY5ukcsfXo16tb6j4PQxJ1/7uUSIICjNdjwERC/rWj7xa31z2o1ppDNNiMC0UldVIdSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737646554; c=relaxed/simple;
	bh=lnpo1RmiTWutoj3xoGek/uDo5uUBsi/fboZD9vM64pQ=;
	h=To:Subject:From:Message-Id:Date; b=WKAZB9b8p68LOOtjsmF5ca6PmV4/kpmrvFyZcW05zyYyAm2MaJ+k1X30Y2S1ec7+CAQFhgbgS5s/yABw28KoFtX0/sjTuQ8T1+l1Fs28qpjZXj2rgQxFmdiQiyU+YoqPIIZG0/QHY7Q4s3EAgG/LhCTAgLlp6xWxCubIOd6fCag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqNHHSir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqNHHSir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2540C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737646553;
	bh=lnpo1RmiTWutoj3xoGek/uDo5uUBsi/fboZD9vM64pQ=;
	h=To:Subject:From:Date:From;
	b=lqNHHSirpRQsOmW4gbTukoTyNbV9IoIqqB8QUwtGmCCBuoD243hlnqxi9WS91jyu3
	 FqOwIwbr6CRfI86p32yDswOFSoCIdyiTU2jkFjt/dcFgYb0Z9LNIEyPmLpfwJ0Re9B
	 3z9HWlkrDZDgpYXg8EUcUzTFlQKtwXMWwXq5wo3xHNwsqlEHnkDrlMBkbxs1kjma4Z
	 bvqNhZtob/LcM9U6qHQUepUewp6f5I+VDPjlJK6LVH6/EtXgzJ3qG8r1diqyar0bfU
	 hbf9y9geeRU8pFVwv+cOS97aD34QLaAO+8uc61JZSSoWnyYP15C+UAlYUDxaNPOhMc
	 dJA+PkTQj0/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976CCC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764655360.5623.10793858981018063639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31134cf53caca7d1da8913c6e60e519b4d5b11a627ebf92cac7ba53e8546cc8
Date: Thu, 23 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737646553
