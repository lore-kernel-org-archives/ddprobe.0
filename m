Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8203C4A1399
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792047634; cv=none; b=qrygArTKxDwnqVzybjsknb1Z3mHFb+KyOB1tYL/HaafavKj8VgRHwoFy0WQVxjvEsXmxV8G15Bc8qcuCojPvwM9BuUpCxfsvKqExC9XIdmDeHPKPEA2AtUguc5BhHCQizPicP5iQOgoBkD0hLUp+CSI81dYtmrdOIz19nnnMjiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792047634; c=relaxed/simple;
	bh=HORePq3P2pyO/ewXeCeSmtYuGgkluM6YbOnjoUXTQx8=;
	h=To:Subject:From:Message-Id:Date; b=a3chz7wS8nsELP1uVogslaTGrH8i0GOoUcdGUOPLUMDn2Y0QZmpYiwkOQFECdyhko/5J3bNuvIGs2YsXJ6zmXA5WENFGPZnuz1LnAWh1cTGHTft/qtiuixBbxBtzDCjRzeuiv0LEjVeSBv57N3zU8t1CCR8FlkbLnEkG/D1QnLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnlTxCgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnlTxCgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0123C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792047633;
	bh=HORePq3P2pyO/ewXeCeSmtYuGgkluM6YbOnjoUXTQx8=;
	h=To:Subject:From:Date:From;
	b=QnlTxCgMWbCKK/YnVlRv6UwaSsdp1z3Us4LkY0uklsHQavcqfD9uX/gFtAywsPKu/
	 bale7CBRSKW7HIeduOvbCJgoTaT0kUoDtgmXOIHNsjhMsfnZCp2t2Nx5LBDNBpEP/N
	 T4Y6+E+COpj3VJwa2tZgFolKrG+oR+Y5PDXUFa862rweKzLFS9ld8Gc7DwnCfv/F6N
	 34xSnrrIR3OiOx3Uf4UbxvOjXnT4qneKOda1jIxHcGK7xwmGvV45O5/VXfA7FSnk+S
	 KcJAf5JXOU5C2ABvS9yIFVcbsxU/kBbESBTHESlEnXfV38um09EAZRcJ7Onu3QDjmP
	 DPbQnz1uoPWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB391CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204763369.32129.16730265004176506493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadd6d6f510e3cd1e14eca3710450003d5b78ae0753b592e8c8f1ce0da05b106
Date: Thu, 15 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792047633
