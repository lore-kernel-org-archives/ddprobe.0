Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F4112E1F9
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215297; cv=none; b=u3VN6iAYYHUyzhfp6PcrLmTTTzZ/AhMJCx4P8UcynmjeQ2gla0GXbJzc+eVN2je91M6VksuQ6KrEjn50h0qpNbfd4+Tad5fbfwtoXKqYptLSswj4fV2zzQ4jmLYoMwbDKb5ZA/5L/62MyOT5m9Yt+c0n3vf7fcTDQmxO6/jQ3Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215297; c=relaxed/simple;
	bh=gCOQNgbDHMUL+PHIRJdm7QY4+9YPv8CQ4ANQfAzECVY=;
	h=To:Subject:From:Message-Id:Date; b=DV6884CbxoyI598mw12G+ggi6iHDcvdl/2+JA+P80b/kYmwhh5f3OPiKfm61dcT74aRN92qRnKCCjReam8l4p/xXXhfDSal6RejCeh3GtNJsSzHRYXUKVGvZzmkn5dTPARHoKsXeLn9A3hkQkhVMSq1/ZGVg5ffj1TfLW5+z3hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0+UnWPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0+UnWPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E00BC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707215296;
	bh=gCOQNgbDHMUL+PHIRJdm7QY4+9YPv8CQ4ANQfAzECVY=;
	h=To:Subject:From:Date:From;
	b=P0+UnWPCF5r3xrEcm+YrfaKK58AjDQEmhtlJlZpVDhzCvasbyFA2PmXWGuHCYYdhn
	 F1BEnwG0VvJYDefWbO2KD1aqQnVsgB6KNdHPB8fUr0Pu0Z6Ywd3dbRO+AzmBljdMw8
	 GIpO/xNJA6++SMJI0O2U+718/tYwGKBYj/xJGa5IRT0bgRsIrqypV1QHLtMYncuXfu
	 RNmAg3DUdCYgME/5C7NAQqIlawwAI+PVYtvC9YMvReoRSb9kBnlhMeJ/r1W5htSpDb
	 uojEJ58dOzvXMROdSt/T7GVDQM9v+RNRDQiOGPLBi2Ko5WtEl1nGYgWcj3g4NdFXla
	 aB6rhneQm2DSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB8FC4829A
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721529644.14666.8354246416465504460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545d81cb66a43e7cb56c024fb054368edd7345b9fc5c896589c2290c3dec6c86
Date: Tue, 06 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707215296
