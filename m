Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFF52EB0F
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786207234; cv=none; b=ffyaLYFcC56kPAo7ica9vRYfXIhFG+vAO7rKN8SiLOVgpICA/zKjhjh1nBgJt4PY7IyBMO22DJfqjHj13z0rlpDH8njYHeRFsdM6NVFKQRmmve4mqLvx7AAqa2AZ2KwrHpDjfZT6BrEQrxdc023fBt7UWQtW080xNLsWUdfKEFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786207234; c=relaxed/simple;
	bh=SWTE8qrQGvRCEbgyORHdZJUn5BHMSwEa5sk4E+NiHFU=;
	h=To:Subject:From:Message-Id:Date; b=Z0+TEbnMftuPtfWdMsoySfQrIINLzwMpPV6x+UzkYhKrgYU/7eM/gh8B8tfdxC23ZMt9TW5Sdtefh42fu4b91kYAOGCviYl4fZSmVQIKqzGMEh2n9UaMgBZCYUiQplA+DUW1LZHb+w93tQRJnF2R2vtH4jm4n9erYR+ebXXgsk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1K0meZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1K0meZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07EBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786207233;
	bh=SWTE8qrQGvRCEbgyORHdZJUn5BHMSwEa5sk4E+NiHFU=;
	h=To:Subject:From:Date:From;
	b=W1K0meZHQ9CsZy1bCCxMTsXcxO0+tBf+R1hAjN+xj2h3u8V/V/tPLfFHBDbe9qgD1
	 szP2IFpGKmiplHWUxOqJEc7y+bflqBJFejB+G7lc3hKl+f7TK9Cx2A7AdoZm/+8/Lh
	 gqRx0LH077ONpLqlzFrRIFhTBHN6X8NkWxPsxG/1KNV8Xovfym9FjdU16ZvEHBMQxn
	 fquZE5BvHM+ppr7+K1hBSu/ybmCEAoeo3by+0YnLSfaGdg+nKqLw/i6PKcXoWH9i+k
	 KvlD8YxrtzSzAvPyFO2K/IZF3G6gp624edEYxYplFkESNMq52wIShaBPn2bg8PAUPZ
	 k2VHkalf//lSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB437C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620723369.8280.9463596571033032940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd94a1ff9345c03ed4486770fcd123130df23bc072391fb9856e1d4f7628949e
Date: Sat, 08 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786207233
