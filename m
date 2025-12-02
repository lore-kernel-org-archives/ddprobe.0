Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248D32FD7CA
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764678174; cv=none; b=p50Ql05FpS3OIwWFXxNk0RU+j3qC/jhPGupVpzATkLtrnoZqk66a8Fhh3y+8d7uKOxHt9D3fqOGLDgXsHKsla9q5mMIxbnmClnZQVsL6FV5UfiJqWTNHOUIt5oIHj3w/W7RbrexBHDPiBdbU/yG4/RXpx80Zv7qU+unFtTMqLrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764678174; c=relaxed/simple;
	bh=pQPi0vJW5s673+TKbEkfeCWY8/O7WMvisF2OWMKXsbw=;
	h=To:Subject:From:Message-Id:Date; b=NQjWLUvxbwMfP3n+zw8ooffyKRC4FXQy6v1kOjytRm2eF3DGQRf9rYoZTZvK2eBj0x9/yRZfbo5qlH+d6FJA4mXuSK5sWSmMw3mf2YCzYBcH8/roU9vtZvdYewqYcMAuuQ49dM9I1TWZsKzWAiIZhkynJ374j2tsy0civEn+5qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYBgI30m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYBgI30m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A00C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764678173;
	bh=pQPi0vJW5s673+TKbEkfeCWY8/O7WMvisF2OWMKXsbw=;
	h=To:Subject:From:Date:From;
	b=UYBgI30mF3j2EE5jJP1R5u6qfJX7ip3kE/QC8JmdRVwp+WPtO3IMhC9zVIRMzJF1I
	 3DP1ZItk1PQfJ2vHwzCv40ljWYWVppjluWN19+MZls+MRwJhgKfO1ax1kmKG4wtMbC
	 vx7m2zssKKb/8RIPTTl7QDa1rv+6SWjiF2OG6qlg1oJEhjI59BsK0VUk8BPG5GLc/A
	 PwZkxobkwIMbVlseZfk+FU+Qc2BmYyEPGnDanockYZSAOrMG4bIinW9Yg/vkl1keVn
	 +e80RFYFt6H0AXTxm72sYVb4XMZnYbCNAaD5q7OD/6YObJM8SPVVjy4SXPmjOXoxXr
	 7DB6Bpwy9H7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9828DD116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467817358.18285.5189138188554596987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f985882608cc217a89519ed2d0486f33cc4f143f76418ce9e825fbfece81c3
Date: Tue, 02 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764678173
