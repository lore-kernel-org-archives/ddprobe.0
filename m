Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D4F13DDCC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718077103; cv=none; b=b0wzENJQpquX0ZE4tFfUrX7Sgt1mr6j/vOEZoIjS5FtuvelIhWFJEibl1W/RgsPotLHIEMP8OKYOrFPEvV0SCEaMezC8MqBCKkmXs+HfgFJsBWIXy/MMn0WnotDIWORAg7yP+W9rW8nzTT16XM75zm3JhF+9kVat7MDtr54lWuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718077103; c=relaxed/simple;
	bh=qPYYoCkpBzkgsEcfa+k2K3uNiGkbykh5KevU8cw+TqY=;
	h=To:Subject:From:Message-Id:Date; b=UxUd5ri1qdnn1e8DK+N7rwfwWn/A1lFhCe9oRqmMJkiaEYVgA16nx11cEroYIco/XLHbzgMIHfe9BR+9kGlpVT0G8rJARqMq8yyX2eoCD4CcICchyFro4hcu+0I/peXaolsxiGPjM4fitK9zp9oF+B5FKXkkGzycNaUWpTCUQiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA4e9sBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA4e9sBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10D0C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718077102;
	bh=qPYYoCkpBzkgsEcfa+k2K3uNiGkbykh5KevU8cw+TqY=;
	h=To:Subject:From:Date:From;
	b=iA4e9sBrIAHPhFkyEeGo59odkYP4SY04BDJcjP54rEtnkgLEYxMtWJVkZWL13OXlj
	 sm5VysL3Fb3BSch+XvGp6Sdik0bHqkNN9v1RS7RQEVlNMdYQog+8Vu0ZPDt4R7wZWX
	 yqqIxibfyNrfn/kzFYIaq7gJlp5zjfFfkTPF64hodFKqmPnoUueHRuzvD4Oj8lTQea
	 l+Zba5F3cnFMd62zNUpe9QeWsa5F/LNtW3WOlTTSy4gR3+xYhJD6JG8dkeFD+rnvWh
	 CSebJtaQUb0IV34QHz2sWhIt3ZFVMOX2YCwANvgkkOpOf0t20zMFuoekdSthnQAVPJ
	 f8/8Rn6kQPNhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F47C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807710280.12717.8128991360588417793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe7304a686204e3d9fd6be6f87bfb04298679688b41ba807a20eec1ca176af6
Date: Tue, 11 Jun 2024 03:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718077102
