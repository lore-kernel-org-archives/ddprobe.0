Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243D1188A3A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752595194; cv=none; b=lyuureyW1mucO22/VvhpeAEreHndMnrhT9VxlVNOj8QB2MLyzxLJ9wCHXMBNhgdnxci+NpxKAECsaX//a9ubxAu86kAdvLF2jCKtttS7WOt0mtPyxqonDRWPTCnwqVU5LBzrDmmoUYndf9bCTmKVmQTjJJRGS+73oqlrseSH6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752595194; c=relaxed/simple;
	bh=dbNund64oMwxhrQzq3/x3yMOr9qQKcdO7C9rjKr9XBI=;
	h=To:Subject:From:Message-Id:Date; b=t4FNjz3NsDe6PtMEuB9G5HTTJgoJcpyxUeQWAnqxB0GqeXRWPy2w6ShgKzU3IkuNvAjVx9G76AkFHbRa/Y28UNowxHOb/kwNkJthn+JSP0dmvE2zw2NDU8GkrMblT5/5egPYCzSEM6EB25g7rTGy6OGpVdsA3cRfWJjstzVbdjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce6tiLZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce6tiLZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43FAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752595193;
	bh=dbNund64oMwxhrQzq3/x3yMOr9qQKcdO7C9rjKr9XBI=;
	h=To:Subject:From:Date:From;
	b=Ce6tiLZGynTWlofd3TKbNZ3WXaePvHmP4mtlEDXpS3qeOD5Vpr2N38SFgMHXl3xPM
	 2MLEfIkKfPvtfJi1nkykhaBikET6J16+a/YBLN7BLLsjsC0wYtIsZfbPakEydE+fPB
	 POn6OiJsiEoJ+xTku5GnHuCnqylfvsbWoWGkz+NJVPS7xc8KrvcAohqTGRzqkmzxem
	 jUqV62oXWCXVqBHVGXD35eqlSo4YFTbDYQWSwIQu78uc1o/LMHjmkUycfu6m6domvi
	 T359DLhzotU4Q93D4tR9aKi94cQVQr5NXpINg9OWhJClNkAlcf+8E/JgyyDE4FjD5d
	 qOFIILqqag+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90696C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259519358.9143.10853050543042232265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20c9406a71dee6d0e442da5707a83712808f3db4f3069f6c706ee7e58cb62ff
Date: Tue, 15 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752595193
