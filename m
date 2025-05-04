Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5C8634
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746401994; cv=none; b=BZ48RRCrp5zQpSTDYhoLoCvqa0E/YOoO9x30vMVzJJ+5byVRVtAjFdJVxI1WdI+me3Se8SAH1jmdFR7RzU8yaLr5GZiPdYpEBLE5z94uJ8AzD5g8oHSmG59ZrXIeTyd5hmlZRg1Yh4nnf11mulP87HtWxopyns5r7Y+DIcb5soY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746401994; c=relaxed/simple;
	bh=bnGwjOfxmjRt41WEIkYC36RIeSmRQb+7EqX4xgOL7yU=;
	h=To:Subject:From:Message-Id:Date; b=tbUN9Y/hBvfsofZ9Jqyt3UoN5ED/SZQ19RjL8HjsKEHstMddrB/ntGZkSLa31nM2P4XJwTbEDo19Ims9J7mWlUMleMPZZWmm1Ko4T/G1PEn49kFs1AbeGAHN1q/8ZpFs4c4wY9Oip0qgsDv6OqclOUdjdKXjtac0MRA2IbYi8mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGYXMcbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGYXMcbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C304C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746401993;
	bh=bnGwjOfxmjRt41WEIkYC36RIeSmRQb+7EqX4xgOL7yU=;
	h=To:Subject:From:Date:From;
	b=cGYXMcbLXFQu5NeoROg4eqXCs5p4WwBhwfr2ixyRjx01/wxV34hyKGcTd4XHXPiMs
	 FiVF96nHvxDMvlIZ0UFxg0MSEdRdD9Z1fiqb89KcQ0dNiY4eaEOk4Jca1znF8anqjS
	 FPVf6DmfJONl31nCNgcf26IumhENBprukkn1XxkiH4/db1WxeFgqrcyXeDPYOHkI8J
	 dRP69kU2iLDc9NhcXbIwJd1EEp60F+OsejEWoSqKXv870/VlWAGiIepTDTDlzGTe8p
	 j0XbfuVVPs+pdqXCZPcVDawif6VmKclO3iDoRoBfja9i1Jt/WWmIioI2jiCtb7KV4I
	 KUSu0IywXQyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E998C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640199357.1992.5104297417081864002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e897a7f2e3fa1f330ba911206f22efe546e962ed7af14d8bcb2193121f330fda
Date: Sun, 04 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746401993
