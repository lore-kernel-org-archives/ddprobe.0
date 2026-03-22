Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A821CC58
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774223694; cv=none; b=UXsFEgdI2+EXsmD4sV7Wyh9rBjJ6NODW0PCkB1XGVPda3X9kFcbHMgSnaNBxp8OKG/BhOik97VY5FUaQOf7yagrEgDPQ7sbf5peGjVBRYiS3ux0G056zXaswhcOXPLZBpY/8i9jiFbZ6quRs9YE8kXkDWQsp9xLGauddRdTfxOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774223694; c=relaxed/simple;
	bh=M9Pp4jaw4HtyoFz5FmmHuYe0aNwtRKsdjXltc23kyH4=;
	h=To:Subject:From:Message-Id:Date; b=YIHQrayS6sCFSsSbpOU3XMWn7aIkMIUAxNYgltpPbBGg32+hE2zyVxr5LiRnAY+u/XQjPoGdAXC5vrFsm3HLWUno9QRQWd/2rRDdYAO6UfukH3b1EtMPRT3xm5BCeYSlwvALoJjCMTOmAPd7Pn7mDzEIOx223gnx2IUQt2GCulE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMjGxYWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMjGxYWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC35C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774223693;
	bh=M9Pp4jaw4HtyoFz5FmmHuYe0aNwtRKsdjXltc23kyH4=;
	h=To:Subject:From:Date:From;
	b=YMjGxYWknuedm7HFDG8UX8mOQSDeQv9Zl7ABEmuN/I48sQdSKR2NjviggZ7QeBEh3
	 RMl/GC4ptqY5fU04ArfGJMRGRppK5mnmc8TWWbq2dx75gDbZh3SXyoKhXeW1y4DwZy
	 M9qTLtcfVXtWcGL6BT+xZyR3qCbTpxjHE6NsbxuCPp9Q3jfd35Yr3rMf2pIfaeve7p
	 XXDUx3aoI9e9lljL4b5kCAyx65IKh2Ul4psIsBs9pGnwH8R99q6e28yR1Sd6Z5c5SY
	 uwGmcg4sS+ofqc6nzOdjMZ3SdrCQHK6Ah20Cpsje1NDG/K6/k1a/YzOAifflDmqWoO
	 4KtAa+grtQQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9693DD58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422369358.29209.1651732813634500282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f804ab399b88c2178cae897c0775eeb53c1f398e20e112dcbe0076c01ffb31
Date: Sun, 22 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774223693
