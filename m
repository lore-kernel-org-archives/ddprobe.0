Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E765305046
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771534494; cv=none; b=D5boruHqudKkCYCZbqCuhyca1J9wKP0YyNBM+TT7L0zvOfSt2NTDhZ3yqOCBHgnqv8P/hdR6qr6OTUFOc70MNznXIEzWs+/RGJEpFLjU/JRIMVycQ+GocSjCHE5tOVnKPiFbfe9xVNWUSwJz8ICouwk9XnP3gZaTjW9EjaVNQ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771534494; c=relaxed/simple;
	bh=1WyIgL0xm5n9i7NoxYCR6EuaNYNHoseIb0a9jYs2f3I=;
	h=To:Subject:From:Message-Id:Date; b=mqGC2th4x1+Sq3QieZCs9Xtcife9hjMpmdNx+QBhAeYZ6YUxsNSJmKtZv5TY6ZcNqf0wTJE78+QT6ro5bpD9MKlI572583U3u3Y2v3iqibXd0gnEgcF9sadd9j/RXdAUuI3OW84UsI6ZU3di4XZbwAMHeB9UwEyTqlAdE2u+xKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6Ytz4K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6Ytz4K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC45FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771534493;
	bh=1WyIgL0xm5n9i7NoxYCR6EuaNYNHoseIb0a9jYs2f3I=;
	h=To:Subject:From:Date:From;
	b=K6Ytz4K5x+a8w/IBrc8Mv6C4Oviv+3S7rj0KZCDOsePnyxLeoBPVLtJHdbf52+WZF
	 v33pfkE/g5pss/2JssEgAWhu85zHvJ0bsrneQEnxJMXD9yExbNQDOuEg4OjGDGx2ee
	 Gn2RJQOTzpPNqPHfKTBoqeoaX6MDgyeMd1X9OjQK8MaJem5oB2cypOPkXSU2aRogZk
	 ttEbcLPZvV57qAe1ys+4khiQW6LHMlzrNWqSFAzFnFKR3+w6aC0UlT9UlsTLlqg5pg
	 Ae2FFrOZIaxqX6Vq/SaqbNfmVgSnixarwfldKBQjN/I0jCLME7JXVMHsVt27q9Jbjk
	 XdNh4H0n7VgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E36E9A05F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153449359.23405.2649911591882562034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977c8c5a11af43e7e17f199e7bf2ac8b3b9ecb350f30334b0990ec30561a7a1e
Date: Thu, 19 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771534493
