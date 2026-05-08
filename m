Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4E91A683A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778273253; cv=none; b=j12eYFWKTmNx7xqG0rgFFIkSljN1uHKWUMqjbNbcMgXZzRCE9cwLw04UvT1ms+crmnEs2YDeJEEnGAbep8Ey3s8IYWrbA0d4Up6DWoCJiKJ0nCKQce13KOMkLWMSGjBPC+Ljx5lsSrqs0HtNqntuzH+zbdKo8mlSJRaPwkT5fF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778273253; c=relaxed/simple;
	bh=tZdgvPvXgFsqBKDw6St9xrxJsBIGypG/ioXbQ1vKPNw=;
	h=To:Subject:From:Message-Id:Date; b=l0hpB49LLmjjfUmnKAB6JiUpHusfRszLixvOnU1RQV7ckWGUkb9tNKZjUyBrTSLUy09QbIk89btYal5+12yFhbsH7LG8EP3kvaWBBv6iuDG0GH1BAW71IMxktY+aN8x4T/d3eEsXQ1Z+S5qnWF9UFwQ/MbvAVj8rAn/h0KbWPrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8Mj8O93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8Mj8O93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF36DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778273253;
	bh=tZdgvPvXgFsqBKDw6St9xrxJsBIGypG/ioXbQ1vKPNw=;
	h=To:Subject:From:Date:From;
	b=E8Mj8O93WOBy3wiRhVCFf2tgLSpctWtjEMoszQG9kqy9LE6ftzPBXIVy2S9egbqsj
	 tgzScJybxhuaJbYqe/r6yDK/5ebCMQsbV6ZfLFMNYR/T727R9Mp+OMNCTWgKnqDCyb
	 r2kbxrpjVdguA3HHzzlVenginQbhf2WNRi/6uAiR2U9mizVTslgL/+6+caSf7gugEr
	 SxuYQOktb9YseiTCX9GypyyHa3eK60gX4crPMN+qe3ccydsjF78rJ3KOT9+vDYbHRp
	 uLEHAwd6pOdFV9Vs92E2fY9GmYVN8xrVn2SWJPY8spcoL3XYHz7oZkUNloz31bsc55
	 j/j3SjlhtIS0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19DCD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827325370.7183.16114991305614374787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ce25f05a2db3efbb4e3df1a6b3476e135a1b13d9a9c3475e278c88a4623cf3
Date: Fri, 08 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778273253
