Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462F4126BF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765612374; cv=none; b=gBgRSb8jV83cNdRYAKRaMCuGOJFIDtTSU9YR6YGBCjkXPaPTUTXXJYBDYoABKoqsgNghf+jnHYmU0Rd2gwWY7MnPjFTRqKIlqdXt/jcz5jeg1aSx2Q0P17MHjq+Dlrh3jo867qdOIQT60pwSpmvvooXyfJ6I9zHrNLZ5IEsh5Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765612374; c=relaxed/simple;
	bh=iqB/cfM505jnPc4wMLmd1eZterseGIjzqRkOYQLQ2EY=;
	h=To:Subject:From:Message-Id:Date; b=DRYWTKfRN3PLYQG3v1TXwNWWqaYPmqiAinrVbTqNQpkvoCu+VCCSSEBQ6qCa48u42x2zdzglCwTh+QsAZzerlnMXXlBh1wR1hB3qJ9D7gC5AWmweXBDqvITbSarT4NeNGgHNz1TUnEawbcnZeRa8cdbe1Z1G/cwe+UDqI8UTem4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmXrkgB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmXrkgB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F86C19422
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765612373;
	bh=iqB/cfM505jnPc4wMLmd1eZterseGIjzqRkOYQLQ2EY=;
	h=To:Subject:From:Date:From;
	b=NmXrkgB5D/arFx7RYbyem/+AuwTiHCLD1+jfCHItpyh/QFB5vk9t/ljxFCZY7lPOx
	 HOQI3XX9iBJTvV3jKq3fraj2R7quk8wDtTXncVAFb4s1JnoIR9Bcqy/fCP9buosGTS
	 h7ZCwiTY7iXSXTq7uZbG0tysc1LaFcJcW5O7ITzIzewIRXOHa+ybVjCvkbABJP+XW+
	 CzglcLZRcGl9Rw7Br4sz4XqspEI4rv0t2pk1r9MqOTGle5hrzsYKEyuaNJyh//2u05
	 90iYEWetmEH0aVp91RgDakbzJQiAhxNl+9wmYqY9HwECrCZ9BOCun27ncVUG4+uRwG
	 hJN4gx0bzZJWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD2D59F6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561237358.14366.8248603049530850153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d10709fae205761ed7ed30019523bb337f9bb353dab04c77878f12871e524a
Date: Sat, 13 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765612373
