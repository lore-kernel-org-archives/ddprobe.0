Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2443C207A0B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764627774; cv=none; b=osjVwn7YxIqH76AW95oyG6wvb+UxIJG9VbRjuEy8WxOJvPCeE7bFZA3eDTL2kQB7+ehg6lbasQHn6dZ8kVUlCIDuPE+IrcfEQe+w/QyCUYNxqpu0Vjl4VSyO0xbFf7x/91BFuy7fXpe8WpAFQ06ThJKMnBRoxmOe0sAn5349oWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764627774; c=relaxed/simple;
	bh=0DZmf4F3mJZMARRF1f9dgGJRbaeQF03Ib0M+Mr/bBZQ=;
	h=To:Subject:From:Message-Id:Date; b=o8QDeVTXDp+Z6/3IW5eAEJOSmczgk8r05ttW5WraMURQ1CsvCaeaeJhWLO+lyq40ml3uotL6WO8QuhhXtunzh7VcgNYzlT0rLf9NlOZtl3uLAoeAlAGxF0kOH5KmN42DwYV3pD/EV+l9+0p3AnH3Brqo1BYrjeBN0im411qUz2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7JCcqA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7JCcqA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764627773;
	bh=0DZmf4F3mJZMARRF1f9dgGJRbaeQF03Ib0M+Mr/bBZQ=;
	h=To:Subject:From:Date:From;
	b=t7JCcqA2k9krEUsnj0BxPBQJFn5fmjus0X5mJmYospIS8teWs1elFGvJkuEHG5w8W
	 fHisZ1ZCUStottteBie2HNmtK/p70BpdMO5ewPWEJOkrphogvr9Z3HQejkv3yZEubX
	 7fG+8DD9u97DbfiCd1VRHPnKZpaNWuM36cfmZJO79pp4gQwlFJNU5ZeCXjd5KWWmfM
	 tm1f+jMfOf8Xh46At770o0cNv8XjPPHFMeZpeSrkHlNUhjzT5Z/cf/OMZG7Hctmuhz
	 3B9jjPsXCqVZ8wYbgYPSQgKTa+fjts97Vlu76hWjR1xGO71sbpHfhmJ6movFKQRDml
	 mi50CQhT6AG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91587D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462777358.10180.15306119860175680509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ed6af3c5b2ed9eca70e625c055bc6f16db843cec22ec87958da7372f33490b
Date: Mon, 01 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764627773
