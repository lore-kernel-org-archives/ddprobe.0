Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B50229C327
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774239894; cv=none; b=qyPxTGUiSf8otJnr9ADjxFdg85RFpySusvpuHUn3Cg24+j66BHdWkKNGUW9Z6LtpSOOP8zXhaj+i89ynbj5Fg5Plum30Pj8MFQ3WzzrGVd4P/k7WpBF/2rPxW14E9BWZZMGxoji0deAqJLJYiNpxFCSyr+JdoscEIRhsRzwom5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774239894; c=relaxed/simple;
	bh=vCtzC66LhETHEDFbggcJ9auLl+2PtVEXut+J/K4rcWI=;
	h=To:Subject:From:Message-Id:Date; b=ESGVW0eyUcHFw2tcRRQF6E+DQe0lrCHTy1ujooP3He+Ts73sjCecg3I/zpEpp3MdYxjnK6MseRPCRkHSTkFZK5hILTN4sOfamjdXLy/kdyC3utGy33MZoJE3NAmAHGEaO1Wei19Fb5XuqSqgaPdmwPn8EXV622hbHoiau/etEwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNPph5ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNPph5ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BF5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774239893;
	bh=vCtzC66LhETHEDFbggcJ9auLl+2PtVEXut+J/K4rcWI=;
	h=To:Subject:From:Date:From;
	b=iNPph5ezpXZ3HtBZEIu8dMUpIZ1wenD5NYHBHW68Wa50SCTPd03+snntkHJgledUy
	 j14PZCKl7D2+yCQbrXKHp/CUAWpmNfkldMXKTfd3V6FT91FN9SNKlP5ioAfKl678Yk
	 +QSm8SSzLmJ5jVOV+Gp/0wqqH0LSmTF8a06opvEg8GA904Jv15roiTslWf8F25vL4g
	 FpYki2v3ORPfaWeyItsNihHTym6WPGMiPi4OQfAb5SQp/NKDn3hQeT1Svxr/wyfFi1
	 GECqT7XxZ7+XZiIbuNdHztdhAuaP2R1as8IVMRaSSGF5KlwcfHKievFT9q9MJkye3r
	 L37+R6Z7PeE1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E33D58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423989363.14786.16037993709428891082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f6b8d0190a5f135365f795ac907fc7baaf6c70d5bafc32b1f6123578e78eb7
Date: Mon, 23 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774239893
