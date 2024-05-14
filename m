Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449E7193
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715668343; cv=none; b=X+G5rgOnmbiX/pRElVhfNMW1B9z/LSVuhG6fCOXFN6WpMzaYVE//WE44ZwVRpwDfCBIhpDeUyCmOq8IYtZHOtx9j1rv5VRTPNs/a7+2tGiWX5i3R9b3I/1iIBAkthyxFU3j9A8TbyTezIQQnOCwtqfdasklbFIHfbMDzsp13BCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715668343; c=relaxed/simple;
	bh=xGEX8BnFCplw3NyV5W7dbuQKExQtylYwM37GsJWKPzM=;
	h=To:Subject:From:Message-Id:Date; b=qpAVhxD29ZK/sjcqybJjPSIUGxBX4nV9akqQKiF8ixSbvAHyFD4KuC67XSBF+bWPGUigep3FLHyNYa707AFmtSBo2J0YoevBl92E9AyhEZG79GnHIvjGw2XlRBiDN84RvwtPTgouL93wVZWpUIN0xJKgKm6J8uLYSs1IXZ7r4yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp5SYSq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp5SYSq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E6FC32782
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715668342;
	bh=xGEX8BnFCplw3NyV5W7dbuQKExQtylYwM37GsJWKPzM=;
	h=To:Subject:From:Date:From;
	b=sp5SYSq7qdxJxmcmQLSqwGdpALXSky1w0drgtLSPV7HmMNRryoRCRiqIPODkvQpld
	 vRk6n0/1T1ma+IgQsalpZCn+Fm5kpxcL2g8rpholGHoOfxrFC5nTlT1lTboxllYwry
	 C/Sn0SBEjzMUpFwQAdmkmS0djUO9GwveKZEIDz35fCgvoSOxmVwplKxY8MtrY9dXDH
	 D9x+mcEHzTJ3hvw3ovYmz9tia7OJY5+BRN4HA54uP9i0AHbB6kxsG4eIxZNJwAo+ch
	 Kx36/L5OT6lRqkoGu0N3Av83Nthr5i2E82hPTIoD9ON1irNonkcxj+7D0sFiXiIX2T
	 A71pKZ8/ylzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDC8C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566834277.2597.9047749619202676550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79157e5644823cecb78a32e2ee8491641344faa795210e02b2b4a6242345d59
Date: Tue, 14 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715668342
