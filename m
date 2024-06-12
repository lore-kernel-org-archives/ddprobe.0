Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4C316D4E8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718186903; cv=none; b=A+7HgD8UTFlIz/1oIot4SaXWkgAVLQqUvzk2Tlw0WXNLOIlSnC2OxsYidy2U+1PHBJXuKRsFKJYOfJydPM1lq7ou/TG+h4XsyeMDS2VzohIpk5qY5L0r9mbsXLk6kkvAK8EUoRAdNnMVHiE3UI9xftKKyFDDjii7vw0TOKLjYts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718186903; c=relaxed/simple;
	bh=CKFL7qRxEU2CAFR8w358Q6b7B+Mvsbk5WqqQXU1qc5E=;
	h=To:Subject:From:Message-Id:Date; b=jos6kGLjUgodwE9sJ1I6dGKRuOc5m8FgQSKMAmsXsDmErMRiJSjWujFwIcvg3bpLSdw03B+OY8PjR1DllMtsoEuROD0qbES87+zh44479rk441fqql07y7/tp3OP3QiuSWvzX5dRkpby71DgTF/LjWV95kw0O8A5Ome+0WUfK9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0aSiMaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0aSiMaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39DCC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718186902;
	bh=CKFL7qRxEU2CAFR8w358Q6b7B+Mvsbk5WqqQXU1qc5E=;
	h=To:Subject:From:Date:From;
	b=K0aSiMaz0toE4QLLJ5f6hjXr8Q62dwR61HqfxLTY8q/9EgGl9VunsOqYbHWLc5klU
	 K0JKTQ0XfN7gEneeAlI9ipFczrzq/eencgJWRuHQhVR/nqlJhhk/kHSb1UvoDVrS2E
	 3shFUpWxNOsAfAqLjn02kKNgA6hrMVkSoEtP7YKVWe3epWS9NiUihROu1O5pHiib5E
	 5+Pk3D2rxop3Gdu/ooEUK7xQRV//O/aeP8KVlZHjwHe83KqhTSRVQCjhJuiPogvPW9
	 C7SvTHXRiylXEhvGnHOPXIq/I5GYd0LM6HgYk7b8/Rw1DvZ1MN/6n897t6TzbmTA8R
	 cKLLBFTlvyy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB003C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818690281.16107.10357974188408114836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fc26087e95742f4a6d3e703f12a48903d2f99ef000ba2e7b3e34e76f48c2f4
Date: Wed, 12 Jun 2024 10:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718186902
