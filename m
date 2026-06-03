Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192893921DD
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780467874; cv=none; b=ep1LxfCCTbj6kMVrCBI7p0Aodv7jOzc0Qiw3lGxXW5QaHILbjT9KseNL48Vmmb8AgnbmkKLGZ0tNqWzG6FXDiGun190E+02H+3yoARO3W00aaQskGNimkOmxRKK0YpSktkwQe8nYEIA/yef/tus/jfUn0ZKtfDgDmoS8in2WzS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780467874; c=relaxed/simple;
	bh=ogJkcXj5gIZKPQyhXjt132HvkqkGGokIpo50aDB/yeM=;
	h=To:Subject:From:Message-Id:Date; b=SDq0twDhKHpieBLw7+dCh3/dtMfnN8kJ/4pcXcZ2hyKplod14YGFw4+5tduPzO/fESw/Yw8x6KyCYSA/qI+Ktlhz4fhhkPpkxACR7JSBPsSFIolkY15DsYJwEcG+1M/e1DISZ4HEGcCytnzdc3Gb/gl8X9Qq2M41CGXudLYmd5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD7ayhzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD7ayhzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D42C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780467873;
	bh=ogJkcXj5gIZKPQyhXjt132HvkqkGGokIpo50aDB/yeM=;
	h=To:Subject:From:Date:From;
	b=sD7ayhzYkBmKwQMHL1r985FDmJBiLClmU6+etL0+dbEGxVkmtapZ3bYhoiAelwNHk
	 rXjf3Ag7zC3w+R9UCoVDleV4/ObK4ug+X/mEP9fh/tULQxxy/xoO4QaRYfdRUtDlAy
	 VCjBDO/PW3PXnBUtOBaED/SzSBGhTOAxcra1FBWPQe4h5l6nlwveVb17dQ2EaSWA1k
	 0Nn8pcRqIIWye2PuciNzlZnjlyW75Tkys9PPw8sI8QNTR2RlPw6+EAFlcHEDCRkl6E
	 cEa5cjMpXozUwgjEyIZpsrMjFh8PcPvT1vhtwKKUEx0tmwhqgVdB7f9K4YnkM+VZpP
	 /NPcLEUzHNUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E35CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046787368.6303.18119598670794584103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfba6c6d871cffb69963393f9ae92c2ef309b1e601e70ff974a040896d3f357
Date: Wed, 03 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780467873
