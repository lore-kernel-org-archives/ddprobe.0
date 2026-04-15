Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0A2367F54
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776278854; cv=none; b=QOdsGLKBo/dDNvQtQUm4Ki1jFwary4cNeS4VJTa28TwaOz0raOYnLdMpj1BPOV7Khqckw7+DuO77TUwHZ1ppY1VqSEl/1lMRX2bjdxjuByZJYnbsnmzf0n/w6DxX6b2w2eqZmSYU60iy+GaggfM9A5kb9P5n2zd49Zm4J39QpUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776278854; c=relaxed/simple;
	bh=Emg3puTHM3dCkjaoT4eXZzq/akE1PoMNhAY4YSpXHUY=;
	h=To:Subject:From:Message-Id:Date; b=sr0AV8L+nR/wRDrUs6IHjH/490T6J5TlT1GY6IFjgR3k3agdaMtXqU53OCe2f8YhQHt5BK67oyK4nnlXikq4KN3wLOaiMucPzevhmye3dUWkddkQYYY00XSDaAKgT/QQlrvPGrbrejTDn3V8rD6ifjU+4Sjp81KL/m0M5AX9Fc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGWoItNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGWoItNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFFAC2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776278853;
	bh=Emg3puTHM3dCkjaoT4eXZzq/akE1PoMNhAY4YSpXHUY=;
	h=To:Subject:From:Date:From;
	b=XGWoItNh7u2X7pw2gXkmCo0jNif914to9ijgEutC2HpdKARcyjP81UWp95tp8c7Xr
	 Mzm8VxJhrxwhsP4SXJrU9Y0zFp6n05LSLpQPjHJYzrTt02WDhPokbI5OLqZpnt9sU5
	 pHicEU5c7CT1XQzGNKE5INXbDV8HHr0fu/gfnfW2OR9sqF+CRN94TiRVYwcdqlBg2l
	 Trv+HVoZS4NbwqRdKdFMqsqFr6NqUj5nWPZmfK+V3t9FL4g0gtRu/GaoYGHJ58qQhW
	 eKQuNg2gQLTR7ROEQyjO+/C1emurvatOXrXapy8JXRYwECDFxWRZ0ZJRIs/DmLwEU3
	 TxASA7VtGI8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9903F4213B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627885368.26626.14948867078458947031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3317d47a9ea28469e7e4f0d8092af4130e1b2a3429e635f63052ca02a867ed9
Date: Wed, 15 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776278853
