Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183D322B
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741422534; cv=none; b=tuBa/ZGqD/pohjJD8jJp5EWkvb7EKtrwHIfgE44FvRI5c51xZR87zWMrLqto+ptLgK1HO/DT+hJV+8fIRnFz8mfJcmR0RWSYb0p+45ez4X7fxnSiGED5eTx+XKVFaTxouyjbrZPQwCjTAZ2ElffM5gOQN9IQZizF+UE3gGa3jv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741422534; c=relaxed/simple;
	bh=0P7djX0MDOYVRKKEyKH657hZ2uffFvgCW6sDvjTlApY=;
	h=To:Subject:From:Message-Id:Date; b=XqnGptJxLN1iNi9GT4T95IzzxDivXI0BvCIIjQF67cLu3fz54MarH4JLlQyjKn1ZcMbCuO/pVhEF+q8alVdkKdur3v0ZauyPu1LsDqVD2/3ZWbdsqySD4cC/QLo8A732/G5R7K9nVRayLv7NzaSCtAd9EEywiT5nuhyh45Zuo/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDn0l4BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDn0l4BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87A7C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741422533;
	bh=0P7djX0MDOYVRKKEyKH657hZ2uffFvgCW6sDvjTlApY=;
	h=To:Subject:From:Date:From;
	b=tDn0l4BNOGAQCusqQYQssEBPWGFyAdIgiWwzSpAJewP6vNkBLCBXhMGWNUjwy4BMx
	 IDcdXjCI6wKRoM9JxL7c6xQySdNgr1oSViRUcAtBHrKwVGvFNyyY4F9OamWUHzOvnT
	 Ncyy9e2G9eccn0G748g3K3TlFsljJWxC7TmVA+UWrsfEHqhMSVPmJVKX/18pme39BQ
	 5/NnbqJZNcgmTdo6Z/iYGOxjXIgrxAxoBrECYunKUSUqXsjIPa5FOl9ICzWuZvjOej
	 QyN3+w/SV/Z0XMYZrAAmbgakYfAG7BJJsE3lJA0gaQWZVIqeOAd2MKuQwvH5NsUdpm
	 9jot8vAV2fpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD70C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142253360.23456.13619563803256118278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa18907344cf57f4ca83d35e1029bc7ca94466667d01d2fe00ddd7ca77e429d0
Date: Sat, 08 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741422533
