Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2881638643B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777756654; cv=none; b=gcX+2wi7rBB45MXzW53OdJRQ80urwVY+Yep0/0YX9amHavTRWMbqZdf39abClFyOHfZFHXQpqtFjMQDvhCXcyhSmHuuXeJPCsrnfwc9h3xaaFFG0ox6A0Et6WYgukGZCb25lsIR4zhLsf99KTXJPqecBaMUZx99h6RceE1KVDxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777756654; c=relaxed/simple;
	bh=aNRj50kPaz5dKMIkTvFqPLducWLnoaQrxaqRvyYiEz4=;
	h=To:Subject:From:Message-Id:Date; b=WXY47dejSeE1uCnBEig1gJF2c6XDkKeHrYXLyxdyTEJ2Pae3q5BgNZPDkpVH99gu1Jly1QTr7c5BT6spJ83Ur2gpbi71YMe/qSvipjkFjQfR4f65oWQ1Fu9QTfXYRPRiiHlQO5bNfLashB/zR3ppjbYIZVDgrWmt368ou9YGG2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn299XjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn299XjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0084C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777756653;
	bh=aNRj50kPaz5dKMIkTvFqPLducWLnoaQrxaqRvyYiEz4=;
	h=To:Subject:From:Date:From;
	b=Kn299XjC0DuvJ3BmxYCtHNkazenaRtAC0dn/pUzAHRK0jV5PfiuSTeusteSqkzjR/
	 qyf1HMlvgf0ybf+0ohXNNAn0G/M7cro2RivNf1tOt1ERKxkPzJNsPtr395udD029V1
	 UN4sx8zANnQ37J6f6PnroJeN/4NP1bSF2ou0hmNpJOTmVFTq8dvcDgKLEfLvzzcBBU
	 dhswr64Vl54cq9WyHEYm+hjA7eaBv/9iEwxiSskiij3fkJL/IhanZ0P0X4olNvkbGx
	 /Ez3PQWDIh7J3BBK3o5Ho+QprNKxGTwdC27HiDAxnNVANlGs/SzQGo3DHwJj2xnunA
	 rcrMNSiZ51pwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C7CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775665368.2985.16468484667692420532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c600bfe32ba99d546bafc6df9721fa3c6f0915f0850a65144ffe6295db79c3
Date: Sat, 02 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777756653
