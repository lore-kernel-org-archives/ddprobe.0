Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0BB57D21C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788965434; cv=none; b=WEIfz9z3ZyXOQ1rFVGF7tXe8RHLo24qNR8dDpqHGh7lq/aX6kWEsOAyU7JBU6+BGIDgtkXUexl27MbvB/o5VCOLffYVnq57WSDqSFxDKt2CDCPXvRPeIqvwCPBp+DtbWW/VMxFbWrQLLTQeX9epSgc2vTcPngNwqsamFUuQZQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788965434; c=relaxed/simple;
	bh=2Omr1vtQW49esJKuIC3VxFNQDLqkD0pX9zO2UxjquZE=;
	h=To:Subject:From:Message-Id:Date; b=m8v0b7ExEUxpfSa1SMXe8wHTgFbQvzJUqAV5VB8BPnAgPfQ7IXe9o0rSMwa5StDITdV1+YF8Gp1MxjZMqKsGHmkWysrctefWN9XLE1jcXRyW12D7ZVk2cXjbva14X6Kx8h2QlNqKDEFtrsqouOt6dw1UknYQb3vc8rqBQDzXJ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfDdPZIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfDdPZIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F1EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788965434;
	bh=2Omr1vtQW49esJKuIC3VxFNQDLqkD0pX9zO2UxjquZE=;
	h=To:Subject:From:Date:From;
	b=FfDdPZIlRwe/049no0sGb2AtUNyK2vr8Y1mzFo/mi1aG5sF8f0iFbsIRk7s+eqQIP
	 AsR2qva1Z4EPMjLFSpNvXtuF8ntJIHQZDUYgMjTmIvCUUWRUbN/HrKnuK6GujjgRx+
	 QBmNqvjTJ8AgLbsQtng0dNuY8FhChXkcuRZOSndyJVjZZk8qZ90xLD9eK3RDgnXjqj
	 PSAHjnqkIUzkNKqlIrRpomf0aQnWk+O91VRUZCfr/bjt0o1flzAY/hvqAMILsXo1Lc
	 WgE+8SzS0tXkoO/UqVYRXKzzBtQTDWSILKXtS4jD5Y+e24xFz3/S/UmQ7UCQKEKVTU
	 tKheUxno6r9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68D5C88E43
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896543376.16255.9679904478375689201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ad83a31deea8e288001d78a3e5554dcd7aa0f160c18a6ee36b93d4218bf381
Date: Wed, 09 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788965433
