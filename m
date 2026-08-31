Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A56413793
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788181234; cv=none; b=F2Gepcz9NlJMnVwEPpW/Iky0bvXG349frcvc5xEVsQH8LiBalEU+va4mq7D2VvXKm8VNSdkh+EK/Oa6OsjZPY1EvmTugxUeY3a5atPCKNbxEIQrwE2EmdEWFjwiVQ84AowhxoqE48XPYi1HplIuVBWhj6tW0l5kuADI2raWiMYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788181234; c=relaxed/simple;
	bh=kPN1tXQYxlMC4T5WTMr2hMQmTlIuAyiO+eg1aZmSt6A=;
	h=To:Subject:From:Message-Id:Date; b=CcDgWe9b4TsXr60CEvAWVycQwEVBB2N3GVkS0wLOiEyukDnnSNvsJ4eVcUToY3vIR7jPKzF6yQCznvB3kmmoORdCU8o6B1VuM+TKdyiH1CpLZ5L7qqnz7v4CzDyFP7fIy2/HMdFo4vl30b9PIXdoAbVpMm+4d8Riul0UPG259PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvR+wmQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvR+wmQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD8FC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788181233;
	bh=kPN1tXQYxlMC4T5WTMr2hMQmTlIuAyiO+eg1aZmSt6A=;
	h=To:Subject:From:Date:From;
	b=cvR+wmQSoH+vw5briOS8tFCMNcPafAutZQfqSn3+ng7pIHNCdFpTT2kFf46kpPw+t
	 rnlUOpmaRLoKr4VEiyyBl+BmXuHHRl5N47/jqC5DsxAgagLqO7qx6CJfUo2JNrtpCK
	 Lzllqb6PR3RG3zha6rX8udVmFpQHHovv63Ovlmj0kH9CLWohn0nZITi8cvTIV4cu/8
	 rG43iI6J2uQKRL/mTXzZw8K5ttkWKHXLJMCxjhch0t29Yz8FSxBohRiG4qAP7BPrdD
	 DxAU05vIo2sz7QTEBGg/9SYEuDhVa6kVTduMu9EWumWzjbdIcQetizMh0TDNgr6jIJ
	 ScmgMhMJnPFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF6C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818123368.25644.17223923208722027854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26adca86ba9e3592a166468cf8e0978bcd1961a37c4a3e2681fb7a7271959e2
Date: Mon, 31 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788181233
