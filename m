Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267FE22A4D8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762176594; cv=none; b=YGFFI+PqMG6BL9BIVvAH5m7us0mdvHDGAuYkCzLOLGqQtMSJsHJ9xjSUQNaXlftCLWgXJfi4xzZftNqQpoY5DlUB5kxNqpRqhNXmMkVZ2MTQRKeD3skBgxEXQeZZtfiIpJ74nlBauqUqs2mH5mQC98D14cY9HPmbjXcdysYvmn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762176594; c=relaxed/simple;
	bh=YuEtEDxWyfqUPVxpO7FkVfI6/K+dXUUak2dZ6kpmf48=;
	h=To:Subject:From:Message-Id:Date; b=g3m36MMKDN2iWN6Owb+fRs8fzE89tK6GZfWAjaNaoiKVf67vmyA0SZrMwzbI21c5EBObmVK6RZmMtk+myMPDLSdNg40GJaP38X1MYWPJFGqw61P9lLJO/yVeotLhe2E3XJPdB238QK8fZ1xVn8RziElrdLJBGqsG5s5VXtHtrYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYMZc3++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYMZc3++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5815C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762176593;
	bh=YuEtEDxWyfqUPVxpO7FkVfI6/K+dXUUak2dZ6kpmf48=;
	h=To:Subject:From:Date:From;
	b=CYMZc3++6lPOWFG2bYSqr+0oxknDHLI9R7u/WCJAssrk3l0Ubo7KhPtXDSPotgZ4f
	 r1M6+UzC9YiFD98HtuRRVQJIo9wOT4v9TFvv4e0Mzk1OgsRde37XgyEBKOMA5dZgMx
	 eD74fF636IY9Xq17kDZNPUgP4ldG7WUwVfTv0f2bCRr6uxG3SeX1a/BufdnY1R/HeX
	 DAMUzUz1+jlXV1v9lVdVdwJkAEdNpBaN9QchCSIHQzSvUTt5VWVzyVTTh90MpLQGDT
	 Huz6r9PtBUCrBsf1xH96MTEmIPWSKPBiHIxJxJDio10YH/pvo9IcDRn3yODj8Yklon
	 twMZBPgByIaCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CADCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217659358.20665.16265732525344030975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b031d03095001e5ba7171ef6ba5d5472a7ce5c49f109ab93a472d4648dc8041d
Date: Mon, 03 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762176593
