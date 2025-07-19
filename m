Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104EA222584
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752911994; cv=none; b=iTJ515XE2bpX/fC8P6Il1Q1oZ0fov6uM9E9FVdKFS0m6TfPm5tLHIfBhhFvgQxX2Fcj5m3KIUyubX5e+/fCl1npdrZ66+iHQ5cPeIfZeCcy6z29fDY7vnG7J7/SperjBsVmzMkSsXBzTuCZ0t7yHxeoTRrgKdFGl549X86+8C88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752911994; c=relaxed/simple;
	bh=XHsEtXvCXdhwznI9s8P9YrFJ8hThm221Muxmn4UeyJU=;
	h=To:Subject:From:Message-Id:Date; b=A2RRx7ELSyRILh2ct15h+nCtexcHiCcoWJATVdDHPojPOZWU2faSdxskITeXjcYbkZymrGKVxf1uDVhbvce+xoXLRJq/31hj5/rcjyP5mtkXOwhjXMSRRseuQwJ6t+iLebpCGt433v29bqHFdKbyRnajCQTeKaJ7s3WU79E8c3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QitbTlk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QitbTlk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752911993;
	bh=XHsEtXvCXdhwznI9s8P9YrFJ8hThm221Muxmn4UeyJU=;
	h=To:Subject:From:Date:From;
	b=QitbTlk463ZiH6gqyihHg56iJtUIqDphJmY86wBxab+kjIPFFFXFdB67Ibpfz/trp
	 nKYhw+CAij1B4TL95b+Fjeq+21UO7sDqoLWTgh+bRIcZ+HmzwsUROppcZo5U5lMmpP
	 iJD26n5n8q9FC/KEe9hqepFvbxmkpyfNmuFYBn4/WNPYSXgIBld8VoRWXmYV5gvT6N
	 NGFiWPuRIR+MPtL75TCwR6d0POcRMdY09vRuBMBuK+PNQ+C2n3Nz3XzvWvROm1QNIn
	 zivWrmYQF+VPjVZX1AA+uyjCwh9T+CiqA7orxEL55l9hBKwy7mCLfuI+E8oLwhveHo
	 K3BtGG3wnYxtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92296C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291199357.1743.4718308183010939063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff25349ddd398b17210dfb233effc563b895b0cc4cd0916031a48808c1422905
Date: Sat, 19 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752911993
