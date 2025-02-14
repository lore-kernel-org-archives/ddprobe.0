Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443A024BBFD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739527134; cv=none; b=VshsPfybN/6IFUWTfNUO2Cmf9huM0BmWVXPgvDJEIaqCjoCPcJTvYyyqgsSAEKwJj7Kfr5eDOEIQtwJU8zMioCZPERaxB3OXQ1lUA8pB5S6BZzp6tmVqjd1CEIcuP5ITDPgWcGeYGmQrMCt6XloizAgoXAFK+LoLEG9grNmMRos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739527134; c=relaxed/simple;
	bh=csSzLjPXiueum/9r8YSYzSOhc1czvsdP2Z4esfwYO6w=;
	h=To:Subject:From:Message-Id:Date; b=T1obb4AZw4JxlMIF/Id1ijbfNJWfde/B/8D4BiQAGZDsWeQdV8PBmaUPXY8uzFjaoTcqdgrZ4tPHWNLTe/l2dYmF0xW9T5G7XHDSvQ/9ic08Sak/F43jnAjQDcMBawYJdoikO60+kmeb591ZD1oGY8BjFjtNVLNZcBiG3WbbWdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB1SMLAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB1SMLAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339DC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739527133;
	bh=csSzLjPXiueum/9r8YSYzSOhc1czvsdP2Z4esfwYO6w=;
	h=To:Subject:From:Date:From;
	b=aB1SMLAwQBtRKsTK3ASF/RbBGQ6DwD/UkhjFmkcJWThTZBdmVu5Fy5TWQt0TvfE1h
	 M8PvlkHZl2/9Rm1GsSVPyWKKvRPCpg2hFLsuXePeH3NCYUNfH8m1Yz7ZtGfxO2rkwz
	 2scbPx44cgDKzgJqj0E1ZaLd9HQH8ZFCAxk7JD3BrDcMXh2sWH+e4e/WL+n8NwZgqc
	 VPgAl0N3qwBQE/kfgupqTj/Y4R94Mthjf7kjFic435IhIVcxwPFvAk0rrayL5mge71
	 OXyZKtO00Dot6+6gEiKR0Nu2UIEVmvdYPY0hIYlV7tq100k5S/nSruhLaUgQjUTATA
	 0T/+NeadtfEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140EC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952713358.14218.2373133240484117349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79435bf36cf99978135d389c829acb1e4dfea2c92239a1dbe39142f25ded3cc1
Date: Fri, 14 Feb 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739527133
