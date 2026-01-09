Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B722745E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767917634; cv=none; b=Jz0GmnYY7WanlCX4wtMc8UidX2c9oGSP5K0O+bVA+4vSvEhFSdSvwN6ujkMgzpt3uAefCet1DGqen/54c7xTNSCs3lB30MX7sHMJccL+czVKVTKsUA/YgMk/ANvm0GcRrbpBm/iD0H0wBcmtSpCp++XJhMA7gpsFCTt4yfyamTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767917634; c=relaxed/simple;
	bh=tdDDMCBRgvxERs22fbkFgHHoXNLWTzAvaoBseN6BfUU=;
	h=To:Subject:From:Message-Id:Date; b=Yr9zMC1jUBkChpSlISYlsuiMTKRCG5QZbXXVBNJ4sHg+W6WxaPI+b/pKnSsa4OBECZXQ5d07UXKtq+s6VsII22+g7gcPHaVOapG1MXh4dcIlKthKyqBWFwi7FHlGt4396MpwqMOJh+VISkruHYI8Z95hKa1BJVIa29KvxXtyA0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq/eMbIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq/eMbIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B96C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767917633;
	bh=tdDDMCBRgvxERs22fbkFgHHoXNLWTzAvaoBseN6BfUU=;
	h=To:Subject:From:Date:From;
	b=lq/eMbIarrUuK/xIpvHSA/rCvhEj5dJVDQN/A0v6ouBYge9oWd5GQJ6QhDZnGeWRH
	 O7V8ZvteqsQEIV1+eUvhVpPTsa4i/ycTOcZR7jmbqfEO24o3LPjChrCst7jjYX5Lmk
	 w1GaeU0i0vkmXjitY5FI0N7RldvJmfyZSh79FzPiYljwfcvZpPP4M5lBIAZbMDiULb
	 8/oyzbIVy7ijrIOT48ImQgMkDAw5f+J7Hpn70QqOdawE7daKQ3XeI7Y91aLfp4L7DV
	 Esq7nmYFQVwXhQfTUlQ9ny7LwvoyWN1btEJbQNjPCNMnVgsVyNfMcw75n7XVDU3O53
	 rv/g1ieBI0nsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF4D232C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791763358.20531.16890721688761144131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524b01432a44ed3849414dafabd6d39e101ef21c05a3feb4204f9dfd5608f58d
Date: Fri, 09 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767917633
