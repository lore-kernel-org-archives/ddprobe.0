Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0489E1CF80
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709794097; cv=none; b=LslrzIN+X+VNDuvb0L9jCXhYaZLOmkal2AB3lBXBUdqIGv+hc4iSR8MDhEcnUnByt7BZXDL/BEUVnVSYDGmeYOZs7tk7xESLBQOhsb4Oosh4IdelPOUOTTbnNIu321NOPw3onvvZaAnnWVZbY++wUSBA5GgUDuCVHgk+YYBas7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709794097; c=relaxed/simple;
	bh=sIRYABFQ+7KfkaSxh5kjZ5ZQ0iYKaCRYv/4MjmmHlwQ=;
	h=To:Subject:From:Message-Id:Date; b=lbc1hvqWjpuHsHQNYc42fNSgqRQBrJQcoew+1wMXJSceIM5fUlE30jyzry7iOjkddkBuNqRc0PL2K6xMmFlTCpdrwS3xfUOCC2pEDHKB7UOc3dKvxf5AXwo0XTCuDfb+QQSi982AcxYbIIRa1+8qWc6h81k4k4wxIfggTlCpDoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh1rPnLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh1rPnLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAD1C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709794096;
	bh=sIRYABFQ+7KfkaSxh5kjZ5ZQ0iYKaCRYv/4MjmmHlwQ=;
	h=To:Subject:From:Date:From;
	b=fh1rPnLyrb8cSv37XXHQlR07X5sgH0Baxxuf3t6B9OkF2K4BK2Ad7BurG0A3pzhCr
	 c+98qGK53JVus6Apd3og9PkU0Z2+Lak/dzOTP+bsZfBbB5pU0CGz/1EkDTKSp1D6T0
	 +ZPOH/VZP/BLC48WcLgYbUMNQZXz2RoC+0D9H0/NXvH9iMXnAQA0OnfzFdeJwKm+4L
	 UgtM5L1g/NFWaRbuoBlOkB5n5viwyRaaxuDo8S68SrCIlD8amSzDu/+5T+UvYMwdQ9
	 KI6bcc5f6CZOtyeDANgegqMTyxRH9H7m/x92db6A2nmaqmRFStwEEui0IrFaqIiPPP
	 d0SiiwUbAvX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62951C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170979409638.17425.15928262344053453173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c6ebdc817e11787fcfdef99d392ea8359d3467eda59f3382f76a63b8ac868d
Date: Thu, 07 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709794096
