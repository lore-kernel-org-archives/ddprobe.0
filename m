Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4E436999A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768236234; cv=none; b=TA2Z6OODcNtgFKxKUDBiR7H0K354YskPMN7L7OJ4U/dr8z6fZCaEtaae8xc31QkH4OkmLsuScHcKvG7mDoiIATa927/wbKB0N2OJv5SBnaKWYkcf3NhpgS10JtJTmoK6J3MnIsFO8J7IRwFitOfRnu3DlaLWr3GWjPWqcp+ESl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768236234; c=relaxed/simple;
	bh=rBMksE7vKVEay5/MlxIO/8EGZwYp2g4uJQYMfzgl8rc=;
	h=To:Subject:From:Message-Id:Date; b=YRaP7x0h2k3A4iw9tr1OKIUrzx3Z2ztlMRko71AoL3ofCuPVuLwsj2Ng6VHAezPmRr8OHYRNkIBGZh3BC2Xf9ydYaLM3u8sXewXYaVovPNf/UpC2SjS8GbA9coW+8P5kp6xDgWuTVvc8E/kQmdtC5BLPoXcr4WlpLhOwzCk8Ah4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAq/pKLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAq/pKLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD6C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768236233;
	bh=rBMksE7vKVEay5/MlxIO/8EGZwYp2g4uJQYMfzgl8rc=;
	h=To:Subject:From:Date:From;
	b=DAq/pKLUCerUN9JqJyja7Ts4/rsad82GVvX2+07qjx9jy/kGzIh7IKVYaKdmoKwB9
	 q2GmkhfqjgOWt6qRAkt7Yobh3eOtjdN5yKDms9TOO8sBmdVQl5HrPq1SHwdrMJ1cwL
	 sfiwtGoQFHXNyDdJRqxShXOUrYrGR6DwEqb+ayNZ6EAodO53J7yEm5Qaaz0/3/B9fR
	 SAxzl27n3oZt1HcXM/iCLePP7WnW2uDYFbM3B5bci8a47SAQMl6lL1wD/9krb3pfHd
	 0O61zT14O82alhAwStNuqWDmQQelbPHtTlnOLH3d95SA7udAae05t7noBqAFgaD2HX
	 3WGdmC3E25FeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFDCF45A4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823623358.31812.260021903298693066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2cafc708ce0c27041612faaf7773e79a7749ef134cb9803387c87e5323eca0
Date: Mon, 12 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768236233
