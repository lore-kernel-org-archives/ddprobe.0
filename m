Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454C81E521
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737906354; cv=none; b=tQWKXerSWXMXfPxUL9dnHFb/491fTSamTcNO6j/AI+pvfnpoQz0cJ8xJNEM4C8VE7jpGSEJ+nXjdoJzT8n96rd+7bPIozJV9JMWendiz4rtMT6YeGQ49tXS+O/IRB5jblyTzFOpei/0A0ZqL8xKsd0CdfiqbwnuZGub/X1A3Mzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737906354; c=relaxed/simple;
	bh=0COqvcqoa7Yk8XAJG7M+FX+MGbborGbLE3KX3h0Bhdg=;
	h=To:Subject:From:Message-Id:Date; b=GmVNNY/aHkjZMK8hPgHH4LADVxivF5BpOiNhQBBRqXbKaAJ3MphzcbOkMOLErAfBmd/bd3+7LACjLweXLafQbyzzqPX0X330X/72oRTYz4ufOZdtKEX6OHcaPvJSaJywFvgaHJirYpGzdGWo4McO8VtyCLAp104iE43e1qFgQEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDAGvqKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDAGvqKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C5BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737906353;
	bh=0COqvcqoa7Yk8XAJG7M+FX+MGbborGbLE3KX3h0Bhdg=;
	h=To:Subject:From:Date:From;
	b=KDAGvqKJmvi7daISDcwlOAzelBxCy0EzXjc8JlNPePPVpsu/Ie16ISXCGKzjBQpV9
	 x9uXsKiPpQsNVQbFdB4KQBIw1qrQy1+y+U7vXhHEWDtHOHmGKRnLS1GzmcT11HnrG0
	 3oD6UXSwXSA/XSsLNB+U4eY8mTfvvGa7sRPdk0aDtyWO9VPaYmvrMhJkzlxrIRrOLH
	 oFGZbf9/hJFOOwyMfEUkO0gt9MOkF/NE0Lb03AZTsA9pVdVXnTU2Sd7cm5q7sW+iEV
	 /zMNdBRRvfusPmPaX7cIITfmC7YwDDBZP72iBPOYXWsP3irpRufkyGxlE2tXukbIc0
	 HLx7Nesp6Pyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92914C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790635357.24887.4409711193323437583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357ff6667202b32c361845cd7b1d7eac14a157b2631764e52fe5a2a606717a02
Date: Sun, 26 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737906353
