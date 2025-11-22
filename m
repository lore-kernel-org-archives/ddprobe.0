Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2842A1F09AC
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763801514; cv=none; b=ILsRDNo3dhghRqyoQDXYacsOv131Id6uTH1CPeI06obbHacRtQRM7ujbQ2JYHmq21wOoyrvdwD/L9vJ5y1UBulhqRdi6zB1am8ZazwHNwX8SyHzT9xxWbAqndTHQrXnhq/uASe/wvP+QnjqVQEIXO0I0s7i6226pDmsLCyIfuU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763801514; c=relaxed/simple;
	bh=7bNvXF5okJIgUGhBWPNQy1C6DSJYuaTvL7hXdDCN9S0=;
	h=To:Subject:From:Message-Id:Date; b=fosARPNqN9sHjkjRPbKc+9tT9k+U5LEzMyYAkDibv/zVg6sIpIpDA8C12pDvTLtE16eElsMjka8/eF49W+WTYnc9KlsifJUigFDx87bQOkj45N0QCKVAMpDQ8EEf6kWVR45RBZiJd/wnLa2hgm4mD+Rjd7MwiouPzs6C4QV4xWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfnmgZGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfnmgZGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7DDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763801513;
	bh=7bNvXF5okJIgUGhBWPNQy1C6DSJYuaTvL7hXdDCN9S0=;
	h=To:Subject:From:Date:From;
	b=lfnmgZGCNB1xVsclTy4HR2HANmGBzy9geclRPBSVs9FSzdx3C7bkmqQfWtqKcB8Ws
	 ba6whmAePOy0VIIjtZuwbZMqa2oQNLEC23r5Acacm1nHstbGprcADvapUf3opaW6vj
	 BhDHi7O4JY4OvILhUqJtEAzhqKSmWqAPClDLswjFEcqQr0Y3LJYrP46fdCNxyhOQDY
	 OHmsaQV2RV1q9dtqDs7CdBHsVhXEHZOy+zSsBKeHx+ZHvrNDvYhRC8IrEjPPIJF9Z9
	 23+IBRGz304GSjobFQFOFrbF4pBkjZWw96Xuy6DlBoteQQTHhN2xB6Kp5P2nUsVUhP
	 nbyU4Vfr2e3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A850CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380151362.19315.13748788839411211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99368d9bb59e8613de13ba16563052a94fa94d8f445e050a58d37d7f39918281
Date: Sat, 22 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763801513
