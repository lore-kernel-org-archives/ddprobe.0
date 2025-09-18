Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86B284B3B
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218394; cv=none; b=lM2RVagR26P/sialPEt7oY4dK/azap0WiiBH3b9EeeRlxcJ1mkkwSKIqCDBsgIXk1tJ+p/8jgLv1uxG9Ag7Zc2+ROxQ298oGhwxHTCETTcqKxOfc1lx4aNVqQDfwBi0gN54lbkyenXZJmjZoveTRoc+uL8BQrkobx+oLNoJJWwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218394; c=relaxed/simple;
	bh=qqDYvBrcT4lShDvAC+FSxmYYnRUjCG12kGMIa9JJJvo=;
	h=To:Subject:From:Message-Id:Date; b=G9ZYnKEBcy3Pt1zx6Z00R1gBjp25UTYtzfrfXvEyTavuzcX+U7R+aJOL+0yntgKD4OPzzwx8lRhhfJMF5zxY8B+nEh4sDXSDrWGSnS8ozwgVSD2+21ns1eUHC2nXL3Mo6OPjtaZ/SHVDzIgRN3QdRVCr3zjfI+7OYaz02pNHnFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8wNYjAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8wNYjAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758218393;
	bh=qqDYvBrcT4lShDvAC+FSxmYYnRUjCG12kGMIa9JJJvo=;
	h=To:Subject:From:Date:From;
	b=T8wNYjAKy/C7t/tmMhy+V+HtZXEiS0OdONSVyS+7CoQ6jcRo1JTwl6jY6CgQrEk9b
	 HYmALllld2BNnoCz9Y2WuUCuu3q/u84kd95KNE8MeckrPdYET+m1bjB6YjjVLMsXVB
	 v427gaA8hSypao3SkyT36kPkVAaetn2zxtVsNwh0gn5GAbnrNS7BhfUpNViYDmXmcd
	 caiegwFmwcggIp88vNuG2B1gKhX3OUvN1C/vYyNsNkmMMELqaqfepdbTS2usuLZ2hR
	 JxoUk1Duxh4hZzmQBwKfd7HbdnPT9a3ADIozXoHqPb69syNQ4YHfuT0nXoWU0borRh
	 5Z607nDdQkTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A19CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821839358.7446.488866164566601447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429a89c479214748505c101c94fbe642a721a6927c9f8181b594f41dfeb45a76
Date: Thu, 18 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758218393
