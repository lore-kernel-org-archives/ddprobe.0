Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360EA10F2
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746758394; cv=none; b=epf2MiYCvZMpml76mJvKbNPSuXYW/icszscSn89AMiNZT3/Yf6yxAHhQFY/o2/g7d21FOw7EXivV6VuNc4DzIEHWOR84A0JgoJ85pqhuZoz8wFj1KR5LPbRhae2o4r50V8SHaw9aUtHi3dusN4j5wrg1WAgNy6aAQBB+0FiQnmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746758394; c=relaxed/simple;
	bh=3MkZk8z7Xgn4tXhpvwKYLYxJ1hWfUL06sX/4GhLGhMo=;
	h=To:Subject:From:Message-Id:Date; b=OrVRZlKkZ2hv9mBNUZ7bJ8fCQTTiky2GZif4mhrA/iCQ72SJbwZ31eYTyBrVfKCRHGoMvwj/0uLhsaNuao4LpD4v1/EKwEKWoDG83/NTXnjmBGXbIGc6WJaW54/MKBTPnG0MoEv9o4Z4LsIjt8mbWMQjwpniVPpltXlBtc3k8SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTxklJcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTxklJcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3292C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746758393;
	bh=3MkZk8z7Xgn4tXhpvwKYLYxJ1hWfUL06sX/4GhLGhMo=;
	h=To:Subject:From:Date:From;
	b=JTxklJcXgCtq5tUkyCF1OEzniuF6XQzvVtKDIO8lTLm3iIZHj/XTdxCODR4kwZ1ue
	 phCTT1hqxyRDKfW1onxYz6SJfrVW9SHBDY+cz5tx3PzqIZH0/78Nr3gPclIm0qJZBl
	 Ab1BngGomGt19Xqg1BHYC25X9W2GSICOJFLyPxBalMNCZqIomJOIp4PKCykUSTN6gy
	 rpBQNOhqSswPWxfF70+AcOt5ZiAo8cZAgP6wkB8W5TQ17wwqruK9e6jFCNBVkItpez
	 TMXlcCFfW5u69GXHcpvpUWk9kvUvESV6HmBmn2OyvudXGCj4jYtZWInkPajXyVZfoN
	 yl5z1ep9O4Ljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF0C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675839359.1948.7973621929880188251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c7f98d9eda4be88ab08c1e8bed1b1ba5f3ef47fc8d85c87fa6e8e141d9d618
Date: Fri, 09 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746758393
