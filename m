Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2432E1FA8F8
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734591354; cv=none; b=LKF7DdyRY5kBB0SuvF/fUgdISUOQYuEBoEyjcoGMnb0V/63IS8ZdL6qXYUD4Zn6guqgMkO5tKEVUma/jNI3maunPh3FJFkz0WLJSQVqHwlpMXg4nA3LZOZhoVWJA18TkKJ8SfqoIzo8SsGD6CLkXnqiN2UOCJpmxmIZ062tYS5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734591354; c=relaxed/simple;
	bh=t2iLcoWxP7BnVzLkNjlseTuydbacCA/gSR42/MdsG0g=;
	h=To:Subject:From:Message-Id:Date; b=VzwPjUCj2Lw23tqH/RvBjqZBIdS/qPFkd8H2H/tgwJCV2ciu0ZRHlUuQw6jDcvc13cNb/VaWfMIdp038JbIuPIIqMyXk6IfKITCgdJ+JLjsQQpANxguBsIvFkx7zK8Z5EXVuGoA2nAvJtl3fP6XlfvbK07A+JDt4rcvCHDDiS/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihdgYEFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihdgYEFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA700C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734591353;
	bh=t2iLcoWxP7BnVzLkNjlseTuydbacCA/gSR42/MdsG0g=;
	h=To:Subject:From:Date:From;
	b=ihdgYEFJlLPsy4/prX1hzEGzxNQPs/+AgrUSBm5ZnmYzND8ASCasTVIoKnVsMT6lg
	 ZAcvkJbuX5GImNxfs4nSL6yCyHBTZUmZi1/8EQg8Twm+Vlgc14a5NUhawPhQQ4J8Ry
	 uskRsbHyhMYfkagOdSNae3nY98povAogKgWAnX1wBz9V3TJe759mQy5ss0bSwxfuKx
	 voDp4qKmUBgcs/xg7RuH7M0YlTismxoA9RL57HrmldwjBRPuOMy74jVkK5Gt0T/ueG
	 wu+YfVNVqNjomgfjWu999O3Plb/Q4AcaVvrqwGNcYocqiV+sxoqjvG/YQY+jjMDhmq
	 awRn9hCi8U7WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E1BE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459135360.15942.16335436564125008034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3540011f3c8f26b64b5695a5fff10eabe3ca71e68513d26e2b13d0d81667a265
Date: Thu, 19 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734591353
