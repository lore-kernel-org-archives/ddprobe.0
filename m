Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2261A83F1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736319354; cv=none; b=DFG7hRAzhZikLTVMqqF66Jk5bl6BlKfSTQAn158Ly2REr32KlekppbeaJFP6lEaZ4rTFg7ETPmnfYFcgoC7i2DBynRWXkKnzKLoMVAAC4yVZ9gecrsfG4cbTw6Oy7V1ANW+GYoRGw7Jy3MqDyDJXc4PD17vQvviqv9Rr0O6cIoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736319354; c=relaxed/simple;
	bh=UwRlMn6DxY3sdEqmFrR+w+En6TQFPw25lcS7UxSBF1U=;
	h=To:Subject:From:Message-Id:Date; b=X+ZRHabvS+HYPWa3MbV85+ixNb+epBOOFtDfoC+3pWu1C23uJUacnZxl6BHbtBpZiFW1jW93p1S0Ldrz45S5H5/+SYtose/unRANR9aHgzb7dMc8IzED5v2n6cEhDfvxzjTGzIXY8EoGhG2eH6RZabxrBmD1nrOaOKeFJu3PuCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfnuSF8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfnuSF8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C74C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736319353;
	bh=UwRlMn6DxY3sdEqmFrR+w+En6TQFPw25lcS7UxSBF1U=;
	h=To:Subject:From:Date:From;
	b=kfnuSF8BlH5N3POWcsGMSgR2BXfn8Hxu+fsODDYpwPJWjsyYkjCprJvZMHKFQDYB/
	 ZjkGYr76gIIJ44qFcm1IF1DmlMQ5Z3uviCcU5ArqaIKbg7Li0omj6tsbroqlAGViUf
	 5xbtImMzBinb7YQPlKwlSKOWE9lu2vW6BJB3MApBamUkYMnAFodUkKrKkX7nPGEXdi
	 WuITfk7iJMtiYTUgV5vSVJ+gEGI9RztMNjlgsLUGOgi05cWCKXGGLvR0ePQfFsIFBs
	 2D5Di6ZBmekKGFIpObyZHbjT3PfFdd1RclRI1XY4M15ySIhvDkMROJdiwn3E+FriGW
	 r3bKJGT33wM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92656E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631935359.19145.5840234831144137509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ddb6c6000bee2ca5cfdc8ceed3275f0233e2b95a8a2fb2de9784cd48952dda
Date: Wed, 08 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736319353
