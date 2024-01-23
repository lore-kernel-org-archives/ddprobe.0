Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018EE5FDA8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706033897; cv=none; b=lSVdw8lCD8tUHMSCHc9pWOBNH8FfftWBsGzvznce6fJo6s+32/0B2e9Ja2KdRfc/DU5VZdu9AxNR2CRq6eGMJLcKMuyTbuIoN4c2TWIRoe47tdSmWOpss/KzyQNFF9BDryVkGoqVw95olVe87ErikKK7NvuA6vbDD8nTs9S3Kxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706033897; c=relaxed/simple;
	bh=e2Wbt2RuzvLO42Co4IipLS/uDIcA5gFHa0lrWgxKX+s=;
	h=To:Subject:From:Message-Id:Date; b=etS6cLm+m/CuKXO/7iDvLwDZEE/HOoYlXCI1KSD20eW34/1rGkQ+8m5DQkJoH+sT6O8gZx/upWA6g0SolwQkdQeI+Lvw0EY3HkpHLPZv/rVEgvRthNiVqkpay2NfqllnLe89rrQBIo9k43Zhk9fEym8xUBERdLquAYKtZDjmXtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSs0hJiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSs0hJiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AB1C43390
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706033896;
	bh=e2Wbt2RuzvLO42Co4IipLS/uDIcA5gFHa0lrWgxKX+s=;
	h=To:Subject:From:Date:From;
	b=pSs0hJiLKaTt+0bkFRYrRdpUQQUhcXOrzwKaERJwpC6J1pPPIVV6staYs8nyshw3c
	 yvlDNCW72qq1CLT5ODKsZHv9ZczgxLO9d0ChdanHkCIZeu/a8DyGs2X3i4IhZnQgak
	 6U0gZaMrE4rOQT4INA3PZINhTKsoRiLJZM7/8Mt1aW5c5AXrcMaBeNqlmP88KNMZzE
	 3vITX+NF8Kyasp6FkACTqgeD9qtYjxcQzgQsp2y7q4tgzlOZTd3pf+zBlz6/ks37r0
	 2EQk9OZSBTghZxUzMAqTbOAO4+jDpmvRV8/EgUmvXB9885f8Hy+WYA9KRAmFXNx20g
	 Ic1kcngeqXFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFA6C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170603389637.32203.10463847008402651593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff892329c16660db495ceededf67c4c574753a7b226c8ac0d477edf8bebc15b0
Date: Tue, 23 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706033896
