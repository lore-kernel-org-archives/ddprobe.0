Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F9D28DA1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738105555; cv=none; b=B4mWXoQj8Vk1uuX48KbDssVvjTtHTaZqwz5gUJFRWvtXKuZ56Hw+v0pULBrsOcysoHEvSbMBBEl0SV63axapsziCpIin9fHB72dlnDu/AGNBFWsSzmtuZWx8XNZF1dpRHfifDlMxBNFRQfIvrDuY3vz1UA25HgCFgcYgP8acnmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738105555; c=relaxed/simple;
	bh=fcOwOPE+xiAO7rnfsrnaeW1whKMPIb/mS5qJXu1MO3w=;
	h=To:Subject:From:Message-Id:Date; b=ikutgII6xvkTWWf/aaYFJAnBLcyVdBY/jPNI1AJzvPzzRMgxpxHQvEAf0R7d5KrRzv8JRrsZllU24aghrHXx4MVCzVNYfe0PFApgeYpRd6inakdfVc1X7KVLWgIrFRQVEE5yRHr8PSKcsGH5biY1Zyyk6yhA/kV8ZDtWssMZShg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3ybll4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3ybll4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF53BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738105553;
	bh=fcOwOPE+xiAO7rnfsrnaeW1whKMPIb/mS5qJXu1MO3w=;
	h=To:Subject:From:Date:From;
	b=o3ybll4Xq8wk0fMVR4dyOQ1TDcJ/Mtz3EszyzqHRlCkQEQITzC3ZNotuXW7CYdGq5
	 iCjwNort2Rr4Kz+B14RLnSNMNcLs0Oyqb/6fvMhiyFp4u9sZA2mYfmZ6G4MVh/Euxn
	 uaLjCLJlZg+traGQClSSrQfb6jWf13vfSppXZpoSx9V48ZqFwQj1qWe4Hz+bPxCpBS
	 bCOhWVHnF4LsWmy3uPsuqL7RrsDL1XYr/YOnmrl0j17Slh8/Bac1/zyFZWu0Gt4wF9
	 RjptdzfGKQpwLheIr4XbtokB+oyQJ/dUpNVcgSqz7rtruUAn6Ud1NPK+C6V2hes1PS
	 5b4pBy2P6keLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F89C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810555358.12955.17008711008597250214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6627dfcbfa097b6e9a8b286b8585dd5ef33f4beec7845055d56070f240bd5d
Date: Tue, 28 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738105553
