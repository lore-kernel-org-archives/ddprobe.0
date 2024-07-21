Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EAC2905
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721551554; cv=none; b=iY8C5iGDy+iD21aNNUUHdxeU7qXiBD8yDrmRh4GS5YihQIcGhkl1vwqhYYfKcjrzvzAhHc52+PGnAnGQ6vIlu6+3a2C+737nEeUSZrIvYPwnIgwIvLcjx9q+T4MCS/akDEOs3UqnxDpqIvlf26DUeyUNjA77q/EThkik0vT3fdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721551554; c=relaxed/simple;
	bh=Xo5RW9V949o9M5mBUtEvN6rTa7QVVP2vDQMBerJ3NWs=;
	h=To:Subject:From:Message-Id:Date; b=WabWCPVKCTSYz+PCZJszIf81EXQm2882Cb25eB+oIc8/VK63G33Q28vtbaCkqpYMCpdsvGet8t4Xdaut7Dcpt68DXv0MFpxD1pz4R2rlUGlcqOhR99ZulshxJ5JSJO/vmG7AjvbuUZJfv7dnCgEQ4h3vMhnSaPosYVfH5PmK3jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNXddTOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNXddTOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B080BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721551553;
	bh=Xo5RW9V949o9M5mBUtEvN6rTa7QVVP2vDQMBerJ3NWs=;
	h=To:Subject:From:Date:From;
	b=KNXddTOognaPAVffCiAVN9pn1lATN1e80snoLGnFZCPq0jqKqnsz0aeXpH5gkh8+6
	 EsVF8NVvxf/XYgiV7SveQd92eBsyQzQBg+sOtTjvwfEfQfm9q8xak5RKkle1h+q4Wi
	 EV14HrqF4wga4OM4mxswutLhM73XMxVS7fuoaXyXkmtBK9qqgt4ZBQp026G2jWx0yU
	 /Zk/Mzcswj7DaWLD3B+6xCEsWjgXZoR73nTKO588/MKUIkkPmANYP+YjaNeXZeIbaM
	 mVKQsDhYCKC2AXB8SFv9R6p2yC2mVwTxai53Yw3zcl0WrcI2ykzsxRD2Ghmzmk3yKp
	 kt+43p7IepaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D16CC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155155360.2978.10559048558148250792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a85f99fc8743ba0eefbe6d7a8f40aff366e3811c2dea68165503e2ee7b5c10e
Date: Sun, 21 Jul 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721551553
