Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C651DED6D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747123195; cv=none; b=X8y7LYsQzglttMYRcqvbSaTWjsIdw9S+yN1aG2eB+2WEGGqfXe5UXLq7ydDmsXjDvuhJRf2y1z2PuDbTpzwrXS+G9/6lE2NdIPWJ8zRFvN4+lXhV4u2LGD85H5pNIZNEGSk3MIQZf9lgBuX0Jvef0CbhUdspl1Lo6zmAAxvXIBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747123195; c=relaxed/simple;
	bh=zahaiHm4ne4kultu4DyYDD/7jMkvbtnuIxzPElThPYw=;
	h=To:Subject:From:Message-Id:Date; b=uyQQXNIgYK+RIh1LgglarUNcijDUV5R12Gs8PNguF5AoGT6v7gMzTyLZLZSJc51BvoqdcgnJqgJerj8HQcfVQtoqdAXmE1ZZenfALC5H1aXz6xaYJiIobTyexCH9GDg42ntum3SsjUqp+3B+HnuyFAk+kgQ1pZQ3aaTr3sQ+jP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYEO8oDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYEO8oDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB330C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747123193;
	bh=zahaiHm4ne4kultu4DyYDD/7jMkvbtnuIxzPElThPYw=;
	h=To:Subject:From:Date:From;
	b=EYEO8oDBb4fwq1UTNE/SEkAsak4Sc50rBZQ18/H1UniRudTPs0N2S/tRuHZ1Z+qI+
	 +X+Oh6gPYGe0MNBdTXs8UxphuMhQadj7H6R2lePiucN/Q0qD489b60EAYXZU6tU44I
	 SSVuLmWQFuksq+64S1O54qJnZQq3IDNcgUzGu/O6a/5Y1Ayd7JOiy9pcgbLDF2O4IK
	 vq8RyB/n0HbKU0wsTwEng9M4QRDWhHBLVwjqYQia2TwehdzvczkvBkhJNrpBH5AoCM
	 vYzVRREa7QiGyRroAHJmM70J6xI0CStXQ4JHnGBOReYbCKUp1rmaocq7d9o7K7aQ3J
	 IuEXOrvYJoiLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B1C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712319359.27474.8778293701744165716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c221c835f051a50676914716951dfa1aa1c6409dbfee5e9f3d775dbc7722adc2
Date: Tue, 13 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747123193
