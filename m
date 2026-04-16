Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE6834CDD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776304054; cv=none; b=Ik8P0hrDKhvCY3/2kPnIYlrXAtKdL+9EgVl+bwkyKLJ0vaBA834TLzGaaNeFxquCY4Kkggf8+D0JBu9UytCgaZA92ryit8v/18g+/zooIssNfSa4Kof789hvFGbgNEHFnul9t9rUc/QweTE6BTni6yKMlTeIqSFneZwfpv7pWfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776304054; c=relaxed/simple;
	bh=b+eeKacKJxyLg4P6diN9FAPL5j4rlT7P2B82g7w+IPw=;
	h=To:Subject:From:Message-Id:Date; b=VwFAe0Sjy8NyM4ftyz5LlLlZ9q63AnuSp5suSNhdBDYSA+1/8PrYRxFxJPsEjAFr4guAkRkcYsR0VINLjlAImzj4wuK8tw5N+qjWXVOqmcJ9BE9b2I49JuvleyqMQdOxdZDuqVIiU23kevA8n9nnxyAMypIXU02hScmVP45IbEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBIjKyy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBIjKyy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5D1C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776304053;
	bh=b+eeKacKJxyLg4P6diN9FAPL5j4rlT7P2B82g7w+IPw=;
	h=To:Subject:From:Date:From;
	b=ZBIjKyy6llcqLytrNSuCaSuf8+KDJ6kJOtomZfn18s5Y0ANC6oaceBr1HIzLq5qN+
	 oVn33j03SWA6ODbJLU1t5zJYfmmmIPqny/vobjap9F3RabGfgqca4PpZkW2LmRFVUW
	 6BzsmpIYeQY+nf0T6DaWRSztgDJY8BlehoZLZaC+fovmBzRYu+SGnV5oadO1flHDHI
	 Zyh3C6WQqyoc6ywQawfipIK/HX1IVDW0K0DUFDIFg6iwW16bjEjrgoq65e7GxRacX4
	 hFCiqPY9WaZdJR+dveiKSMRR2AYtQfABmrFK/o8eQ1msW3Ab2744ZWSILJQ1qOo6NZ
	 isHT7lPIlIYQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FFF433D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630405369.19831.17998022885358929959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5c332d5421447d443804a716ac0a982b48bd9ed479a513db9f1cde605cfc1c
Date: Thu, 16 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776304053
