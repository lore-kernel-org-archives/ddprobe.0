Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D85522F
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731809154; cv=none; b=FHC56tsPm8l0a1e7jUiDBriuBP1pJWSQZg7kDgiZcEgMz4HwgOaRuX2VpDhZgBust+FXgU4Z2qxG7pw6w7dJh/y0dISakfrNxfVRom21wth5dJWh8IrQn6kckyJK5wtNR62s7CnZmXEzs7UhKRfpodALD96mdz7fk5l4WpbzKBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731809154; c=relaxed/simple;
	bh=kBucWhYPn8aSQ3wf8U/fJYtWFDXoXDw4sBhip/1Y4ZM=;
	h=To:Subject:From:Message-Id:Date; b=IQE85qDgDxbwy9K8cztfV2Ns2JGOBKgA5WUBKCKADD5Txe0f62O5aZC6i9uygS0mP/N9FVN1I9VsjmP9w3uCqUntzK4pdi/9MbL3gQ1vbIABRM9uEOJI8sMxQN5GTzUR99IvGoqgwhTcYRp8hm64Ap84nkJ9a1KWxS6hW1onTQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+4Lg2VI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+4Lg2VI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA418C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731809153;
	bh=kBucWhYPn8aSQ3wf8U/fJYtWFDXoXDw4sBhip/1Y4ZM=;
	h=To:Subject:From:Date:From;
	b=i+4Lg2VIObD5T9+JOMUK9Q7Sh5M3vbCHSdmEDOehHrfths5SBXMiayo9n8P/7AxkY
	 IiXzModWmxaN0HxHhf7f+Kq2KqHR3uacpoZSjv5mVKwpwGLyCZqvZnGnl6XuVuCEPt
	 t04t6Mrwh9Ss3WD5EHTQClJGBCW+A2ztcOJV6PS/2kRcXIrgF7XMFjDFRhYZu7s5BH
	 EGiK+PS/eXvDqb1dPZzQ8NQMGRIG1Z9/BTNg0rwNGDHXePC827RkHOdKeWILggNOSe
	 w+msavcq+/E1oq/origO2H3b5SNfh8KO3ifPknIlP6moy5yfBa4+7V4mAUDAvOvm71
	 oSrIM+cIMq/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9475DD68BF6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173180915358.30243.3166579288641239461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b632f40f90817a0e6d055dfe18d2ff0c4c9fbe276b7e1383bcdd9dde65c8af
Date: Sun, 17 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731809153
