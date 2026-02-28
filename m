Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0965E39448A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772271294; cv=none; b=WUh4//BjegnGuqsjg4hZhdhM1VhfXUDQwwJkRJ/Z8Ic0vdH7f/S0EUbrwLVQ1hY+2hCjBqWMwS3wikyosi1rTOrMHlVTXcG+TR6M5mwRxpzqdvcHQNocTPY3VxpERGiBBdEFLg5UNO+4dDEeqS+yTlrpsZWAy0xINwIIWzU1Pc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772271294; c=relaxed/simple;
	bh=OB1ml/HArHuPiUfoVJUtyFrrk2i1CVRw367F75d2jwo=;
	h=To:Subject:From:Message-Id:Date; b=aRRmA1XJYNsFA9iI74TE0F1Qpv3EhcdBsy3LC3Gjr+GZ3ikSio2D24ZAXGWRmZV2SBLFYk2Hxs9O53HeKh9CS05gKyWEPXEgI4ivxmFCKzSCJ47+JhHfpH7IJe4JQA1lZQG13o2dYOZmKPvtpfDYBs+8wArF+pjSLcGqXnZFqZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwUoSUHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwUoSUHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA4C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772271293;
	bh=OB1ml/HArHuPiUfoVJUtyFrrk2i1CVRw367F75d2jwo=;
	h=To:Subject:From:Date:From;
	b=EwUoSUHEvMqWhUagwMXsxhYFoDvKWikj6Lii/7C+Z/i3bQkTf/Uf6p2dttPXHW2Jp
	 fCsd1FonAZkn1hrPjWwnASQiPBnKHV2l46ShhC2EgUNwVP9UMUHFF2NuCVN4IDUarP
	 NkZTz4UQkvtqz8mTKxJr8GkdD2nt+Gw4MB6gWF7ITnMxo87sD/JHzZROvxndrBaU/j
	 ypOwHVKZoIbyU1fcc7wcfg8wW0tgT8qmPGo+D7OFP0d5DsXwpGzB6NImZ72s87vkTC
	 qZp5iZr3YwEkP3oHAcV3gjY7K7/BsYiq+dDLCkxVIPR8YOEB6JXyEzLUGKTtEmABwG
	 mcw6iLqhOe+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D58FEE4E5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227129358.12747.12981010253567219479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ec0eb21dcc084b67cd666ed032a1cd2de18831b0453c19cbb91532c3771a7b
Date: Sat, 28 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772271293
