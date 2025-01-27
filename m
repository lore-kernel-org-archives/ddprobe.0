Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3464C1E868
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737980154; cv=none; b=FXK3Ul8DhaZNmgCLZg+a0XAaJBFJ6KiMKilJZAZqJBVtIFyzvf2Nj1kQct+XGFykTT8gY2nYByjeakYaSQbQsaqBNG+CU58A0axH0C4UONb4PKCsu4leMCKFAb3y6C9Z7kCCvsDosK6CLO0Z+xFBeewC2Ynt8dbuUS7g6gzGLn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737980154; c=relaxed/simple;
	bh=Etu2Y+Fpn5xAjBit+rbY469InLCvV5XIuGoT2I6d8Nk=;
	h=To:Subject:From:Message-Id:Date; b=uhE9SXYs2V+VjCSG+1PmurQkdPNhOUA/VWaBDMrtlYoel0Tg7YI53lyTstm9yc4Q4DOdOQrrL/qRbodyaV+63mFDtXtTkHj279oVVVaKmzqazkaT5D3QEsZYgRp0XJAYVU0uDLHgkj04aYAnyxs9XuGYwA7UEoKzrgDxy5FoUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6+QEXKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6+QEXKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4ADC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737980153;
	bh=Etu2Y+Fpn5xAjBit+rbY469InLCvV5XIuGoT2I6d8Nk=;
	h=To:Subject:From:Date:From;
	b=p6+QEXKZvA0/KcHnL5/CtYGIguzGJy1ETiy7yNKk9/J7q8ccyDVdvns5V8hsF58WX
	 +2V37HC2ETztrkbVo58soU5GVdut4YqVXwRmQt4juaBJbJEpO8+Qvyd0MxBv3Svss1
	 yEOc9Wdr7Ua6btp+Z8rnC+MERnWOo4yYwvDlm4Uu0RS8PukL20YLk3Kp3KHJ18UgUF
	 mGbdtnxLqK3AbbVgOH0CE2LBAEWehGtuhbvmtUzm7az6cE5xAHbEIVSys5CPrYbVa0
	 RLZkIDK8+LrolCjlR0i0XV0yVDZfQ92SpncQhJYAEuQGnOPyksCBgSei1+ZXAg+RFv
	 9F+9JkUSwc8Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F0C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798015357.15846.8424618753676966083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9913b213b2e564a47a0775bed35fc010d5c8d9aeac600edc1d696c72c89f30e
Date: Mon, 27 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737980153
