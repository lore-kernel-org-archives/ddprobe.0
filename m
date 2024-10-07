Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977F6FC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728284754; cv=none; b=fh3GFnGi6JgjgSw2oG3GGDiB9yReoX0dssyr222asBs3ggPlAHwIfZm3zElsIXpCQU4jfOrYGYb+8wEmcVMmGcNMQnlVJGcMwpIWNjr26MZx1Ge7bXuAviaAd9Fx5rHTnZWfLttc5/yL2cnLrxJfcAkAKgndQxx2WL2lQRp0waY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728284754; c=relaxed/simple;
	bh=OeBWGrjEj25GntqUf/oPgdkSJOUncLQR4pnJoe1bCAw=;
	h=To:Subject:From:Message-Id:Date; b=kj1xLV884BPaNEKjGhfonHWx+EfmLmYd+W+g4R7cZj7FYkNKLSOvMA4wYojUFNtJyP2++jL1O5yBONz6YUQQMV1CcQ/qTmbpHVLPh/niF2BB2G0sW+Lqz9zFpWYAh2o2hmCEUq1G7tKA2P7vYgaGbSFIZzCfC+3cYzTnXiczhvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWajXnR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWajXnR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F1CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728284753;
	bh=OeBWGrjEj25GntqUf/oPgdkSJOUncLQR4pnJoe1bCAw=;
	h=To:Subject:From:Date:From;
	b=KWajXnR7TWKhd9GtOFnDaQ+FMLIOO0EDUCFNM+LuZYXtR04Hncci2J25jD9SZtuSF
	 csm5omjQYQrrhCF18ainPf6wjV5bhA2K0FneEDXngRSl/ijqCsPJypgkhcNEWPHOXv
	 wG2GETCwGlBV2q8i/C6dwESZKTe24y3G3/5o2UkE44JH8WBG0wrCQm//ttzl5TE7mb
	 aqkFPlr9Rn0guiKuXLpHeItn00OGxOxeNNE43rxDdIPzZnJI6ndKonkkEEHh487YS+
	 KfLN+eTtOKusJVffJTVrrc6LxqaSmITFo8uAabvL9mB+pCFOO0FeNk0LGNhWlQD47c
	 v68b/osyp4E9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94193CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828475359.25656.13037614129293807900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d997ce35d814acd4ddb848c97d910078e7d259fd8821dde8f5ce528a3197989
Date: Mon, 07 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728284753
