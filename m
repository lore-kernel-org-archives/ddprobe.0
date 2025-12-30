Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06027EC7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767086034; cv=none; b=AXXH8ClEEM0+3HZgERSUzLAkKlj34lXTBgwOJ7tdDXFtMI2oBKPJ8S/eQx38gYGng34UEp/xjuvGlStaXSNGFU30KPcot0iH3XqDGneEXekospZlQgHymNz7PWYsfIcRRS/iMTrXGN9HJPFO5dIxAJ77FgYz6MLJ87kOc9Ko00s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767086034; c=relaxed/simple;
	bh=KOPy9vUXbWZIHzRtAu8IrCrewymht/qKZIGWD4VUQpg=;
	h=To:Subject:From:Message-Id:Date; b=KuTZRvAljxpdVuYghYW4q1INh6qqsZPzsnP10Gu/ptnPoO16kWcTFDZgJVeeB7Zk7at/mPTLNhVMMmuvWyhSFC5DcCv8/Rw2QpZhotvl9LF4zIQfy/pk6w2DAGhGLV5jCcUmoAyYNeZQuZ7EtOvM/Zk37FUZCDRDHO5C71G6fFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YE6IJTvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YE6IJTvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1218C19421
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767086033;
	bh=KOPy9vUXbWZIHzRtAu8IrCrewymht/qKZIGWD4VUQpg=;
	h=To:Subject:From:Date:From;
	b=YE6IJTvIz8jowY1dyp0mv0rXVFcF21KvPkkqzMtf6DbjZUbge0lATSr/m97RLOkZo
	 JrSIa041J68hC3TTtIBMjfZlm4KEVRuE5SXeqFH2l1jPmu8obeLfdwPaZF6DWISfOu
	 W8LNz0f4WpyG6XfPAYlryTMAdigaFwgEDhabl/G57O7F77ro6U9OHRJiuw8ZL8dKRA
	 XANiGwYt/Wug2z7KDokEAH7hjJUGTJCEVRqCC/S3PRpv+CQCCEUJf7PrEtkGI7qcSs
	 sa0kqKoy2h/4ipVLYGOHzzKpcdoxb2SYnLXTeBr73Suv1uBGd4xO1aep9MKCyq5hNn
	 hvkj0R+EfDb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063FE94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708603358.1591.9457597311333329993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e238f46abf5c4b6e9d9fe8de9b5e15734efd16d0c7c11b67b749aa38f1ade6
Date: Tue, 30 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767086033
