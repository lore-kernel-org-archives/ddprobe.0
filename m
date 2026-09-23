Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEAD3A3835
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790161236; cv=none; b=sZqBvkS3R5sEEhpit89JGH6SXZM5e3XLzJp0r2T3nHTAV5BBDW1oC4GXYXRYNBaXZTwuVZud2mtiK+020wHzQDN/r/RuhcTZ08wPRdwRtnfqbPHL2U8sQevhA7Ghzl7tsrBefZ80SKAPVCU9ZJD4VRuzev9cvJnOgizfb+GLNos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790161236; c=relaxed/simple;
	bh=/apOh7EJ3H9tzwsYHhKGCt8GwLnCMkt8LStE/zX9mwQ=;
	h=To:Subject:From:Message-Id:Date; b=bt5vtp7uHggdAnjk8aZzZ9vEy80DLdT6v+T55ZKNv19UeOmiTGRYgVHu0Oro3V8cnymM1UKagd99ilsPQ/j9r7yBU2pkv6QcTsIy2aaV5rTI2utRhmVNnoYA1BYT7WNkpayHZDik3WoWDwzoptJa/ExpRVcTEg0bTe5ptzYMfQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fH+rJO5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fH+rJO5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7BBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790161233;
	bh=/apOh7EJ3H9tzwsYHhKGCt8GwLnCMkt8LStE/zX9mwQ=;
	h=To:Subject:From:Date:From;
	b=fH+rJO5LQ4iac+n39gXF9/egeHZKLn+wEC/fzJ27oAlNxnLh2y2+HkctSBgs+NWGk
	 jaJ/FND2YkiYcMzA965KTUtoD3LUrX/BkCLkD7S2wDrgkDd0RIxW0DkZN5gepiv4A9
	 tz0U5uLuS5KhPl07jXOBXN4O6SPxaiiQ5FGTJl8TWPCVRoGE8mEaJOflXqkOLTO0jT
	 FZIMfInz5bM/9sIS1m8BeopeNyG2dgCi5v9HtWoi8hMv70woAMbeJCXGB+bwmuzXNr
	 /9o0jrAmoDWGW9sBfPsvKBr0BmmBzDY/wRKPA9+FvbQt8cJChjjckVoTPIQYVKCov4
	 WIrjC32nyE//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BDFC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016123372.14120.18046851095624723776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d7c5a33706a8012d8a61f4c3c8cc5be9fc936fc32eb7b99df5d752facc5bc3
Date: Wed, 23 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790161233
