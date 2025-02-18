Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5F246348
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739897335; cv=none; b=pF+AZSX+pUU7Vqo1ffS+VjNMmmEp8dPKDeJ0npunPOQTkToMk9UnfppLdd9mCJ1q+ulwS2ZnLeGjKVuNHe8vDdasnJ14An0rlJWDthJgz0T+zWpgSGnBlLZnLAgJSDa2a+a5RnU+lfFY1eUXJrf1X5qxvzDoEZofEEPgVzTgy9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739897335; c=relaxed/simple;
	bh=M41Hy8a9fCNPqhCjrHHD07a0BN3e+0f6t/TFkL7FNDA=;
	h=To:Subject:From:Message-Id:Date; b=otRrrh+Z545Z1wOPwk7kH2fydpCCcoSIqLzMts4kD1sIBzyYocWDs5zVFmF+sDdbdF7IO/5g1uftfK9I5HbMI7XyWXUJfIiYW0Ka3xHvn15ZcFg7j11GQgB0tmUWkIzCcUtqG5rRj37i3Bo/vgMW1Zmdk85zOpXJCgHYD86Axwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOZLBvG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOZLBvG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A6C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739897333;
	bh=M41Hy8a9fCNPqhCjrHHD07a0BN3e+0f6t/TFkL7FNDA=;
	h=To:Subject:From:Date:From;
	b=FOZLBvG9ITsfG6CNTi6q66nK3WW+v00+fRwndIsr086YUwtw/JQ9VYOSFdsAo02yq
	 BtnAOeqYo/fdiDnOiskjRAcqKBMnWQ+b5Ez4Jdx8jOAtNEDJNC6uiCB+YGZSRRK2Te
	 jLfAcRBX4GwjNVSrjteT4OUdIdoiShuiLk2bw4vMkroiaZeT6dZQ8jIGWP8f6gwgk1
	 a0zGkGFj11VuTQYRt2H30kqBQE0iwwSdLCuWJv9dA944afZxgCFZkK1QknuGnjnr3n
	 PqqGuMp+rWSBRQflcxBGLyefRYVxtvX4IWBJHyfXjX3Yx5bCQ/vFkc1CNE5uC1/F71
	 VgojW4BOp6fzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E62C021AD
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173989733361.25570.5604448712695052125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f267a77e01ac9b142484a7ea0be8643770be31fbb6f3c272bb56e548e035f20
Date: Tue, 18 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739897333
