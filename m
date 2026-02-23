Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10A21770A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845294; cv=none; b=DN0QT9flJALy7/nTOF06/iz5kOsBmCKcbXWrf852CIo1KpSCiqsOMWfRXyW+iqGP2FxylM4ba65LBmIBjwroJbtZ/6ZBCda9b7T96i5dCpOOB0Lp7hR5WnnXBd1D/A8tYnMauhIXf40N+RNOso+gYH64Z6myz/YWBJE9BkLIPRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845294; c=relaxed/simple;
	bh=WVeKtB9SX5KhMirc6TDP7gLiBvXANjVe1IzilOYAJmo=;
	h=To:Subject:From:Message-Id:Date; b=ouyi2HrWvqqh3p8/pDFbY65ucPyHh5lcViCqjGc0F4CQSPv5rzr/JDTu8/3kFMdHPN8C5Vvd7f1b8HHJnfZtdwDHCj39nFRCDOanw6vPgjZl5rCqD3MBVeaZnAkmbxRB3rGzN19xg8oPE2Z6Gb+iZNvWfr9B5QHJYKUDNrfFr/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/6No/Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/6No/Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A362EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771845293;
	bh=WVeKtB9SX5KhMirc6TDP7gLiBvXANjVe1IzilOYAJmo=;
	h=To:Subject:From:Date:From;
	b=t/6No/Pdc6Kdia7r+o500g8mZksehivp69SipjzO8e1hGF18FP9Gzz7EpTSXapC0N
	 TPULhfofT7fXkuco+VUClypE/VUlet12/0NkhjbV+W7h1/FV87ICeQ+sSsvxvOewTr
	 nxlurNqMWAHogj8mF5guUazG2pcz7GA0TRDXWbOnPkRXgx/3R6LGiULmcTZ2HIvyB8
	 /0s+UVhViXoM/XpkibEDm/6DpgwH1spGaTO9BTz92iZvcD6iobpETs6tjPCj+k1hAs
	 mEgIcOqzyF0gVuouysV8mJSd9uFhxNNg+edlUbeLIkbH/KUKHMb5HllGTxFNDJfSLf
	 oaOcJ3G/MfPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A26EA4FAE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184529359.3252.15225548959895476688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d693ccada30e6cc47f43e6959a05386bfaf91e4271a1170afa768c1442ff0c53
Date: Mon, 23 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771845293
