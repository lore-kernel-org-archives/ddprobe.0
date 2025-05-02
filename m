Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4057F218E96
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746224995; cv=none; b=i2RUccnTI2Kz2t3agGA8ozhK15LeD1lOlwL7w377u6fMYcb/72nVubNxrjlExPLpsWHTZl+DJLbRi5NpwbBa+NHrbh0DOzxbQnhRpr77vwmX1MGzk0Vr0Cuwy0DgwM+g/WNlcfUd9m7WRRmI6cdFropx0ReBpZoKD7NnZ//BYNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746224995; c=relaxed/simple;
	bh=ng5GAmQD/54LRaQCcxgpk9F1ll1ewDgwtr03wGdMXag=;
	h=To:Subject:From:Message-Id:Date; b=XLTRjpADv8pGoOAUFBgFgnttiYQSLot8gOgP1qJItpaFwtjrkyjPqNaCDTyJkcD7qFME9oCE0qpQa2yhxghpPkSNzuZKp8T4rOyre1fwcwt/ijB8OO5ahlrUSwNMGKlnKud8OVLDlMSIoYgekyo8UKMP6bybqezLScfJSg1Pe/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LByWLyxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LByWLyxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746224993;
	bh=ng5GAmQD/54LRaQCcxgpk9F1ll1ewDgwtr03wGdMXag=;
	h=To:Subject:From:Date:From;
	b=LByWLyxBDaz2L8eDs7VrTqMnNqAHNOTkxb+tBuLiVWed40Aw1Qru0P6WgR3HFUPbN
	 v7aLNuVcLgAT4fwsueHnnhVADmEPLuObxo41G6ijwLpDXdhgUCdGlxx7PSk0xW18yb
	 YUwx7eHWUyKBGPBorjUfziq9uFMQby6NeYuLYQdlFeOyAEGE1i99gzCj1uR0eDQny1
	 y5vRQGUp4xghPcYxGHAbyP/iIYaQqsvVwGFXEUGu9VaN704hlvTqjtVvTeed5G8X4Q
	 foeAw80p8RdD/KVDXahKSlYsFnB+WBDolFa/xmqNKLi7vtdnCun/qan7D0miATLRlU
	 1jru+DEV0sgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54DC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622499357.9520.7389777560545918926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5a53e88f76737f4f2ffae3f5ec9617f05ffdd66b0a3c7609fada921f1cca29
Date: Fri, 02 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746224993
