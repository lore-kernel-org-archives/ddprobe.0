Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609BB39DBD3
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789294234; cv=none; b=qOdu+F2zfk+9249UGuXs3k9rzYRLxqLK7BiJ/lmuHw1dKcEhUQmkKpiTlwl0Dp0J6eH6TUoRz8rrPv0ElMQ3Ch27FZX/iHXvfYkoB83i4EbzT8PkbyNmh/MuQQ/b3akMXduiKOoWcfk5a73HW5/2d5OIiS+QKUyJJJ3HwYSEWwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789294234; c=relaxed/simple;
	bh=PvqaWxTmHymDJe+HR+tQqrBbOaqYZFwrBmqyo3M5FPc=;
	h=To:Subject:From:Message-Id:Date; b=nkRa+9fTqsYWcjJ9I1Qp8ofuFH3241b1a7BQMYjGyaQTHbVUMyNCqH/R4dkiZS+oaqYTF6Ndw9I2fpUSTTba+eGa7Iqt4ASEM6xyJsfWOCqg4r3LRIkpMzliphKVNxqOwqpkY/rzoZHT/1OZevOAGfOoGYT1XSen6sbkr/iorOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7VI/vhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7VI/vhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7632C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789294233;
	bh=PvqaWxTmHymDJe+HR+tQqrBbOaqYZFwrBmqyo3M5FPc=;
	h=To:Subject:From:Date:From;
	b=G7VI/vhO/eC0/JVxbyy45HrwNilJGrcktuTheyqHH2HQt0q3GY8hfZa16bbukPKjx
	 TplEmQxA1rM9Zay3odZatHV/Z6PwPSMdd6xxhRKMy+/RvqHQXNzSA5JJZNT9xq2LQR
	 NT6LiiLCT2BHpOweuUSQoVKRwKkQ8CuqzCyS3TwETPyM1MSvDbvFmKs9WzxiZB18TE
	 +lSFq66moEqz3dhBm0mA1sRMoqXwWrs0FmChXKQkZhUNPMVbpzIikhPD34ssWLy3fc
	 xRXG35mKk++38PeCiiLjcOIA1Eb5EJZRAP6r38cEZDxdi7Rsz0RGPtvf6PzBLRF8lo
	 GtVv6v6eZX1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF69CC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929423368.10798.5106858189743099096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b24a1d9fc9e24e4a453d5924075a441974b05e621c8608c3efb1f540979af3
Date: Sun, 13 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789294233
