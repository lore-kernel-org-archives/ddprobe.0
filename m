Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEC01E833C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743158994; cv=none; b=aFGQYAxRpksjDpyk1hlCztkbvYnaTF03gr4/0KlVuJN+iqwNtqvwveHqoTxwRRHte3NXNxhLRa45/sZ+XMZa3AbGY9oEWWBJwLqtIaKkUdjkboOND4cWMLDA+Dnb9yn/JVqlqYBSae1JcFCaENjy20AG9WxsEXfcrhEvCd3Rb4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743158994; c=relaxed/simple;
	bh=4kxjSnvSaQDag8I2lv4rNgx1g+d6414ctSz+CTx1qeg=;
	h=To:Subject:From:Message-Id:Date; b=bOQeow7Lsiv5UpxGteJNCjQ5qHzIQvdKs9bgWsTa+gsXof6+0otisGfTxdkUKUbbx7UDXstEOa500YIgUJKFmcqblWWhaUemhjd+RpmWJMMC8VuGa6x5G5bmPK/pJMQ1H+p0D2nwZrjqK4NLUGk/hSVKV7ozUPjy/GMbAo0GomE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx/YvRnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx/YvRnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56B4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743158993;
	bh=4kxjSnvSaQDag8I2lv4rNgx1g+d6414ctSz+CTx1qeg=;
	h=To:Subject:From:Date:From;
	b=jx/YvRndGGdla58g8iw0pEDGoAE1+d431ItQSJfQaiA71psOvjlpCq0/ImN1w2kCO
	 6fABkSAnRMDbYXTI9KfS7+0jw63XlMG9q0cA2eBGR5v7Xjh/Lbz9nr70xuFC8thr9D
	 NqLkrmCEfbJFS8m7lewTqdQvgSKcDpqggQfRxLlYzNR2rzhv3Bum4RDlRtFehZjQgj
	 3M2wyIq8Weo93FMCNm1KLgv+dzQTrhFIiTmxGmS8B4AUdYlxzPAdxWMD6qprTrwkk0
	 V0rgR6o9PF6pt5z3ILWlWajUYYD8SskU43q7B6E+R1JkaGltYIXBi1sjbr2duKsc9r
	 R+1tkg7LMTDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A724FC36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315899367.12334.11905616677606181120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbc129994584d66285a6591599ce7320e856c40fe792ae1232629cf564be47d
Date: Fri, 28 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743158993
