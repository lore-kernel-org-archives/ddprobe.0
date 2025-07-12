Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FFB155A30
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752281994; cv=none; b=bDakE+wQNB3y7z+1w9X2umrQalQgJDFgz9N+NOcI1AaHz+affE2gWzgMEaG2hx7beDTtqIJT8j51Ti77h+eL3NuAlInuk4oqAno/g3drkgmGU+NlkH6+2SNeee6dzJc27kFqnf+bGGqnR1sM2P8ckW9Tz7X0E40iJZ+1HVK5SGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752281994; c=relaxed/simple;
	bh=Bo4wZFzMF+X4M8k+C0XdrC3k37s5/u7+CE+RHvmok0M=;
	h=To:Subject:From:Message-Id:Date; b=cPQSjxbkwaxgY92Dk1PO/HmwaqKk/Q92N9eKSpPEHobJdslRAYXKIsfMbzyg202XhfGoaJXklavdc71G/y0WjfGgUc4IqOBU9pPj8JMQEzeR5iXCsmc6jw+rcDYCUlQEyIdyfcmM3+vI5OphcU3u0+6ONjau03c6YchIvvalfzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVFU6QM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVFU6QM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB70C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752281993;
	bh=Bo4wZFzMF+X4M8k+C0XdrC3k37s5/u7+CE+RHvmok0M=;
	h=To:Subject:From:Date:From;
	b=qVFU6QM1uH3gPeNME3YFhtmEiPiGJDFX9jE7AZev8I6K47DJQI8aaoJB6LZyNRpNZ
	 alyOF3Bjsfoz+E9zzatB75EERKqZkV10v9ZBItfQPu0cumXn+UvQjhb9Az5RwTMBnN
	 myrEoSgBdNw3mukmC6oqV3yHbh/yD1uYfOKJlS97RZ8wLkonUVGpaA5qHj7xglMps2
	 pQ4r9bCyELL5l5boHqG4GBNwiGRnt25xIHZcX5QS9FyrfWPrItOAzEvc9ILSPEwgtn
	 EHbMtaTcj5Cd9XBcw4lQzbQWtzIv0zUEUpNDLHeD3fCJxH3aZdssbI96P66Tf0oanc
	 5kpeO4/K9kpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3EC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228199357.21231.9469188549943181813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe33d9bfb8335ace8cde662a40c1aa1b20a423b55ca472cd7f3d8fe96cdfe88
Date: Sat, 12 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752281993
