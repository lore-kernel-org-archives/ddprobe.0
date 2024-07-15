Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5478E18EFC8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721055263; cv=none; b=YpcA7XfItsJWoDFUfnrKoHN4ds6VAed4FeEvzpFagzFXkYcsNUgjAjDI3NvyMg5YISPcF+dtCKJXyX2KSgtL7QqaJ99u+wVlnVrPpuJoYZ4bS6+Iz9q05NbjTMAvaPV5R5m4SIBMb/ApFm6RT6gO9OaT5VNylTzAJtYyLTPvpJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721055263; c=relaxed/simple;
	bh=ViXuEiLaMLKLR0z7s8XFXhfyXXK0K6hdZN8ZxBaSb30=;
	h=To:Subject:From:Message-Id:Date; b=DTF+jbZfrMU7M6ucGf5/4IXnRI+7/MnZZ4TyX+5vptj5QXhrUi17cL/fDimT1WNctJhVQ/di5ZknRN0hzRc45KSlgwY2XuT7+DUwTulW4l2UkdYoEBAV5WOSo2gT+0NfzUhtOPLXBfK0PWYEI4fjtRr2cAkNJAK8RpjCS7x1Djs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExX6OV7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExX6OV7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E7C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721055262;
	bh=ViXuEiLaMLKLR0z7s8XFXhfyXXK0K6hdZN8ZxBaSb30=;
	h=To:Subject:From:Date:From;
	b=ExX6OV7IZ+2Y08sNQsNeltTsp3sOrHqpCLO6FjqTUWG9c+VDhEUscaWfSJldbnAqV
	 n07efOmW0UI+G6t7ec3q9CmRHTMcBpeJxIPb7/bzcLPEFiETd0ij+VXhtFXHuZGYsq
	 O+5YfArOvsyl6Bu0uhX/jIofqhmr89Qszt1sRx5LSfIrcovrFOSYQH+Gq7mShxFDWV
	 Bj1lJ3xuhRLgnRcf69M8BDrtIdZRQDXdSsImxEigU6eU+cVR9XgNPnw92+VCqeJHFP
	 /brKPNIRgXGKFPXyEOLu3XeNqgVaMuSYWZAVyQOIL+/JNBfbfR5kARfHB0pTiU+Ftf
	 CRlC1CUpeppPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77FAC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105526277.6009.3350374235955342120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f12387340463cb46c60efe3fe47699d3652540d5ead58c1e482ee23e5fcfa9
Date: Mon, 15 Jul 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721055262
