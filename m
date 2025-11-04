Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFBF257854
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268393; cv=none; b=J0OqhZVDV8nxVf1GYtn0wUDK/o7LXHl+gYkbMbJ0jkKWsin75otc2T/95+1BCYwgmJmXWiYWreSnSwFEQcW54vXudCAq47yU1/b5kw16r2yGC1I5Be1c+OKzNTVV5DXlS3wsS762qCbnGICDet7OcQw75gt1R0W+DE8+/qVCyBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268393; c=relaxed/simple;
	bh=kGdR/MZNZHyLaGSdeUJ2oxTPvDqoZ7FNxBK6O/rdGHg=;
	h=To:Subject:From:Message-Id:Date; b=A1hDVyPYyPgiDv6eKidlzPSNVsqBC9qhL2STWlUGCDz4gJIIylPFXNFq1Cxbbyiq5Y8/kVvAtdA0dEPqAdg8tIYU43GsHNXtcbVLfrY5Iv6vUrQuq3ZLH6c/QjTto2baV0EC28QA2Svqj9I8eoCedTWJ3MQvdPJS3S/J9VrZDHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj1W4MVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj1W4MVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2637C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762268393;
	bh=kGdR/MZNZHyLaGSdeUJ2oxTPvDqoZ7FNxBK6O/rdGHg=;
	h=To:Subject:From:Date:From;
	b=lj1W4MVs4c2j3e20tPyU7ewKoi5Of43vWii22YHoq5bKq8N3hmrXRUIQ0VTKJTFuY
	 YaJ1mgwqkRhCzHEoQbC+M0BSFy2VrcFxrU9oHHxhREkuJ6HEbKhbxgKk3tutS6MiLV
	 KUaLnYvLh0a5S3XHfOJvg2KwpFBcLblc2ZM0/VgD5uiar/gDxqWhmLcIQIy7G4Q36r
	 aDCeo6FYrMWDIvDDlF5zp4NN5ydY7qY945M7oEmjK3owI1hgeNjsKTsFxB2RQzGqnt
	 +76ZonoCFt56Z76avl6PVIg0OW5hpSdiEeAKXXss3P44huHe4yHh5hO8VLGP94fu7n
	 5iAVJqQFbk4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACCCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226839358.21921.4623159814783183756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae697c8af9aafd43be7ebb43ffd2d882f4a91e73f5f79cd361944a6b97e9e21
Date: Tue, 04 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762268393
