Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D772EB87E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769784234; cv=none; b=D5r3M/gU5J9pdwxI7ng1ORB+m4V8W/HOB/5VZZBA5kz4CrzzCYpJ5FxXohcUd37O9NEN7QNuFLtqjOIfrpEwKduUXZ4JIv67Q+w7sEBwIN62Csyd7qLnpaMpXebfF7id5UlyGLUdsZpTj3jBbFcDAcPiEqGAF5bmLf8h+rBpApQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769784234; c=relaxed/simple;
	bh=qItyb50I/2HZCLHa69eUImnCoOzUCLeDDbgAo71ivc8=;
	h=To:Subject:From:Message-Id:Date; b=XRVzy4LXZZ1EcbeZXtuxBLkMQcH1pnb2EWLoS8YF9oXs+zLrVluR7wbldWTejcpyHeyMObcTqjf5U1lgWx6nI6jGp+fYYOBF6o6m00EGbEoRN7Mll7RDQDcPuo47IT53AWm+uqKMDe/zQH1YwGzBKSoqzyGgIk/ZWcDMoZj1S5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpPpXFXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpPpXFXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBB6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769784233;
	bh=qItyb50I/2HZCLHa69eUImnCoOzUCLeDDbgAo71ivc8=;
	h=To:Subject:From:Date:From;
	b=PpPpXFXU2k2+75sLyEgZEUUYvaYFRm9FTuvlMyh7xknOUZyR+0a8QSyBYv+LGTqNx
	 GBAQv0GXGaT+N7Lw5dieSB/Yggoz1rma/3CsGvYwohrQqSLjd1tdQuFd39r56AoDVP
	 6pt2zOsvyBV9Bkfwx+kBpBF0tmvAE2WfPN8Q6dx+DXMltCJ1wIBYZVcA485QTepPa6
	 ssbc+RTQ3djwRi7Jz6flv3wyt7+MtqOiENq6joeQF15jo7avZmwrqG+20MPd2kaIZa
	 Vam4UsrJDYI34ki7kMRMRCpn1ZUcOif0erasA4p1zlhAKMcE9mtRgB2gB10rV9NSX4
	 +gMSeGH9EYYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CBE6BF17
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978423357.12620.9498817663570372946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc6e3b5af4f432f4c885db4a42d451c29fc64c5c644dbb0b76e32a50403b851
Date: Fri, 30 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769784233
