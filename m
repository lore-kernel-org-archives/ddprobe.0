Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471431B966
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717880243; cv=none; b=P92w+qmAH8A9JXUzZPwFBzrXD1SymTsRUcNUXqPYvO8wtCqeNGcJvFdiZpa/BoHbHmT4CibY5s7Iz13AJ4xiyKQQlUh5GU/Jubx9jc6JxBEtTHdC+mVJq/fRJcycLkU7i/fAfkK2S7AvbAMtnEepHl1oMG09a5iQSwbQr3D5Cjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717880243; c=relaxed/simple;
	bh=eC2f2ETUHohxg6b3nDzRkwvaSJ3qOYB1e149LpReLLo=;
	h=To:Subject:From:Message-Id:Date; b=nYcNRG8CHEZX7osBIeHCObksZCSx7sug0QvnmLBiJj5YWaRfAcEHFepV4QDjpbDs5jWSEeSZeSdnsuZ/FgnlvD24IPSK6y0pMS5a1m+TZz1EEmFG27peIqDyyjRV+wo9YDEz1UQ5Na3F4hjMUdv8icv11d6MEGRo89o/xQqhyTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quZXeC/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quZXeC/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8027C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717880242;
	bh=eC2f2ETUHohxg6b3nDzRkwvaSJ3qOYB1e149LpReLLo=;
	h=To:Subject:From:Date:From;
	b=quZXeC/EYkJkHNDdSWWpWdMHuWKHpXB/1f85DwlSJZkqaHDg0RUpuKuj4SOpJzRKr
	 FC6I5c9DjZdUijuP3udQ0EQdbBTWj1MVlOG8i/ZxAff01P7xZfTOJAMLF/0JQwIgOO
	 ukHg83dBM9B9t9bjK3E3uLZhFI+PBVl3MOt4hjLGH+rWuCFJE6bgmyyFc4yTxyfeel
	 7qaPo9MNhnyWB7w5kyurk2FGnqnanswUKZwdNr3rE92nJLFRecvHNdaIqF96vYxjd1
	 ZC7D3KoOHaKbPICNJ8LmpnG2CmmsFlXbxoMzZqWd8piyFx+w2onsN2JQLHRmO7yaBL
	 FMTd4WfNjTpwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C344BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788024279.20137.12218010194360977380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6293e3de97370449134940efa0196f569617a1d84c6f196b8dc35af562e55aea
Date: Sat, 08 Jun 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717880242
