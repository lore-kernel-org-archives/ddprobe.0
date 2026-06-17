Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31483391E57
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781691994; cv=none; b=JTxlF+0oXyi/1ysIHMpdaOU2BRQ5dc9ztHe68g/JS3D95cgAWdBd7uXRx33X6bv8M/mkiSXivUzqdqctIzu+34ApWX8Cr+to8/aRve45juRzuTo1N8PksX7nkGa+BIMaSfYRLDiAJkEP6cYUzSCr27+c3kaCei8980wZz8BXlAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781691994; c=relaxed/simple;
	bh=/BWLkfqkBdmGhaPjpGyRVnrDcBNl+EM60laTEm4oEqg=;
	h=To:Subject:From:Message-Id:Date; b=TUBG85DddYr9mnwF00TaZck6YtV3GmkvzCkzUdkwL+1Sj9Y9xSDx0X1VN7qoXnOGI2vDY2jvtlbfDUqg7UANQavJ/r65JNV+kSZvjxrELVropZgMk7o2dNbKM3jlo6aX/zLE+RnsCjC3LQ5nrwIctdsN5TYok479189AcRAdoOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/kHCLkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/kHCLkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D893BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781691993;
	bh=/BWLkfqkBdmGhaPjpGyRVnrDcBNl+EM60laTEm4oEqg=;
	h=To:Subject:From:Date:From;
	b=F/kHCLkPGt5cc4nD1wKAn/IkDWwNsyJPxmsLPdqH9jdtYnCK28DZaETwdvjYdqzuT
	 qTsuChljq7sgUsQqkvXt3JxInxSuZ1TwqJT3cVnPtXwd84D9d2vcK9FKeGyahzuP13
	 w66mNGgz7GADbd60PIuTjtNerBQQlk81NuiRteui50LSnNBul+4VMU9ekk6tobFW3A
	 if9EtXaPWkCxl57+DrLvzeC+1zHAcvYGQ+bLX8qDR9xpH1K5xIVOsnJ+jxUQf7ps5u
	 oMjU3R8ECjUziTDYw6uqzHQONbdm+z2WNB2YVA1reQFzrLoB9GZnrlPCe8iipzNbCi
	 /3IMRqy8KEp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA983CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169199375.23503.6063110999724642101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb884e967363832e102e521a4e5884d5b217694e5f1dffe9bced73ff375683fa
Date: Wed, 17 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781691993
