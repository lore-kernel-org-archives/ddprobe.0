Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3725017578
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746395995; cv=none; b=AHc4SjTGci1V/cWw+w7NpS2JtMQp/O1ZmP9HlNCJwqEKqQhzyysknUIbA/25Tv664LkJDvD7X4wSYESDNLb4rkRZPRb3rMg01caILZKXt3VHZ8tVXszzqEhEDkTEvtf4eYnTaa9JOzTZM4Z6V8iEmdaji8eCkN1/t0AEv1UoQRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746395995; c=relaxed/simple;
	bh=FkgZJuuBXQa1uPDxm9cygvw+10BfcE4AKLogGWWUYc0=;
	h=To:Subject:From:Message-Id:Date; b=vFeInObJdLjpkB0urp9e9/4oyKtJP+etCnvEpxJnr3jJ99AxGOsBYdhetcki43m5xJLu8dCa+VDPs3PT5aYVx03k0FR1W6s6/ty6bq8HXajXHp7L1/wzAX0OlrSdkMWWIXD30e/0NyCnQAP/+k/xoZ9MFChCBP39wfG6QIlZ2Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4KcAFXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4KcAFXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3198C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746395993;
	bh=FkgZJuuBXQa1uPDxm9cygvw+10BfcE4AKLogGWWUYc0=;
	h=To:Subject:From:Date:From;
	b=f4KcAFXWwUfRs7gSaQJ6cMweFlEAjyACV98OUFKwg+SG+VeyUPJU2CX1MlQI3PttB
	 nEJltJAD7A386dRfzo73CEmxbmZ9tl47PsxnfXBog7ZrKxghzZSgamx2GoJC68vOH1
	 t7lM8oHGmjmG9gUVyKi3iUq/rJO3wbVOLNc5G+jh/exXu4J7dd8wYLIVTtHgXtRPTD
	 EHD7Nry9cPm5k6/YgDN0g+ieH+cogQAC0Ut5BP/a90Cjg1tnfxlE7Xpu5syetnC1Vm
	 1/JQdkfGlWWZBgfIaFi3F5SM/ZiOrGqalXFCZVdDQCcYaLgO16fDnCcFYWp/8ziuLv
	 +jdC4K1VajD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC20C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639599357.12813.13289671934755703975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825833f730fcd7ed7658874b5753e3ccf8adcc7011a8173eee670afdc0bbe850
Date: Sun, 04 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746395993
