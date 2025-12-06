Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C59121ABDC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765052574; cv=none; b=gbiu07QrK2z8oMpWiofZ76tMn9ZYU5r/fUnRcQoWbfw4QwfqicafK40a8Z1QCXnnVvmfNbUJCkuhBEp/pnGWvpZ6OqJzhM/seH+1WbCv0iXZN+fb4ZdrL98j9qI3GzPuidFo/1vTKViwlsycTdvFaDY40odfMvzZcBEv+IEU2uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765052574; c=relaxed/simple;
	bh=EdsnQoCfzSgYvV2jnumJqCwTCaCMUo5HEAQtPWO8gsk=;
	h=To:Subject:From:Message-Id:Date; b=p94tqelKFhyyqgDKH8QiLjzKsX9sWT1u2gCv27IFysRGSnX58Dzkd28lgJgBdYJTniQkdyu8okLGSSXZ1z9sH1KbUrgHOZbgohRC9BRO3BZ6bv0KFJPXkjNY9HpMFvUbEOQ/+ijmwYaItkeXC8CA1xmKDMT92V9ubGtvaQe9nwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6xT1fX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6xT1fX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0819C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765052573;
	bh=EdsnQoCfzSgYvV2jnumJqCwTCaCMUo5HEAQtPWO8gsk=;
	h=To:Subject:From:Date:From;
	b=h6xT1fX5Rzdn4lNLnc0SeZo/jHgBR7LWNdinIhR+ju89FjtV9wifVkA7eyz+UR3td
	 0DKwP8//5aHvHohkSJ9LaZohmNyoQ9v1dyXF89I9IAY9JMF2os3WhxmQ4bzoeqnmZO
	 z/+EY54IgAFBij+npScXj+B/F21txl06TU3o9GeH7vSSppHJJFyL5AxMBuQCpkpWy2
	 fg+uY/tjwAmw/tS8D8iGPX2NMpTmwjMGOBNQrUWO51gcOncRxw2RQGAPp+TC0f/Seb
	 t3Be4SvF1gDTS5Lo1F7UUa+/MJN2JlotHF7LZEfekGyhfMxyyBuTiXNZSiSOaCtgF5
	 7UmowuschUhJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98811D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505257360.32387.2068656087241173075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c9f3f3806daef6134bee29048434021740f46a8bc62b8511acfa8afacaf8fd
Date: Sat, 06 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765052573
