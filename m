Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354EC10FD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746432594; cv=none; b=oyTwA8EZjT4BU0kHdpIt14z/ZCuMqOXZ0EC8iLmjgA09aLjY4Y59GguJk3bvl3vfu5aDg4P83Gp6/34pbD949vnRqIy7BWsy7Qf9ojV6m8uOimgoikzOi/8zYaIiMRr0IRKRiA1UCuTFAnIcXRhJUZTxWVznIWxPFlU3n8FILec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746432594; c=relaxed/simple;
	bh=+Pye8cGVrXrM3/o1vdRuHywfHpRrvBbkshACL3sxCr4=;
	h=To:Subject:From:Message-Id:Date; b=nR2ZdOd3yNUGvFjtcR9wgAshl+0zOO2H7tod4iFek1GC98TYWtErNWk7WtHg2TmWF6F2JMXa7O3/y+rfCWwyjSFuVpVYil5ylO7uKCXO9hTTK5xQ7lXEw3mRfsd4Sh9c17ZHibh2MdStyj1J8UlA0IbVXMdV/+tnAtYa5ZbHvt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdjhQ2wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdjhQ2wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC09C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746432593;
	bh=+Pye8cGVrXrM3/o1vdRuHywfHpRrvBbkshACL3sxCr4=;
	h=To:Subject:From:Date:From;
	b=cdjhQ2wbQuwlsmGC2MXB0wi4hh1VtI8OkaThuUgMX0Xz/mNzT0tzITOzp1XMzw6+C
	 vCyZ9NBdmJOxYgqbJVIiHmgUXAhdkJ3w3mkH2GoF5ZY06QdmUILwAm6o7E+q2eYQ9w
	 QLKQ15tLI+kHfdhsu197neMjSKR9oGCrEqeOHNvRHfZTbXo1L/kf0DtncEnyFIQLhQ
	 UcgnOcWs6NZHpmgzRkkpxXxJHQGp/0HAxBGIRF3zOFjo6CiGPRQnXmeUsWufDd6rDO
	 FkGhfNvsdbMw0W1S5bHONayaHZRa7ZogxpD92egx7oUw4BPRrKwp4GzZq4y0EV8qHb
	 WaAFkL0r0HxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14EC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643259357.24449.16870637384930850835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1865bc88fb5bb9b3dbbcb0384d19b43eb3a2abf4db66b634b8df3e4c18944ac7
Date: Mon, 05 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746432593
