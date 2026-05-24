Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7F225A2DD
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779591754; cv=none; b=tTrid8lecr5C5tyzz/EdXhxROOwtov/6ZLVyNrXugkAfHZ5QoiCEdSDsCKlM5r2eKB0qq8+mFbfZivNIYGClYxdevF5WTBVPp4C19vyXsueS1w3FF2rvyUBE1PzcOFfHF1Ex+GF9EAZ83HNHVNST13LcZwyZ6fcY9WlcRTtin4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779591754; c=relaxed/simple;
	bh=PAenZ8qoVlZecEzirkOfZrSA+5sh6ZzI5DY5a5njKoc=;
	h=To:Subject:From:Message-Id:Date; b=Qk8VPOPrFG1l3S+hgW74R/TFzZUp00a249G144Yyf2YvDqsTLEtC5Y1vL5q9EraVPYLuRrmkIe09FlfbbkRrBY1dJmeg0BmhN5lGhcaz4sOtnAtanJfqMOL5U/GdfQMAwjtddfrWFZ/RZbhxYXcz1f4IXoZouwAb+PXXAwEj78M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9F3QEJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9F3QEJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DC9C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779591753;
	bh=PAenZ8qoVlZecEzirkOfZrSA+5sh6ZzI5DY5a5njKoc=;
	h=To:Subject:From:Date:From;
	b=h9F3QEJt9ruzdxIbVXVSWWEEXnwX0uuMBIq4eMuOkybzgnqtdjPyY66HKIQxIEMSB
	 dqWdoh/qRdwUHMtoHgGa1YWWYBycWiXNQQNIgniAZOkqZxRrg5JsOmcrabZ2SnxIyY
	 8/JOCJZg8b+8mPq4fcdhzAMeOlxKcnAkDjai/ffNB4nxtJMBP1htAhthz8k9J/Nj/X
	 VNDf7d9tJFIZRT0hj4ldJqa1FpYpu+fmY+Y8Isney/k2uMfRrzsfwtlyYYczdwAC3t
	 isOEzvSP4zMKBevLcDpCijpfN6iRKbUq/H2G92qCjiJKx9ftvePTprwuAzPy+Bm+08
	 SZUkMEB6+QzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD04CD5BB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959175369.12298.2048952942520484817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5438b66b2f433794b6f0929d4c186d9a8cc11b81363940f42ef1b9d92679cdfd
Date: Sun, 24 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779591753
