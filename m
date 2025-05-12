Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B3383
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747009194; cv=none; b=X6sbw5KUjmG5h46ouM77mCLYUs9QyGyagEBZHsGmF5KpTlt2aR5nCj6+Ltn2+t9ZtBbTUs9EaDtz4Jte5tvcGl8Z+fVRxSQW7aZUg0kdORiRWNDPhv4sJseOicLvkh29akHAWOEAZrHRGUckxkvrFSXecBazRrGma2iflzzsIfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747009194; c=relaxed/simple;
	bh=oGkj6UqhM8tZuejH+ce0iukrz3n2Oetl8vdQgapSOgM=;
	h=To:Subject:From:Message-Id:Date; b=mr4x9v+4YjAPnb4f9MRlEZPqINQvN7G5nu3pz4oazI7O6qxGY3HrOLgMM1cviuv+BM4hNghVWFFnalDkynOy/KWeWLGGkOKGYgPHBKrdFRtD60fJpqv6SoboTicJDR4qGLS3v4E0EJFrhZqXO1eB4QvaG1fM6IsPrYejAXnqFcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdkTi1Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdkTi1Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747009193;
	bh=oGkj6UqhM8tZuejH+ce0iukrz3n2Oetl8vdQgapSOgM=;
	h=To:Subject:From:Date:From;
	b=TdkTi1Ubmb3ZO0SyDoHxC9rzf1Nzljydenn9CfIfisqJsVeL/p+FfW6rernWOHqnV
	 BA/pb4v3Mq4HuNccVv9HvroXIwa8hGl1KcttPc03b6G09BCdq/SFB8Y1Ne4QrRlLJJ
	 T9lY41bmNfgemAmJfCCiqvljqwvCHjpt1A6ZkoM+dP052qwQq2N8ZN6Bo4sK8lUCmj
	 fdLo1Mig1peDJNnkfd8rJtxMTrL7IPu0AYB+7mOEZtE03MxKASzqmLzNIyrV8dmai2
	 GMNp1aiRNmLIid2hYWwlKpeL63+8TXApMfArFxFYKgo1NnPtjm/Y9kRn1KuShRgb42
	 vnzBaz4LDALhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F921C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700919357.17214.15406372248601966336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77091dffd11cf130610f55849a2699b9facdf73a57809ea751fd2c8c32a2390
Date: Mon, 12 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747009193
