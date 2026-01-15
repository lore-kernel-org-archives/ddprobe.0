Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CEB2C0266
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768439642; cv=none; b=jAAzrE6kThfv2iv/wq+acRENjdIFoNzisDyYSYsPjvWtZKxrrcO2HZKqRvs98M233N3SV5Z3Vl22DGlmKdUyqrjvUJlt60X0CiOM1Ha6+kwfwa5FxBAuSR7XDmvRBpCIIHHewevqlWYSc4tTJxGqFij9bm2DbXgyqabOfMHEoXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768439642; c=relaxed/simple;
	bh=j8PuxNsA+V22Bfqzj3EEmRiqtkH/iRcmKwfSG2e3MBw=;
	h=To:Subject:From:Message-Id:Date; b=m4pXWUuetfZ3XLrzQX2xC+zALawIE82U1nJULXoCZYt5MEycAMitlZ8cQMHA5aSa0e2+Vs2x15Z9k/C/6fZidZIa7rQmIZsDSW+b2BYEq3rUurHEUGvq8R4J5AnQo7YymPw63cn3dZE/D1oLLosKifZi9B9gIiPrtar+J/CD7J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cemfVbkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cemfVbkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2338C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768439633;
	bh=j8PuxNsA+V22Bfqzj3EEmRiqtkH/iRcmKwfSG2e3MBw=;
	h=To:Subject:From:Date:From;
	b=cemfVbkMFrPoKuRq5gFurS242fSHHGsH/0XReAzOlSxwG+X63PjA/srxdKWnNqdfP
	 LshQQn3Omt/iUrNsCaP9B+Mf8riwAktsQYQldbOxp8CNY9SN49hsH/kDnFjeEwZOxo
	 zqi2wdrfQMLUzFC5NaQisvkfp4xa5eJAfp9ULA7xXxy4lhQTZ4s30r3YxB/SmLfDOf
	 XZ+Q7nO7Ckj8RXA2BtZDCm58DeOCQqEDXAzu0rw3bFn+4SMBHjAlboiqjKemmk1fVi
	 gu7Y1kkyb20tnlihA8z5BjhkkEyDTDc46h4EgAs8MTz0vRE5nTV8EJLABB0geHvNji
	 pPCi0cNa3wM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91348D3CC95
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843963358.32686.6269125347508481412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a4862e03c0e209ea4f0160a46b3a2469c774f6042b3daeff326b6508574bc5
Date: Thu, 15 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768439633
