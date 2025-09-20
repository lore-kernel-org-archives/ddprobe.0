Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361634BA57
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758356394; cv=none; b=A3CetKKWMLNgQpK/py094mlaWRfhSMNS/55B6CsnRAMYOYdCSFYf0iLydRQYM1xQpyOelIs/Vdz2pfJm2ZgUALrYIc9wgPNPrt5PtG39mZfH+3nnB6uPk2VzlLnjQ+8HCw2FdslinwMuVu+OGXmibthiPY3t5MRCJCC9M6L47xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758356394; c=relaxed/simple;
	bh=b8hRYYgRctBqWeIEe7B/x7+TVaXsW3V39y9FqRBBnys=;
	h=To:Subject:From:Message-Id:Date; b=Pux0I0DEmOjinzV2+RMw4/TxY/XYlpXs9uS+I1W6w0eGC7txE30qfZ6t0QYCNqgUTsEHLiyM4cPMgiTKOrJWwn4YojaMnM7l5YxFC+jXKLPptxujrDbYTr6s+2ineIByuauaVINdSdgKlU8LnaFQUDqheueDR1grFlpq/IyR41E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tuggq7mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tuggq7mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2BFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758356393;
	bh=b8hRYYgRctBqWeIEe7B/x7+TVaXsW3V39y9FqRBBnys=;
	h=To:Subject:From:Date:From;
	b=Tuggq7muGcNDl7EWfpH4iknBtv63SDMYxfTM5mM13eZyNfLRAiqDCB8vpolkXQNfv
	 X4OTISLTXDbxO7KxH1Kt6HZ7tL+iWAr0LjvOPGrJyVyDjCKgw3vzlqWZz8V1HV/Di9
	 40vupSKXhqVBisJlfSztzlTMkfQ5PYptvW2prBXp9+tRPQ7+KSuMxJwAijtQgUWXWq
	 fVx4jhYZBfk0bd0cS6DnNNi0Ehe72DSqpnWGQBpoN/L/U/CMftWReL842uPcy3RPPN
	 lvaM5wkPSINFjPj7ftDz+jNLHc9GMiB7FVFTnDnc5nd9bnAylaxBq+oY6ThAYWIfy7
	 fAMRZ0qmqUqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835639358.10486.8060067031631117470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c908737c6b426951f78216df5613196d45cbbb6ed4afb0433e8cd4e8ce67b9d
Date: Sat, 20 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758356393
