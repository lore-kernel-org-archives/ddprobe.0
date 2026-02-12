Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD1311713
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860694; cv=none; b=bO6Zao343052MMUamtUMVVpxOhiC2ZlpkDMrkE0KjvVq3yMJjw5P1uctrMOYL/r4OjPwGNCVt8GV43bH1Z/3qaigFv5z96DVbpi9peEu64rJyTbyfVbgqJEncTaB/XQANW2VjIotYotmrnq5zkhA4WTAi6Gyu6CoowOMp1J71XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860694; c=relaxed/simple;
	bh=70V3FwyHNyPydBkCQR9lFImwS+1QDVBsU8E0yxeTwng=;
	h=To:Subject:From:Message-Id:Date; b=lyH3pzugO+hIlHQupleKlZSTXikJT5o9Cc6TFl/waT39ltpdv5P5lGb504j5dEbGPsa97SB3mIv0OLT19dL525R7sdFPSDcA/4uOBl0F3Sj//YWq61WMf97Kcl7iJnNrJl20tNeqscX2VDu8MeI/K17nxthPQ6W7abbiK95afsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuPCgknQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuPCgknQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC18CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860693;
	bh=70V3FwyHNyPydBkCQR9lFImwS+1QDVBsU8E0yxeTwng=;
	h=To:Subject:From:Date:From;
	b=JuPCgknQprcFbsMR0P8JafiUlssha+OvPfrP0oJlXeu3jMVFY9csEyp/u2wZcDAPu
	 C087JiSuROyMLy5m5H1qTdhY4b2MKxgp5YW/3+92YITxW5yhscoN6tQd3vcn0KylfJ
	 IhOhSfPqS92n/ts69IIayT/TgG92Ox2rZWu6e2aah5xkb9hyVBP49tSOKPWWJYAnIr
	 2HVIdOMkG6a8D7SLkcMLlb7ozUFIl6vd/Kmtp+OW2xehadcpl54G7zQsot+xCw5Jox
	 iI3KFU3uWSoPpA3ADySwh1sx4ApZgh+VLe1SF23egC8sBUD9tUyjOwWuLHZHrUvK9n
	 xhyFsoSw9CfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C94CE9E31B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086069360.29389.16059282728455592914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79202c940edb3437b16c357cdeb0baa5aa3ced5ed4194b6ec77b23970cb7500
Date: Thu, 12 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770860693
