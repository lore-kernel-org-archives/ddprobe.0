Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B503A403B04
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781190994; cv=none; b=PsI8+tq9bGD1X5HghyQNyokyW6h4eljRsgGNhDbJil2iay5OCFbkz0TJlMVISNqimdW2X1OBKdrFZUlrbxlM2yTXZDTQaL5tB/0gmcQ0ReCVGbJzDFCT9ET7yX+VHmmvDisw8VusoYeSKuwEHvY/fUHz+Rqsol6UIvkc4R++xW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781190994; c=relaxed/simple;
	bh=1GoXxkg7K4P6aV0dmcKftkTSLqIrWGtpvH6hT/pvvx8=;
	h=To:Subject:From:Message-Id:Date; b=uuqQwxw5dBr3PCTQ43thwG00jW8GQPJeZFTkOfK3HBIY/6lZqzXEM27AyrHA5l8M5/pE2T8tYxU5M7N6QJGqKZsIDVBt6JhOMEag23L4Ovma676JZeAOu9C4YWTa50pz5ZzF/EP/IUhOXW4DXdsZwYOKdIdZl2fIaOj37+qcQog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO9vnjcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO9vnjcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781190993;
	bh=1GoXxkg7K4P6aV0dmcKftkTSLqIrWGtpvH6hT/pvvx8=;
	h=To:Subject:From:Date:From;
	b=jO9vnjcd9GUWPvr2MNJtExNVGQ648aAQ6o+dtS7fRGkiSI021sDQMcFq2OctTsURF
	 yGMbWHURJ2+/YtcVE5hnZfxYvzssav+N4F4rYqvdkMfrwgs4+yLKFAT8GyENv6tXsH
	 vM+FWN6ok4J1f6hNuyVH0fNBHTDQXec0YEsf8vaQPMSnaXCYYnx1ywyxojRqToXxKd
	 Peee/YlpukXg5jBd2CpehJyiQpExTwLZxrf02ypOmn+X3FS0Ynwl3ARfn9S2I79NmQ
	 +OBatVHEm6fnhYh1saimM+9yAPRVK99/OI708vyX+RVRB6idoCn9ZBOjuH34q9jAkZ
	 ux2Z1TM1bEn4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CC3CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119099371.15504.6351946443391001989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00c1ccb9ac017acb4965da081d1642cd09feb6a24374f0ef85da4107dfd2364
Date: Thu, 11 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781190993
