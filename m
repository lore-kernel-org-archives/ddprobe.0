Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247F3BB4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765567974; cv=none; b=GneH7PQDHy2AW7Uki3uAuRx9IHnqaObJ1NnhSNJYV71Aq4wp5gohb5Gv+GCL4KUGWxr7lCib0Qx+ogmWeLK/hYhbCNIO52l84BsOI3bNrJIHOyZVgOIQcnn8hgwpt+jHyCLELDzQ9S8XIgtInpL22T2OaKT1SWOfTYRB/lKu65g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765567974; c=relaxed/simple;
	bh=DC2H87wi+iAxhXd/M2wlGxtGXc8dn2YIqCu2rMqTR90=;
	h=To:Subject:From:Message-Id:Date; b=Ucdxx2AdhKdTWVFe/QLMOxHNK1LTqTO2vQdqQ9DTZoXNWEEgQtE525T+GC6JnoUOoGMlGBduNM8WmTDC3xsW5tC3q8fAZ+IaavwWFgjTSn+2Bkfe3nl779sX46geSKzGpHXsjfQCiC54JQYDb7+QzqE/UpWQTWm7L7c9TrAItBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJo5urvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJo5urvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765567973;
	bh=DC2H87wi+iAxhXd/M2wlGxtGXc8dn2YIqCu2rMqTR90=;
	h=To:Subject:From:Date:From;
	b=qJo5urvXNXnfdC/gLg9EMCaUYvuqF7JB5hxd+CtMysnmKZVpD7LKedPV7yQoBm8IT
	 HyTQSRbAo9CIxhdNIoIb4zJkXq7swUc8gQtjldcQc4WeQef7FbVWYC0mEoT7zTkHSp
	 pfYNGf/Z8CsKHB09X3B3AXRGr+PXbZUNWqxqhoCK82nYb9EouIQ+fhQAT1S0SSoqM9
	 op8w8FUQG2DQI6fg5YQWuTl8JaaMUv4ZVSS8paMIXQCg8WHdW8teq06Uo06+kmCsP+
	 hjIULw5mNKOMHQdxsC8spSQnDK+fRTq7mGLeMAg0TADGoIg6xfRCEngTkDH5IBB+/3
	 UjBp5oeFhxWaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F7BD59D8F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556797360.18720.17869508756468579151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84737710e5ae5004f0a0887d6f406001c7b62b8da541c703d276adb20cd1123
Date: Fri, 12 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765567973
