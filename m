Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176E520CCE4
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761354594; cv=none; b=fdDxJVi0QvvpAY3T+oF/zZduR7omISks40IdntFq5cwqT6D0MKg+R2cGuhWPx+sZY00e19w0IJPP3kMpIWCixLV3I+yIyTDPYRAAKByjDuiouU6Wpcaq7T4mx3ZJccU22DhryWcBR2IUsd8qEV9Ti+0B0++KbGyjYDN7uBixldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761354594; c=relaxed/simple;
	bh=twYegA8I3ky1pq2HmRJq05HF1yOgTcHsd8WlOO61w/c=;
	h=To:Subject:From:Message-Id:Date; b=sQbmWs0jScTTtbrltv9XffBHA1pjDs+kT/SpsMGyrNOi3MWVxtkrJiyu1FOx3I0l0r4/VeaJYyMxQSftrkOtoP/w8H6DTlOIPikYbvrTvb5Rtsj3LukZppN6Tl+1Gpz6LO2d+FUYI/YiQfhdOFS3jttPngXzJQTqlTMXdrqXm0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBmEEx+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBmEEx+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761354593;
	bh=twYegA8I3ky1pq2HmRJq05HF1yOgTcHsd8WlOO61w/c=;
	h=To:Subject:From:Date:From;
	b=CBmEEx+7vdL2JTDsUSqyqWygXgfUQYYWuo9SYKWGqKazPwWDqV7mHBFuj9lTjXcCH
	 3LOQT8Okm9COu3ThPXPpQeRZu9WGON05zuuUpasdEc7PpzQX8X5dqEBf+g6rbkcMxI
	 WrsOxPQBJQaIm631v+8WxRkLjtezua0aJ1n3A36PP+ip5SjLr+g9HyY2PGSOKmG7gE
	 HCmcW8G+mi7LSEJ7I+ifGy5NVTZEcELLuon6HmEyB39T8YewhXHvq9VzW3a3SNP3nl
	 w1dVEm95buEyz35WoxNbPF8Xq0rkUYH/tB86CTYAHYiikPCWUJYV8OIZNKnbMpmz3h
	 7ojwSB4VH/wPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90566CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135459358.16806.14323493395531860052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4378b02f89624b47d0d9d62423629f1be700b3f488d90068f090e98c13a8e52d
Date: Sat, 25 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761354593
