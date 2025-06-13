Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4722AE6D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749855594; cv=none; b=d5WUifUiJ3lguHx7wDiwI9QhWPGzZl+Rfs2bAnnOtbHkzYoftHQacOAwUlz5Glw5WOjJCerDM7mHnEat5XcDd4/7VHmBvKHLdLalDadGMV6PJAPPwqbbj5b3LmP5II983nPhM0DXIiIoiA3GDBhl3lGbe/kWNU/+23rXc3HWfTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749855594; c=relaxed/simple;
	bh=r9z2S7zSqwgpevt+tu5Yiy/8jL3NjNmDBTzOOkB9kpY=;
	h=To:Subject:From:Message-Id:Date; b=YflNChyrZW/aj+QIzTE76VuJujWDpY/9337P6JYX+6CUtuK9qFJUWztTIIrl4MpAzRh8fvrELktB84Ioe0aUAOEDB7wdNvhD3+WN4jr4hkrrKuDv39C0gSkk6hQ+y/897VBYZW/1e0WtAXex2/BhE+zUvYEBbfAl7abfgJ60BEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsLg2sTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsLg2sTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E112C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749855593;
	bh=r9z2S7zSqwgpevt+tu5Yiy/8jL3NjNmDBTzOOkB9kpY=;
	h=To:Subject:From:Date:From;
	b=WsLg2sTdEjWhOx24qo+belM0uaNzRFzifth2ndBfzsFvCH7n0UNgtu/Uyc7wbdUc8
	 v2JjWZcOTP4g1t6GAhLLSXEBOukKsjoRff6XbfRsql1yOSbtsYnewdi/m4iZjRQUWt
	 HqalsgQcOdiMz2NdrgEz9LDg3NOIxLQAChjl2EsXVRxw0mtxhY7GshJNRmxiCzOBDR
	 tljyqg4OxTNMRSbJTTJFMOKCmGaFoGHTMLO50jxKrEWZVUfh9jaUoZ9xdHQ3qT69iT
	 pbFUjsG27/064CiUICRWWqBkaYw7YPGMcuU+lVe5YzkiJ6ZJVMtg/jj9O2N4nHe9ds
	 Owem0KGiYW11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3AC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985559357.22238.18090651671178163425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4f7aefc2e7fb6b682dec8fe5ce5e308b74f8098326585b6d9c013ae7d10580
Date: Fri, 13 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749855593
