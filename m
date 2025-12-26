Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB7A17E4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766728434; cv=none; b=HRgsZfIlHglOjSv4n5X4i0ILlFUmVW3CWizzet7rG5F8pRThHc2+KXe43ubFsbHaZL6ybwJbYqHme3QNm4l7JyCV+4sCXszobHtWS8/PZb25+qkuPN8z/66rZJ+trVAKLxta9jf11Bi9Qu/S+lvEVMMxz7p9udQd+VzX1Rplres=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766728434; c=relaxed/simple;
	bh=L5j9R5ItboCqVcsf8GCYBp9jGx9ZqBb+vTXHlwA1hWM=;
	h=To:Subject:From:Message-Id:Date; b=UG7PFXzzec5ION9kWMNhUY1mOPU74aduIUsUxNciRHYUuu1s7o7ijrBnMH9SNpubA3aE7tc681uCnP9Z3zeY2ZawRfIUuwkYm9aX7gptP8KwJuA5NT+A91HTCHZAbL/CqYfAUbAqlq7IuuaQoI2Wg+XcpuUsppm2W5oX+P291rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9Gg8E1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9Gg8E1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2D0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766728433;
	bh=L5j9R5ItboCqVcsf8GCYBp9jGx9ZqBb+vTXHlwA1hWM=;
	h=To:Subject:From:Date:From;
	b=C9Gg8E1oxbuFDy1Yjyxx3kBRgRNNZvptVYLzsioUUYWbUyB3zD6xyieH60suNSj4k
	 9oeddFj451Ct6MxYF7wFjPEpHPXXRvV25nuREeYDAECsGE/lrF5YrnbZEMxcOxKaTV
	 CQHy6Q+2WhMBIzUS+AUOpKL5Ag86a2WIxqgFGrXpwVHKUn6akeJsi/7yDbu3axUV67
	 Iff9ABnt4MLa5Jp9VOQxVYb1tqJMbOyY9fPuzClacWR/JvxPQIk9CRke/vMCcfzb9c
	 ALTnThBHaqfKyt3EaiukJk6JIPcEFMg4zwCrMwJTv0jsfaXmyT5o0Mi5vMEGOj7TFg
	 jN2ggpFtcRqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9759EE8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672843358.31809.1570229664091073624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791296e4f94f9784d7b80ce6226c5559009b05c7db1427b8fb5496caaa6452c7
Date: Fri, 26 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766728433
