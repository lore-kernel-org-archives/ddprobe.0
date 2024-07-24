Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EFD13B58C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721864154; cv=none; b=GXAltnIhWfakXZskhdJT2WbYyYea1FkBivP1y2NjOagXhjqwL6ps4QkdjvR9RsGXVZgcSCAhSPlIm9LCBO2gx9pWCqBGqjRFTolmHIsuq2coCpdEF/wFLw+gbs7Y+g0AgooSqABVKKZaDRou1efa9ugS0r0jTIADR1T9bTuDMjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721864154; c=relaxed/simple;
	bh=gawC1IKtUfBcrDh/L4MSrdZM4yUIDGjzaRFb7sWbWgs=;
	h=To:Subject:From:Message-Id:Date; b=CMYk6hNcOukNO/65tCOSeZ8JLes/tc8q6ApS5fVNQ0YEhsYYUt2WpNIyEj5NcnXQCjWHIMskHR8motJS/hPXDEVJmD4J+luMjE4SOBmoXWeqLq+LaXgOGyHafJO6zbEyQn8TcXm6b7kSq966TEP2dR0diZKiBnNn+MFujl1YBlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADMONKmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADMONKmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BADC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721864153;
	bh=gawC1IKtUfBcrDh/L4MSrdZM4yUIDGjzaRFb7sWbWgs=;
	h=To:Subject:From:Date:From;
	b=ADMONKmYZR44nObbLn2E1G1gtnR+/aCIVYBpJ6DNr4MYmuFJFrdX6YMt0At5TDv3J
	 mZ/pV0KCRAV0FhRljc51L6pokFAQqpXWZZOC3GYfUDssaHy8zLojqhDJSSzgjQ3Wcq
	 xwp77MVEdILOmrdr2oy8T3sCkSxldx01TehqUUlnFiJbSX7dgCulZ9RcQv8RmV3LX+
	 ozHDErVo0E66Fv86Orxe/rixvOagEa043thUynllK+mV6Hrv/PUlsOMVypQTVld4uI
	 AyqciJaQlfHiejPx2YSbiXLvD5InvhDjdsZLRe++l4bxgXiBGpkNqG/PEvUo8Zg52y
	 sIXq973n9OQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA7AC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186415363.706.3144476248487486134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6108b4b209c3e6ab69122a91cb4754b54b4215e3c07185608a8760e5ded0a2
Date: Wed, 24 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721864153
