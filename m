Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693E2CCAA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077954; cv=none; b=qJYH/UGEvPU0BskprfZDnsshb9LfW6Cne5UE5bEKYtbMKKctv9Sz7hkIbiVl9pJLVETF5E2Wf9idqeQ/wSQYkheaK8vB2W2tY61Nh9OH32Q7NtpxU3c9pyUQjgwCfRF0R4nXxqyjc1F489IHQ7crcHS6uDAZPPCfIksH9A9WbSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077954; c=relaxed/simple;
	bh=GnajQPMI71Le3Yx3x1u0ejoORghIf4HiILweiwq0f1I=;
	h=To:Subject:From:Message-Id:Date; b=rbYJrxJSm4ge9PuN0Csz0qwvi8J8CtjlJ7jXnTTOjdOAUxKI4HWvY8of6OlGu3cInmmMbTwwG4yK+ksamC0cnzpJo/j3gZNir6acvWN8QEu8sQLaeLGjJGayvX7YgK94+X/xsFL1VXrbZHpsn5AdX8cxY+2yAuTdM/ecbpV9XlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU96asdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU96asdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FACC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726077953;
	bh=GnajQPMI71Le3Yx3x1u0ejoORghIf4HiILweiwq0f1I=;
	h=To:Subject:From:Date:From;
	b=sU96asdciLK5HSDv+gWn8/13nQCt6eDJmoN4q4Hi8SvGegdrDGEMkX0YiZHMx5AKa
	 TO7JaEEH0KIXOy+K33GJiWPsFNfRBLSSBDAKwsTjtyUcKJ9HsYFfF8nxVZklyMJW+m
	 B8q1XBePnDxlesy4DpMUi0bgCTjZGlYGmXQaEhdBK/WJG/MsvjRJlxsvLJ9capbD4c
	 09MoBu3b+ij04HxraWDR2+jZWzt43ZW1zeReL4EA9kzEOBzj4p7swB38KP7fNmbk7p
	 5TtEUTgA9chcqPlWxI/GZt1p2ugfV7WMitgEGswp56VB47XzseBuBZO6/ldOqKUSfD
	 HlHoqGOmMr3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9768BEE0206
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607795360.27392.12684523034646315194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c2858852a01e00090e723607c700ff885bb719c7b79a39212e9d32b63ee626
Date: Wed, 11 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726077953
