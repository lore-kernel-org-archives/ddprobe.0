Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F842882C5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774659294; cv=none; b=opfC8ySu2zMENP8FG2OCgbfsWFIPjzKEfq5tM7FvqerRNGuHNSZ44XjihqeNv/47v2bpYWpmVlfDB4ofHn2mc/rmQHK+gYhznczlRkTfLTdDKTCeXvfqlPIOQJYW1glwKhPB6FQcwgw1rI8Y9cLCzdgY7Ws2xgfkU26DSrIiwnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774659294; c=relaxed/simple;
	bh=ISiGoIZ+kqWXU3CdL9qBPnDdtnb37W593/oyobsfS44=;
	h=To:Subject:From:Message-Id:Date; b=AsqErqv18QsaeNua8W6aulgRcchyU5l4RsnO2AWKOKjOkTOZEzifFYkeWRtJvq3NeLVgi73orvsAztELp9k7GuYFTpqwX6v+C+7xcaFrijkCF8ypiNQ0h+SKHvjs2naHQWXNK20aZX5aahqVgzCZSND/PE2UzKsjej4hzjk0tsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iomnqyHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iomnqyHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06CC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774659293;
	bh=ISiGoIZ+kqWXU3CdL9qBPnDdtnb37W593/oyobsfS44=;
	h=To:Subject:From:Date:From;
	b=iomnqyHHkd9GTageEwFNadpCJZLGhUeYrBnGGHjf/BhvX2R9k1qmF6D3rPZsfKmZF
	 G1nOFX50wASH5RBKjXec4V/5CCLJ7edFDmriHke7rXzEWO43yRHENeVEfrr1hjGTAX
	 kaLJlG7R0P6NQqvGOBxlvFUA7nlmewpu8Kf4oDhk+y7Q8VVdS0FZK5ZAr7eVWUNBN+
	 8w5bHiKIAgB0ouXxWTuKbHPiXDRHR51qhfnH3CynZbUFtq9Mtj77V0FHP6iuv0Gh9x
	 e9psxjDc2vacGUjh3+Te06NGyz8cPVgn+LELt3YN4WXcRVYFOCGDH/y8+tjF80WMsV
	 wo46OqUUimOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A010F3DC1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465929358.31406.15971455034939964315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e297677d95f76a3f13ea0e22553f6eda532c0298c1cfd83b9d182ebcaf798a26
Date: Sat, 28 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774659293
