Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A4D1311A7
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726521354; cv=none; b=odpDkfNzHFBLqnN52g4koD1W5O8Gxyn+/I1+XhqWTxVkNs2ua1rOmyxE9wYIr+l0GEqpypt2aZIXwb3/xtaAT+ev6e2ygrNOo1xrknhCBelZo5uh70ek7/PV4NE4MiDatTxcrW9MHwbil8/9YBN6PZQcC+ChPPxv66PLPgpcbhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726521354; c=relaxed/simple;
	bh=VIYcYYgIT6oRYxQKkw1wxF+akl0g7Q75TFTfngdSkkw=;
	h=To:Subject:From:Message-Id:Date; b=l5QKT7ob8YPM4cYeM0DXTJdMOx0Q069neNBEBjrR/FiDOIKs8xQp0JAk9LZDgyXYQF8QD3LAd/doTTbgz7pN1dn9c1Py99a5zQTRIK+J9evRcW2FwYS7M12tLfQ2n9lFMA+9e5w7Kie3qXNNfkfVNv0/ZOS/zRRdKLMXPwGDrpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKhyL3v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKhyL3v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3388C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726521353;
	bh=VIYcYYgIT6oRYxQKkw1wxF+akl0g7Q75TFTfngdSkkw=;
	h=To:Subject:From:Date:From;
	b=bKhyL3v74flxBPtHB+w8LamgG3Oh4jlYp0GDHEHegx283DVA4LiDXCYPu1gBM2j2g
	 yizN0l9gCozbLSJPipGUJRDsNVjSOEPvO7n01+ZMjjJko5iKtOb7AxXzl43WSbV894
	 4FGtzrb0NhgWsJnDTHC07uXcg9fFiQb4cI6iPSWhNK5W16OPB9ZeQ512zBvFPnmtfF
	 jM83C6dtd8cRi75Ccn0QNPQyKRfnkHW6I0N8G7zTOiskJKv+scIYRXWZAMcIEgui3b
	 tJNAdc0JLHvj1YCDTWmSdGQqSBaj8n4GJvS/tsshg49RT2HReUIKaqZBXCFV6RtSPZ
	 EfiVSPviWa50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F57C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652135358.20071.12070965989687077291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8e55ea419d0384fd9109936ae78b69377733101d0a3153908bab28774c0a99
Date: Mon, 16 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726521353
