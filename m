Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FEF1537DA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748089794; cv=none; b=r24KJRezho5bch8wxtgnPpwX4IQ75TH2oXDm3h3IRRobDTg09keR9T1O2moXfSnAEPLeWAtpr6kkocqkNO5lffxur2hjOwx6S924ZJ9E1OHlrLx5xVtJ03ijGvKXgrsxMcBZbUaU6XN4J9tqBH5/UDGCb++BTY5WhxUlj6l3/5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748089794; c=relaxed/simple;
	bh=88Q+IOjFMg8b+X3NW566yycgVOgp5yaA0DV9u8ok+fA=;
	h=To:Subject:From:Message-Id:Date; b=C6P7ucpoAyHx8/VTQ2xwqapyzsxY2WpHn4i09nIqinYKF7C79p23s6qa77HPjVb6K13mDnAEBRNmxGmwKTozkPmshBXmMUR5Af+16RhfkRoZY45XhXnNgQGYRS2twqe72+Qd5JrXdybs0UU5SgwRWVLzfvxnq/stSNILNJSljf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj1MyjY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj1MyjY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB0AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748089793;
	bh=88Q+IOjFMg8b+X3NW566yycgVOgp5yaA0DV9u8ok+fA=;
	h=To:Subject:From:Date:From;
	b=Mj1MyjY3qjhR4DytF4ja5O3XHwuPLTS19odY7+u7pEdF9I8r5pZ+ImuC6ikZm2ryo
	 M3NkgbrrNHz4LsxKVTmQ+d6G2v/WdK/2V6MX3xpFnd7tstznb1ncejFhToH/CAr4TD
	 BUKvZo7ix14asM7nOeAOtvTKXZ5KUo9+Fb/vPh1jU8wXbbl/ra4o0VuG3ejyK+ArVt
	 ozE6th88n6hiQPhSNzXASfm/9Mr1FggLxTzp5MhmVTspLOo2JvDNPNp/oRErpsuRyL
	 LecyW1/ruEkvyiV6JkfrkyS6IoUcFgT+hN1kx2mquNlpfy7KjAgwi+lVdR5z+p70lz
	 RXgoXsLP0QbnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983BDC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808979359.17096.8953989973411973305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e6a2bb72a98478973e2a14c3668872fddbd5c033069716348f7f20792a4c45
Date: Sat, 24 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748089793
