Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DEE25A627
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748367594; cv=none; b=FefTx0C1KxuTDm+RNPwxrnyg3p7kJvwo6HiGv1DkHEYOYUmAod/bS7ho8WMj5eBwR3s5k3TSQmxic88S4e97GXcaxr83GD9WtnoVOUd+/tvhCU+RkdLx17jef1SRiCrpu0LNbbei6PpISos49GVf67fc6XPIuXL1KY9t0eFhyAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748367594; c=relaxed/simple;
	bh=07QSV+4lKYzS7ZPaV0mMKzXbMA4Xq3cGCGjQ5Pn3zWM=;
	h=To:Subject:From:Message-Id:Date; b=RneMhLoNJmFIoYYTI5BsOZpgUMhQItUoY7sovQv3ZEdSWwReLH6q1eqPpkrJAv2Mav725pw7OGdEEflF5P0J9UCHbyLMJJ1wy1sukF7rJgdNC7B5zxCKKIrlj8ii/xqFGbQtX2AB4prs9HuZjRk/yjpC0oNyyD+BF8sI/CqxqPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0WlFERy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0WlFERy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD36C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748367593;
	bh=07QSV+4lKYzS7ZPaV0mMKzXbMA4Xq3cGCGjQ5Pn3zWM=;
	h=To:Subject:From:Date:From;
	b=U0WlFERyeqXLaDDgV6L8V8IfY1Qvk+RdBZoIMBw+U+wBWbphQTBiIuWoOMdIyxNoh
	 nBCI0S9B/0/eSBvb3phgwvDyCMAcl+B4Gd2PvzWx+Vjzll6q/WBiT91t4tQW3AEiDi
	 Eax9GOVIV3GW3Rjv30ir1YRK58AgR+eA8BYr2Ajmh8s9PC/JAbCheyo+0gTuqCz2r7
	 swSfNJdLtBS6mcuHsmfPUOHiK2KlLfSXCpQORkoEg90bzy9L2EUOLnWUOiAmee9I9N
	 es4lHDosU98qm57TQU5K4mmM46cByNfyG9RIEmoSJD17FlgbI/075Pko2hSWjfbhy2
	 mgT0H90WKZQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6FC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836759358.29808.3521784899581618519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89d28ef4fc5009551ec8c05e9e4e2fcab896f2bcda80a3644742452f85a59b7
Date: Tue, 27 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748367593
