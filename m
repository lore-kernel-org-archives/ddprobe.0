Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E127253359
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771509894; cv=none; b=QvRaWzIUZW6v0PRAphzrzSF7O3kQm7wN3YDvy0zP66P8yM2RFibNWfGnTdgqGOR5MrOzYwRZVn757z8gk2N5HohHkDS/nHHB3Q7/RxNpTmDxDXCey+GhJ40DCXQcTkM2kgVo+ozMJg7NnjyzOYyz3d3iAZTruahync1LO49Qyy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771509894; c=relaxed/simple;
	bh=uPU7VYGaCNRgnkXqknU9gZbJviroNTQWrtDYnVr/XBQ=;
	h=To:Subject:From:Message-Id:Date; b=KpGTXShXMhiAcMIZXmoR/Zlr2vOyXGwPqZQ7GD2vMovz4hAjrwRDbT5tfxyKZjB29rxxGCjbEHhRk7Sh+wGH8wdqx0Am55/KAtuS7p+BUBv5IMurN9x1c1qKWAKG5MH5XHBcAKMOiQfagUJroAK/LWVnBg/fZ8K26807njKtZ10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLaeMG1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLaeMG1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771509893;
	bh=uPU7VYGaCNRgnkXqknU9gZbJviroNTQWrtDYnVr/XBQ=;
	h=To:Subject:From:Date:From;
	b=gLaeMG1lQsTlSW96IUhfiNvFe3x2jSDgQVDXmxeaAo+jUW1RGYLzNatD/3czxwI0t
	 XF4srXSAefmSSKzM+ftIDExTPm4r66yJljMYaK3edPr984956ykumkWxhemDeombZp
	 zEpl7mYehCk0bLqKYpc2RtLZgCW5MfLIHx5UplLa1yQfOtFUALUoFJItFU9WTvp8p8
	 Pm+9QzFCYdTUncTXwgRhMuIdx5io5SEUV3kJ1WVd1mw+zoRuH6CjvPzTI/ygwZfSur
	 oc5LxmJv1B44H+Rli5T/Z3BNttfAbk8E/R/rUkUwFAkWVov9rDxvpzIr+VliRllzyn
	 3hZfsO/KA4TOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC1E9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150989360.12981.2744809553517370971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e33c196aef2882df16e2eef64f880ab002e16c69cf07617280b6574fa9427f6
Date: Thu, 19 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771509893
