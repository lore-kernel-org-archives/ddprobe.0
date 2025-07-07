Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D3922127A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751908795; cv=none; b=R99IbFoatQ44IEK791L3bzZEp9hklFhVr0II9r1gw1PWVOtXWNBk3uEf0o4lTMzZfX5BGbfVbA/FbrpAdToRFJOeUaL6z2znRS/tx6HGKp5Gtiv2trZtSD7uQDfrXXAAcrQ0ZbIo5nMbSR0fwz08ob/xRiwGgxfaqgQZ22RSMJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751908795; c=relaxed/simple;
	bh=C7jQIaWdsFfZllGEHNIq+rVfZkPd3p6nD5H2HwnTmms=;
	h=To:Subject:From:Message-Id:Date; b=S4MH11Ykwc61/r6CXsMxPD6+24ksVl/koHw0prbtBQESzdUZ9VnffEY/EBYLZ9o7MXaWQe9ABhFZrZ19BhJSDezYsnEzluVDC386EQ8TL9J+7yD+PQcjnHf/gcy0OBh6fhjh7MlLNEbTs3IXKwIP/FH/tZxj1Wrgw4+tr7QvSa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVHwsje3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVHwsje3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E75FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751908793;
	bh=C7jQIaWdsFfZllGEHNIq+rVfZkPd3p6nD5H2HwnTmms=;
	h=To:Subject:From:Date:From;
	b=IVHwsje3t9Gj2kw1Tg1QJSeFXndHwsPxfWQZ0oA0QDp70zFI2K48e2kix/tizuyes
	 BUdKVWhzyvYoCP8PO88ArsBgwhVTrko5UFpNEl50VcrQkA0z+kXVt8ANWb2fHS81TX
	 iNeoLXWKkpy3Ysoqo9SxjvC1+Rs1lvWWih87pF31AhjY6Z8QLmTPmXusDu3kNv5MbF
	 OX80kgxWKS8ngBLon6FLdyqVcwYQyUMEG+yEZ7burMauoYlMBnmv4bVtZp/p4VVd9v
	 n+cSJpNgQPDO7LJlx+W5/59HdRJAnBpcc9jszwVdiRlr3jzAnIXRj5sWmts+ugHkg+
	 OpwnvpmUtZvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA57C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190879357.29787.471315608363409740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798a6f4d4d1b180378ccfccd547eea7aedd082e69e52efd04094787eaaa2aba2
Date: Mon, 07 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751908793
