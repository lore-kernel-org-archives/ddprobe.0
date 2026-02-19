Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173052D97BE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771497894; cv=none; b=EtV3nkGal/SmqWq93c79No3xsZeh6IFIH3rIFxzKE/WsOZ5nvZ5Rj7KZHtmnh3MsM/gqaBna9hFS9QEbTlJvQO74K38PiVGfUMjUaybXvXIBdsTpDXBdNSTcI9HzS1By04FMwQAxoWXniwgO5Lf9y1D7DR+7Dr8EV1bcP+Yfqu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771497894; c=relaxed/simple;
	bh=xDBz0zYMu3zoGBy75RfGSuS5n4rHvb4WOP+wa0PJ9t4=;
	h=To:Subject:From:Message-Id:Date; b=d7MO0qm6fIpOmw4DJVHWwGxWfM0rrTK0lVOglmGeqiHFH8skCT/ZKwOaZb8calD1m02KvyZRP3ypTOd1I3RRa4nwosIj3N+vYlIHhHJoKRfPFNeLYbs3UGfMoUox4HxtwGqgm+9cazSfUdKjywF1jC2fX6UX6HLmLDliVGqicBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDcvNJSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDcvNJSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA084C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771497893;
	bh=xDBz0zYMu3zoGBy75RfGSuS5n4rHvb4WOP+wa0PJ9t4=;
	h=To:Subject:From:Date:From;
	b=KDcvNJScd0trPa0vQuNFfd/UavcgqZ6Euxxh5ZPxv9b2okdr+1MNDB0YsvUkFv5og
	 Wbc4utMABlFuvpAiXqs3LjUTE/D4hOk2SQPmRztBdNssYZXmU0Y8cXk8m9b3lwunW/
	 9Fuqk5jOMiqvPxLaCho+k8sYarDRvKmdcHK/lfGsfYSSk+QLbVu3treRJhselujksV
	 AreSydV/J1TTOf3gzZ3RWmEUgMVBfenNIiLNnHiLI1SGkV/gDO4JyMehdU8QTIXv/g
	 Xk4VNZpJTH6wbAfjQkjUJrEhdxms5aLTTZVrzaJUXWPqCtx1jUnRZCMtcpZQ13SWFP
	 aXVDbPlr6wMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94012E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149789359.10463.9594618536075846295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7835691a7f427b9f5d453d9c2f92aaa5bf4999965f723240d52d2d70dd8d21d3
Date: Thu, 19 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771497893
