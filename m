Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875DA30FC00
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764330774; cv=none; b=N2MQAhADLN9+zOF0lOKleqfaIIkjsYaz015twwWaA6xu7iqE8ZiXkH9zJwGeUh1y2oSfKnBfX3oC/obzAkWfTgps2XnZXHzSKQEF6IMa2/WEI2zBxaZK3iA8p3HuxL/sbAdx2xYsu/LUcRRnl5JXeNRap4f7Bhm8Ajuv6Cr4IRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764330774; c=relaxed/simple;
	bh=gHkB2aCE9aSMtzWkLNa4cF4Qp60niH7qKsbGawD1k0o=;
	h=To:Subject:From:Message-Id:Date; b=qYbu8KSZMqfnc7p3QBqHFE6/RjNLjkubxMJ4XBb+6FDnra9ZzGaczjkMrWKUUF9ncM9xK2vCSyc4DfRhgpsjEpk5ZYDQxZHC5cOhltl23hXL1oOJC60y7Q0eK7YKZ03MTd0KIqDtfaTwhLq3fXyQhE7FS/lYfP+56mjn/9li3Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOL3ZrF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOL3ZrF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2824C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764330773;
	bh=gHkB2aCE9aSMtzWkLNa4cF4Qp60niH7qKsbGawD1k0o=;
	h=To:Subject:From:Date:From;
	b=gOL3ZrF+6JqxamRLHKRtpF20y/NAU9nVWfkywbAM/aGW793aHqZRrzi6QasOUJ+F0
	 4H7pzcRhZ0XWlWJzGc4MTtyM/FU6Fl/ka1QQ7TJLM8HHdwVIYnRsH0hl7Sjdnk3ZvI
	 3vy+wSKepTayF8tOcpHrTC+TA7NCWu6ZB1vsHsiRG2Sqe82AQTBo8nGXaGOD4xKsu+
	 4rTQW1yaQYksxzxvYtO/Pz0sutQxPeJ7C0gPth9AZX86793ENbhIt9he3wgCQ586No
	 F0+QJ71PVDLhUQocPHGbeDQsi4mBIp1kxtImHOu2YJ1vwDXxhy9iyhHZE43h7lNgV7
	 sHD1FSdN4N3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071CCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433077358.6822.8298505380539093197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc0a959e52d3ec25e63512ffe734b435627bc30e354476172f4a7dd31b7b86a
Date: Fri, 28 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764330773
