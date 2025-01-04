Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4111B86F6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736000154; cv=none; b=nsZ1JNBbqT8y5yXLNh8Hofwh3vHzkUwaBY7DQDImZC78GR8UC3nEXZIg+VfLM/6qE/cMQwpS+YxBy11x6xeY/Xr5T8fIKIDVTQWUmRf1y9g+xpPEn5STcxh2Pr9tlW+4q1GsFNclnza2eRfPW1CQV+TMN3R0qBAV4BF6fc84PpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736000154; c=relaxed/simple;
	bh=bLI/se5x0l0HxRMyuGwFe4jfkTvVEHCtfXRMowRXFtQ=;
	h=To:Subject:From:Message-Id:Date; b=X6M8upOr27EcGOApuSF0Gy8GmorMxZJ1VQmcitGMKAg23YH00J4SxJEu1zW1RfMlBaK0rB7ZSZIPmWNSJiqw0lV5dcEVPegQKcbyYmS/6/jsJ1Tw1Zza7QZLeuwa4U0FeWPyGI6lvzi8/LXtribpOI5OwdkM6KlnBtOAqCFQcsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5WTx1dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5WTx1dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B07C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736000153;
	bh=bLI/se5x0l0HxRMyuGwFe4jfkTvVEHCtfXRMowRXFtQ=;
	h=To:Subject:From:Date:From;
	b=A5WTx1dgz244VFaMoh+atg518G5xkx16OlKdZQqrtbDVPWaUqK0hMHeAs4NGSh1qT
	 HmEDb7ui4hA+7EtWmqF+k4FdBFFjecVQ8/u3mpHGsLwLQFmMTYcbGN+X1NsxDXm2jP
	 NZ23QzoKhcHzcvkLkTV5OvzAiB7eHLKuKTQU9uEJ8pat0Iq/UwAioy7nhVyIAdkKDZ
	 OEFkicEj9rEAszodgwti4p2FlnN6IjN2TT9Vj6zDgBzQ1Dlco6h85XGDursaHVWh0d
	 lEgdHH9wbQyh3+6XRQ7Uq6uxWwchuHD9O5UXHXy4aM3ho4WG9CjIdAkZK8TSPalnXl
	 IFbr+D0wmlq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FABE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600015358.20554.3488120541244267968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a368a7e3ea2ea49cd4f6f66bbb02a5909c4fa061583ccf767237fec1e998df
Date: Sat, 04 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736000153
