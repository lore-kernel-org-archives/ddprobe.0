Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015DB217F27
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768307034; cv=none; b=jfI1PNiON62RnYku0gc56S+IuGFd6ONsPq4xh4TklZRJYaulQeK1xBlKB0EL8929sKdZLcYqLUw/HWdTzcwbFPJlxzhg/Ffa+/RxCCzQMc2xWJ/1GxNAhdnHzKGOqRgrSZrVsybs/HGD6nm/jo31q84jpZUhgipckHi6VrF99ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768307034; c=relaxed/simple;
	bh=DTaAdVIBFjTR50GjPD2GMC+UxeBKrw2VGV3T2IIPIzU=;
	h=To:Subject:From:Message-Id:Date; b=Ee+/adK6VCdv8hE8HYEgQ+KoiqKpExITE3hCPbeFtp0FDM4E55gZ5WvJv8qgGWIQvTWzV8XXM53oX02b9XYazYhHcy6TZaumrBxWTw1gfKZed4kChqJbpigAiI2iwecAYZPJ5WRXCwo5kxCeR6yb2g2ZAgpAGA2wOFtamBca+AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwo1dfNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwo1dfNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F41C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768307033;
	bh=DTaAdVIBFjTR50GjPD2GMC+UxeBKrw2VGV3T2IIPIzU=;
	h=To:Subject:From:Date:From;
	b=jwo1dfNVg6M7lCRTbc9IOjv2LXzzLuHaOTj8rWwyIP+WqKaYb/S1skOZ9qRRzxGtT
	 K+7LU4yEu/OljsJ/9sdHSAD3fE7T/lobTfpPMgAx4gt1JBiXyYjh7kGyH2ftSFbkmd
	 peSQOriJkaM3YKVPgURRMDGw9xWKqc4tuV2J7WyyKViWlEhdhdEqP7Gz8dBcy9422v
	 xsJJTEnjUBY+fyho0/0qYWhE21Js1T+QSTZLTE+nqT8LtzDrcp1irPsa2proZkMhk6
	 5D/TzeEZp6TbnlHNZ/iZrZUHE+RcyPJQRCfIPeudaA2EUIICYCkgsKyjhfKRqc/Tb1
	 reTZrTm5S8ySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDAD2D0E6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830703358.24361.780997236636128718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707c67254c3a2118035eaaead6d297b8b3d496ae29b85e57cee9092bff44f1f9
Date: Tue, 13 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768307033
