Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53728259C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745044194; cv=none; b=oBQ4Qvd18P6D1gOHpNc0b4cqqMnfhNeqUjDa/C2FI90GvkdTRpi7uEdI0s/oBk4qJBvdFHKjezsqET7W+zGu6Cf2WDRRmz+o4qLLyL2yCTPMtPssW4t2b1uVi0/ZmCZGPf/8TJgBnDD1IcNrh5+SNSei4/G4pjIw82PCMdWxWNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745044194; c=relaxed/simple;
	bh=6yC+yS7t5t8ID2iDco/H0C2BbMjk0qrM/fQ9bkZzP8Q=;
	h=To:Subject:From:Message-Id:Date; b=nFWQ1rxoG7iYgKhPzhVJEHoolLZkSYz8hNpk+CQhBQKGzSHAVlVsV8iwYRlBreJpGz3EPZuoc+sRvax8p9fl73ef+f9A8egZ8g97Tj76SJSH+L5EKKtGa98LY+whDg/ZJ1GmfsM4DhNXG8RDkcMA3vafPX0IzPbw7OjEgsGsP8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHAN09nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHAN09nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF694C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745044193;
	bh=6yC+yS7t5t8ID2iDco/H0C2BbMjk0qrM/fQ9bkZzP8Q=;
	h=To:Subject:From:Date:From;
	b=NHAN09nBPFyjL5GiZmVmMjSda5udj6ebJfn/wlRUeI+ljaLm2+FvwBDby2RMBPwha
	 dzZuUjuyNVLeJNoxf/tDTC+gQ/6F6YvqSkf1aEADHPsyQeB4G3eWChk3CIpZb/12eP
	 PrqzwM/bugltyrrB4+fKbpBii+/3r1INQzQKEWZNqSiAD5/s6C3UKLWHZ5bAYuPTYP
	 nz/7BBTp43HrTphVFRpDm6nbCGX0rOqJNqzWdHiRsDDxn3khE6LMr1U9gVpee2fcrl
	 rGNw2u5UZcloS1evPNjuSZUsTIwU06OHTGNLet/z8hNnRM+Yh4R5U3/4ap51nG4A0/
	 1R3uT+rUG/0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5BC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504419367.27127.1365648121349769903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e73a20541e9c074292f49a61e81c0801a2b5c59fdcd21359e66b7bf5ec7ffc7
Date: Sat, 19 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745044193
