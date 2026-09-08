Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5211FE47B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788825634; cv=none; b=tJ7C2VIe7t/X8krxq5vpkpSbNZkHV8U1s3ihMQ9ILSZIhwlg7tygn74l9nj5EFxeAXPONZ8v5uG3LbnvQSsrLe2ob4ut1iUSMiwpxFiouDcz/pZYGNUSEmE8CXufOrP/6N+mSp8OXu8E4whTfJMIbJOk8vIhtLRZvCIoySxWPKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788825634; c=relaxed/simple;
	bh=UvnaTyP6h95XWLbOXyx8fqJoyf/CgjryhrrdTuwxhI0=;
	h=To:Subject:From:Message-Id:Date; b=HNzfdoo74vLaXjRpQEF2KIx7YscVnnZcAdB55hVjsgPKuwETB7awqKBGZtWlAyu7nAkdJo49u6vL8kaf6yvC2g53A1p0Z79mfbuxmU6Q2tvbvIS+CRZ6kcmAfvK0KqUiSHs7frX8HELJuDSldcrYXckPnX8/2yxQSfK1m7YxAx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChXMqEX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChXMqEX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F36C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788825634;
	bh=UvnaTyP6h95XWLbOXyx8fqJoyf/CgjryhrrdTuwxhI0=;
	h=To:Subject:From:Date:From;
	b=ChXMqEX7ioO+XGcle0N2ArqbF2F5/ZJ7LOJXGVuhMly5MRI0jDmBV88QxsJDVY3mG
	 wXPK9F4ZY3M1HQ/b+F+VpXZLizJwduvqvzAIb1/HqX8sqVoTt1zoklE8ValhEe3Dwc
	 yEXPiKz4MQtXW5JvDlKfMoalOVnGYUc7UR9Nck9kqvyfUHwAJ3mj4nxQfIIbdwBRCf
	 HxymScxSq6d27IfHRj87hP4G4aOAWNk5QfY46pGFMalEG0BxBU1I6vZiHQiI1oCHJX
	 P8dsRZIuxJjuA3T4if3yB+Y/wTG4dscJnPeqYXgnMnA6OKg3sry1A9JBCTUsFyfkOE
	 lXofkl85IgIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C050DC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882563374.14115.7408907602716709464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98b7e1ceb9fc609dd89a9a33c584599a7c023030265f94f55b2d33ab1a319f4
Date: Tue, 08 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788825633
