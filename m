Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AB714A4CC
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754278794; cv=none; b=D3KEbMMSTlkPAz2RdtkhV9usCVhYUm0zdS9oRTlvSgnXnwzdqG5vjVWSdkbPVFfLTmXaX/4uarRil5pJWhmsUtMDoOfYoEbehU/k43shDvacXcDcSNgSN1IhQLnRJu5ObU7R2Tty10AvZgP8pCeliWMoBQFebLAgGz2O2sa9kLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754278794; c=relaxed/simple;
	bh=WXEP1mvVuWRMwfLzA36wSsz0VCP/OkjMJnN45nohAGM=;
	h=To:Subject:From:Message-Id:Date; b=eBeJmD+JaoNOybjiTZvBIiZorUB5boGi+nak5rc55/OdFN6Ra6pcBsgG4ahk2qWlI7HFX6K2Hl88msHGCHXRSO3/37kN8qE3hJtjAJBaLD0xDaZX87J2vAyiPUZxZGEp4HMXt6e6TgIatRBjnGQplsKskP6KOnOLTiVUGX78IHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN876KCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN876KCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754278793;
	bh=WXEP1mvVuWRMwfLzA36wSsz0VCP/OkjMJnN45nohAGM=;
	h=To:Subject:From:Date:From;
	b=dN876KCS3CKpsg6p+jcfYi90YJCPtZFnWiBtkSqG7MNaDbS2AnJ2FLct0bTbdCYOA
	 DftFh6+u2iuKdwfDzSkguCPnmp/sjpRff0VMTYD0zq/c3VrrMNeNWtvGbgqyH4m60U
	 fPWQIWW51aZ48qXg3xbBFLcK6gBlmxMbift9eswngxyYg18KKGg//0H9yUKhgH+ghk
	 hqK73AIAQWSf6LCmmJnmslxgXyI48y/JT0wf2MGX8oNPRlZ6C5TiLRNjrx46a9br5V
	 rkJZw3ab5+uzighFXUrWBJFGBE3u2ZCCT9H2OMglhPF/vV7QORe7Rw7lK6A44UJQQs
	 UfuD5X6eAWCNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D8C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427879357.16868.14010748860389355682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d925f99c2927eca5d78a636369b687371215813a6528bd1a11ef4123fbf7d14
Date: Mon, 04 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754278793
