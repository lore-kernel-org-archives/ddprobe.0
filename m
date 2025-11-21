Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A533126A3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763706114; cv=none; b=lUdcBH1HAl5r2eokVvJdjUR7ORVujvIWScWv6kGngOc8LlxwQmDhSCQx4LMw30evSxPskLPJLKHfgSj8ODY8TKPZ2zpySyK5cs9V9l1EpIQn0DCk3QuHF9wev7FJ1Wnvp2vHcCWz6yFNBkNyYav6f89s4hQ7aaWnx8tl+Ydc77w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763706114; c=relaxed/simple;
	bh=acte3xryElixvbyz37WjjiUKrl6n8HPUCeOto7vy9n0=;
	h=To:Subject:From:Message-Id:Date; b=hT5bcst/RokRWc7oe0nuZBtFqHmdsgH0z1C0cWdabB5uj7cAl7PA/Hvw+aN4qwtTJSUQQgoIwTK3GyX54VysS3PC2VSXf5jpQihscGoRO1sKQDCRGopuhmvbyfaW7Oq/7yv90SYZS0CPCYAXS6EE0ieUAj2B7tx1h9ul9CWQNtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StJeTBAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StJeTBAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763706113;
	bh=acte3xryElixvbyz37WjjiUKrl6n8HPUCeOto7vy9n0=;
	h=To:Subject:From:Date:From;
	b=StJeTBARzdnT9iImdpTI4Ks2zJYvVLH8IJpYp42XuQS2tnZMGumbD0pvAgZXhmQH6
	 a8TCUx4I9lt133Zgxc8mzb1gyWppEMvf0Q3G+zOSV78BxczPti3iaJCeYhRhgSx9Pm
	 bqyMDlVwh67gdEWO1Y16zD0+xF5Tc1fd/McAZ2nm/buEw1vwezS11dJBVR4514Y05J
	 JgtsI2d14RigvkRgLHv9c38/1EuE5kTOS7EOUJDRYs6I6fHryqeDKAQK5E1mvobYJw
	 88ciTxf7d6itfuuZSPjs1Aw/ZwkazSzi5TXdkeSw1QDdnPLZEVB+iLcXP4bE6eUuFC
	 xvQu+2l8z5x1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D4CFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370611358.18711.6624411103045202854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623647164aae541bbe6de951212a2eaceeb835dff22cc3c9dc88b314c4ddbded
Date: Fri, 21 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763706113
