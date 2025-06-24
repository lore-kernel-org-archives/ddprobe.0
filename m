Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4D12185B1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805994; cv=none; b=ZcrAvrAGWxtIsN0FxuS7lXxhNsGRs4yha10ql2RwhvxD4bUXPE5PKVqA/K/G4cJKy8xBhsJhttZQ/sxUtys9sVoABO8fXUbpBXvKA4pcCWpu4OUWWABC5tWLcJ221kEw/6vhUYxrdWncM6J9PwqrjS6gMITh3gV4NcLyo4//EBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805994; c=relaxed/simple;
	bh=PnWGbAni9a3xBaMzKyTZoteUHHmuk+B4rEQUk0+Yk6Y=;
	h=To:Subject:From:Message-Id:Date; b=K+kMQHjVf5J+az58Nr1cfqVhivwgTjrxB+BAm98SdMtlsK8Lr8Snu1VCbinWUVMjXIIG0XQz2APgNRsqxhNhX9GFmLD47SqU4iBMsTLj7zoFbFd7xrM2rdVwcd8kZ6xHSGVQL+MCKJFzSDGziUDEvTzHfGyv0Mz1kjkkB8C9peo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnmwAcgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnmwAcgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750805993;
	bh=PnWGbAni9a3xBaMzKyTZoteUHHmuk+B4rEQUk0+Yk6Y=;
	h=To:Subject:From:Date:From;
	b=gnmwAcgvPzSCMYpBwPeZtlz8hKvB96qEXKTdfWRR5DUHvgcPMmPlo0282rjxBNYw/
	 PScRggOUwKtqfXfq9y9frzn1A3lZZylDdn+rdOgGIIazGXK8A04ZFDNt7PApDeJirF
	 ugFPmWVTNkwIvwThFjQ1seI2JbsI0v0Qy7ydN1B3HpA0UCjaWCW4+egyx1jUsz/iRP
	 OlAGpvz1LvKPT2vyGzfCfSM7uuh4Fv5ZB1ZxSnUaWTBuMXRDU3oBUzOqblwAOsdDps
	 4krdO/T4JgwcIehpPo2mVjrP2dEdgPNZvSTS4t7/uswwZpp9s0jykYLj5jpQN5TbZg
	 gv2cAjW45Z3Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EFC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080599358.18668.16548049701154471257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f707033451bb3ca2f8260edf2a7e3fdf01b75ba67be50c44a43642df5b0744b0
Date: Tue, 24 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750805993
