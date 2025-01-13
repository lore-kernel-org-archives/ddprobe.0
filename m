Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8788F49
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736765754; cv=none; b=pkoRbPtt0caPf15N3Vo1acR6GH/Wgf/lpgXUrwBnr+dWXb8/hSy/QfUpwZ4NmFU+UsJ/vYD27WvNhgrLnzu1kr96K73qt2aEWWoWvcEZcTj8vwPotlYvHm/XnN+wIdpHCQnn2yXT/UnUnisDaBkcnB0HWwwt12P5QpA2cPwhMAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736765754; c=relaxed/simple;
	bh=YF6mLDA4rJYU+NASzs/3A6547mCGQnp4G3INT5QBrS0=;
	h=To:Subject:From:Message-Id:Date; b=qp90fTpXHCn7IUmpUimTel5CKSCZuxqlUDIpbQ/WaPszrDUHGKHMODKkuLQri+5pStfjGJY9Tyfg0DTOlbeg+07RpeSMeMNHa3HBTzKam02SfHMBsuLk67EQdElYMPQhRVLIS0mhoOln8lHsZ7gYktNsirBbjgnqbIESoB1Is9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHydAmJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHydAmJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E83C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736765753;
	bh=YF6mLDA4rJYU+NASzs/3A6547mCGQnp4G3INT5QBrS0=;
	h=To:Subject:From:Date:From;
	b=rHydAmJJX0qln/4j3oHCiwykbwLLH6cjTNvRCpHLUp/RrqQBqEMK99rJC7fmAsx6G
	 PSdJ5McKeQC2u7mB2Gl0APL/oqlvv6KqG9MFVkI0VlbOegwO1RCa+mZ1cj7HL0jKaa
	 rHlUv27bN2vMcTDxmDZGy8s7kw/Ka8pYDJpGwy3ToBSsEl2xeydr4ovr8EEEXK12oW
	 7J77eFVQIZo86JywqPD6SMRcy56nBOE/7PrREk/7UmvfSOA0gs0iQcdV8qwa9WVJ99
	 XCAaYDw/PJhOUg9TwrCQixFA2yL4snfNQ4Zv7Jqh2KLRezl3TDzrmCLdXR2Y9C6x8F
	 F2WExH8PixrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA9E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676575360.30976.13324377629737127597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb50de70fb39b7218bb2e189e532afda8e50085e4acd897983759bf1c0c60a8
Date: Mon, 13 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736765753
