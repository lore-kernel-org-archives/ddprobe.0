Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E742DC347
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755793194; cv=none; b=BjQYceVFfkb9VG8qXm3loBAwFFY17bCRxnjAf+ZjJHk2GKN6hu83EDQYBshnV1tmc3N/RjOT8d3t1qbFcOEWw2mBSxOZ5wI9/TcSmT0pzI+zlM1htrR4PnBfIJqvYZS/knwmTx3+hOsqMJhHGCzv9o5tz5PJEGxKDcAotTFXVcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755793194; c=relaxed/simple;
	bh=ay10KbC2+RLRBa+F2uXEbn4BZYY7tWk/qc4/m/VKYmI=;
	h=To:Subject:From:Message-Id:Date; b=iE9d7nwhqRXQxImQlLkkmtxQGHvP1vvsuZ7ltMqM0TstK5bu5+s8m/vgoKpgMqu0QxMiEblE+D0psWK+qku86N/Io1fY69880TYi9rXzL1opdrIgln/BDkVLGyvUoVYUfxu5YF/vWUq7cGndDZMXEJ8nSWuVrYv9a1ObuwpiG10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRsxOFTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRsxOFTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECDEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755793193;
	bh=ay10KbC2+RLRBa+F2uXEbn4BZYY7tWk/qc4/m/VKYmI=;
	h=To:Subject:From:Date:From;
	b=nRsxOFTbNuhj16WTQtbFgnrV1pWt+1uYbtrJMYUAoClu+UO8fqRqFPHBuFZU7CWrz
	 zhq2fZyyHEzl91PIadZ5jkReVH973c329KNnptO64b0OC/o3a247BfppCom8cFUs8c
	 FE9a2UCZyM44w3WEe/rQxockrJHw3eXLESDQ9y/bK0UmRGV4jM4jL8D64UntuYiLge
	 QgLA3CgtvxFDq8eVpFH3cqQq6+nrZyxGv16BT0BYGKpnLXpjmtySV0oK2I9W69lUQw
	 uWTIWNIH9QhETPn5cFt2+P/DNgaOLjhEtD+RNT3XKLbtscQ/GHF8ZJgft2Du7bkE9o
	 ALjHgNWxIB7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E943CA0EFC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579319357.29482.3654855094369728562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895570af6ea929ca6709dfa1dcbe7df3835cf1e83c9d48340864f3b7a9173798
Date: Thu, 21 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755793193
