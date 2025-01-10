Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A1A209F25
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736501154; cv=none; b=qMMovqDZ+ANqp6fKzizK0+dustefItxBHwESOB6OLnv+QwlyH0bHn+NiGPjdT+W/wo5cZjeokZ6LsJhzPpy30aiszvfaMQv5epeBo67cBPtTZ2qBj5cS5GdklAQg9X24aGAzLG5o3PKiT/e2mqdEAzsB0PHSvze/NliyWE9Evcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736501154; c=relaxed/simple;
	bh=ek2z4uRF7RKRoatSRlGHHYT57xQ2l2YVF8nukJL5n/A=;
	h=To:Subject:From:Message-Id:Date; b=QgLZ5+UmEdmCEHPw34akrZGAwhHAykpdfbTgcuLu9mE5mPoADVLg3nDv59I2x3b2gT1Shg97ad0bjCaUjkkGEzMGYbC6zJE791RtOHWhyNFjwCErqX39WNJ6cJhq/uEUdZTxeL3SAjA9I0KR815XdqEcUG7UTFt1nJj74M1RQWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWNFc7zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWNFc7zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2862C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736501153;
	bh=ek2z4uRF7RKRoatSRlGHHYT57xQ2l2YVF8nukJL5n/A=;
	h=To:Subject:From:Date:From;
	b=nWNFc7zTT46DjTbY9IKWQSEO4jeKs3iRPwx3GW/MCZYiUE7oBq+pFmNd2V8eBxbU3
	 4YqHJEuOgwZx7mpLoXP+5u3fETxkuPcUx1aQ74Ure03shwlgOapXCZ2ZjxLgTARg07
	 xkE0cGv4Ge4ulv35eesP4y+dkW3MvZ0O7JKGpbclnL39PsCZxwcz4IoYCXdbsH7ng8
	 kP+CEl80tZUUiua1jrHAFhPvcMe59x1zE223VefepI1gJalrcojmWr6/HM8sF33IJ+
	 03a2dr2SDeMKQ+2SrbgDH3wjk5OCQU3j/NqBa54ljB0OO13qNVo9Nh1dHCE9KcIRNd
	 8x1PvNI0jxaKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D0E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650115359.16597.5170080907487538654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09bdc5805c7d8b01542346db5800b6e863839ecc92301d86465e366c211936d3
Date: Fri, 10 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736501153
