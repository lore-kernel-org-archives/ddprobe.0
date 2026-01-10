Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F25242D6B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768041834; cv=none; b=CO4Ho5Th5r65B3EQ2pqrdT4VQA1tYv/kXY1LQx1E+YU7cn+x08/I8ARM2U8K6+aH3PYW2yEjdifvLsVngbQ/5Bt6gPLxzs0/Gcp6W4Tyx9ZV1iXxeso4oHclRqz3D/3k4ZqH5N1q+PDwubu+fj1NCwx6LDPGQun7jWYg1J1q/yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768041834; c=relaxed/simple;
	bh=BaYOa/jCYlYqolOWYaJY3Xws/EqlgTQzmvEpG4rouOg=;
	h=To:Subject:From:Message-Id:Date; b=hzmoAtRucp4sKpflAEdczqiaB6wFCcXpY5XSxB6bMNCcGYZKTajozl0m3serByWn9cQzfGKLumH0qMwLe/i31FU3oAVto4H4jrmR2lOUSpxRRMTC+N0+PysQ/rrs6JVOFhZsXchRrHB4Kyj91efu7LuLeMqP6nzjQZRnUCu+V2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gd5cBlZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gd5cBlZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F3CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768041833;
	bh=BaYOa/jCYlYqolOWYaJY3Xws/EqlgTQzmvEpG4rouOg=;
	h=To:Subject:From:Date:From;
	b=Gd5cBlZoB5q+J5HbcuyyBFn+XQS0CXbudRMl0k84Pws5T9aYYcGInr0p1GuAjFbob
	 tlK1YVtpqP1YqbwsQmHL8aJf9PggAJRhYjtIwy3nfL8bIE6U+sC1nov8z+UGYEkF3v
	 rEBSo0ntR0feb9ERo8yFkE5spmLKPfe4fHjTMTX7fg8mRmTJMg9coEp470bVrOwMyB
	 g5Ksso61VvGYpzff4fVUeRC5ubru9VWmjq+Mfm3INazfSfZuLN1oGmUAghXVj5RoCi
	 xOfEneNfkwiqVVfJ1ke3QjSXdLOFNdQLDBOtTbiCUDOcO4Sm3rtvR3F9OJz7wB8/oP
	 HMRDvzZj1dALA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA58D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804183358.18614.4478574604771148631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c8fcdb9122e1899534a391574d401e48339560f6b70c544d0558c55ddb4c3e
Date: Sat, 10 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768041833
