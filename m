Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9931E0DD9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762529994; cv=none; b=F1oyOnk77DfsmCo4w8iCQjy/asf/cUhK0B8Q9yBCZcYm2E9RSDb6Fo8xNdXuPuUUxvZI06tiHWg9dWd+mPRfzoIUsILYqeBRBSYCy/k1FUw54dwbrL2EnUEU573P8mfPmnMosDbBmzUjRFpfktBYIPoPCLZUWY+J0yQH/3pSQQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762529994; c=relaxed/simple;
	bh=AvGwhgPGaGAEleptgjK9kD3hAfnD29mkJlJQjKDCxCU=;
	h=To:Subject:From:Message-Id:Date; b=mHffiQitULWebiNzQaYLL3u/eFFUPneJZTQsOfYhBxTkKk6gA0hhR/0enBMN4K5NGHxFXU2UrR+gxFf2jY7CVrxfrjFNt6taAihwcTt7SiDIoQIYRo/fDMnelbf/VZSPAjewLsVS/06Nj0GZgdRpnmiWW4zWkGc34XC7BFErlEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8UVq3+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8UVq3+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C532C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762529993;
	bh=AvGwhgPGaGAEleptgjK9kD3hAfnD29mkJlJQjKDCxCU=;
	h=To:Subject:From:Date:From;
	b=f8UVq3+GqFi2AZEjk2G+CEIIbw2Kjrou2Rjp1qr27VSlTxGshz7LjOdx1jFfkIC7h
	 zSGGXVRfo/14YnGQaptfHoZOwANejbPmYU8RpCJtdVslDESdiuKVkBmhSe6u7utkR2
	 WLILuQDXoHm9gtNW7vyKpA1bEpOYkar1gM+BaIrjq3ax2R8DTSPY5om84N+IXfs0ko
	 1b5tXynhVPurND17O2LmEMU/iAW7HJ0RTX1aSmTAvarlSGQjl5pz9GYRAA/V6t/+Wf
	 Kfw8SLSn6rWUo8v+RXWlvJKMTaNARbSVmwGPpwoFb+ElF7riGQwjYZxM2qH4sEzoT2
	 dZn2GaQXI5CvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CBCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252999357.2997.11063890783087185663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66056a0175d9d188c74e37b152b75c7dde1f2f5cc967a9ebf4548d1cecbc7ec
Date: Fri, 07 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762529993
