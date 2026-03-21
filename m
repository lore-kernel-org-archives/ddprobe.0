Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39541B4138
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774096494; cv=none; b=ZKtfmBwGncFyjWyoVTSQFpDUIIzN9Hu8qUaznZ6AYLAlyzN5LYxQ9W6GxySNX3JnjdfmUnKOR0LKxoYYwUUCaObGQTg4R0//a2/xaf+ss2wuGQsel89xvzSM6Ckpbu1vClcD3Ru29RC0wp3Ccb00v3ritX7yxWL1vO1lQEGZJU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774096494; c=relaxed/simple;
	bh=0x4Kb7QBdNpk3JnasJ55tyfNBT7Bx1EXkzTUJmqzviQ=;
	h=To:Subject:From:Message-Id:Date; b=WiM95ceOqKGBfcaA/ThPZfZehM1D0cuMIQZPpYK6EEF6A/maZ5DkUtu0fzeHjt3MB7MhQ1GOLpQcLlOtlZUU7FhFMm48QryhrvyrSQh7MQl0Blk3vsZ86fiYdEBPkw7le0O1dFOhIHNmd13Vrr7or4HRQXRCyxN33ULr3/Suang=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5awxHFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5awxHFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6516C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774096493;
	bh=0x4Kb7QBdNpk3JnasJ55tyfNBT7Bx1EXkzTUJmqzviQ=;
	h=To:Subject:From:Date:From;
	b=A5awxHFWCXrTgrRUHsvmjE+q7qelXzQ1obBYpbE2jQyNXCyVQxEH1lRb660ATXHCx
	 nqpYEOWrmNj1AwUGCQh0YPh/3uQp/OMcHyg65QTq/7nZRSdbl5DM51KyOy4msebSVP
	 Dwrr4gnNVMaWLG6T3ucuOcLIrrUYRG4eitM2CTU8lusiglsMBJkhIhLT3UfhHDvUhO
	 pw+QztZ0jndebhXpwppJ3nGHKYjLu9cB5LMmdcr9lJ+rd4ioxCDCxG042U4eBXsnJW
	 p+Lz0REfV60/kys3LHWWcdD04FHRwcMyvTTezj94cgscM1b2WVD9y4tCF0E8yzrDmZ
	 x8fOUCuYdKNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496D1094471
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409649357.28732.16499584034569640277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60e4dc2fe3017d5b6a52005d03fe602cd33d9e7d6fc6ef0daedf0af7ca101c1
Date: Sat, 21 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774096493
