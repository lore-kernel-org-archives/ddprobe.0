Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5629BDA3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756397994; cv=none; b=KrClrItau4vafaIU/McPDuyFN1MgC3Wh6pbS4pxF8RdisxzExnh6XBwIJp167h8XHVN+E7MBd1gOv+ydc5EMZe89hIGv0iZt3EfxEileH5NZXvM2FnwzO1QqWKvQu/65STFdfEEW4ZvwgPUt9mniODqdcwi6zxYZJF7ZCndrHi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756397994; c=relaxed/simple;
	bh=nBcwakJ7KmTVfLCRzm/Y4tLv1Q/ZipHAa6xSERqKbVI=;
	h=To:Subject:From:Message-Id:Date; b=CxTMDp/Tn8gNStkchB5Tu/5NbyTAW2hsMzO7EGj9iUKrnh47QKBwbd9nakHjSztNaGi8dKDfy6+yH+gsWtbJE+f50zxqivzjr4nGhEyeyXTuNfuwJkZIGT7InpjVTr3wy9Z8Re2M3NbRouvKVyOf3Bj7++fmhGsMX1/rnkEyEcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+mhMSDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+mhMSDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3849C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756397993;
	bh=nBcwakJ7KmTVfLCRzm/Y4tLv1Q/ZipHAa6xSERqKbVI=;
	h=To:Subject:From:Date:From;
	b=X+mhMSDx7xV+0gmdkgPR4JrwJNhlIG4B4+/l+9zJNaq7OdKHRtUXJfdM46plYqVqp
	 CREUHvGfjvagkSv/h5/mMVsdFIDQuC3aFvnolZdewetsvZrxPZmcLzUOX9FqL/aXbk
	 GpDheDHpXPAQSoePyPhmB0aVZ6aBoLxIZ3AyPMzrx5ZbzZN0RN4M1wiyd+CEeIvtoC
	 uY7heVoROhNICzqfahnwxEKZJYabloDNU5jZ1e9YOrhn66C63Sqms6lsUtTdxK72PU
	 CseDHgIZY7Yi0ORNi+9jHqrL8lGmaNXt08prfd9cTjFQIKVLykcFNXk1dbBBRY3bik
	 eExOaA82m7Fhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92471C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639799359.21957.3721356844027544772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73dfc99cbff2e488e313690330f94e8ff3c5c9ad39903c302d6dc893cbefb28
Date: Thu, 28 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756397993
