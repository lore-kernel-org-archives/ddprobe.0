Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73350272803
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786156234; cv=none; b=Khgnp5MaIWxzcbbX5I7kLLJzjnHwNCjFiKdWhJEn5KmZ+Ejrqh9/hRBujaJ/gx/X3Ijb9hqas+yVmaQR0zD5gguY2moDzK2rwueGSAeD2R8aD471GXD14AtsW1rvcaxWT+QZgOoR2wKlyyArwpBTlBMFYueUdXgTTZmlsoJxDNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786156234; c=relaxed/simple;
	bh=f3ZvUNiN5V9Q89M8aD7QtBC4BAW7vZT1NKo3bz23l0c=;
	h=To:Subject:From:Message-Id:Date; b=ihwFVF6iVBWbNGmn9GzRCiZsF6ScYRSdHh1hQsQjpnrF8arlZENL7MyQpwiy1gAnTMt/HItW7/Jt9LdBStKaGYztAUCtLkrz/c4o7kJTpTEjQJ/3l/0IrwuCgb5ugTvi+SGqa19j4FUjJuOZVWIqVwftjI2Kis4tJG49V8lB51o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKiO5pzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKiO5pzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC23C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786156233;
	bh=f3ZvUNiN5V9Q89M8aD7QtBC4BAW7vZT1NKo3bz23l0c=;
	h=To:Subject:From:Date:From;
	b=KKiO5pzFq6HZz9v299j1HpbJ8mRamPJvmTPJ3bvtDOx9hQsjWSL4AHQQIRcDnG7v1
	 n+EIWckKs/lrO7kxew0nmNN7MQ2kVkAxxWCDkmTdjNMz3ZfVTwUN3XtYZNs+Hv/WnN
	 zD4N4/NamfBojbXeiurVkddgEIHoWipmf9qoQZrTTNIPGxXFPbVPDvMMdQCQJOYZPs
	 cEj0mZxyNbV7KmLYRKis+Rdjs+3I//K035dT6NWmhl3qaqXkmvec7R8BNR75VLE50G
	 5c0JnNC5GDsbdKhNrVzcSEylp/rDfcmzNVTMLkN6sMog9sRJRotlHMlJfaXoj7BfZ2
	 Uj4+daevWfzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033CC5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615623369.9536.2782219164804907628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7b52cdce1401b6bded5e619bc80bb9ba8f8f00e6695d528c254084dda0941c
Date: Sat, 08 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786156233
