Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138CC191
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771805094; cv=none; b=HEeUk9HdHtsWY0ZV/nWZlpaGmTun0puFk/gqDETX2zIBZekw1sxurevxJ4PCJTEMG/u4LJaNNRJLWgulGeeWhAo8PRL0J8UYBjGXktnpLgxGop7Otg+NnNvKSQnGeXB+Oyv1gRJzC0xa4zgqSHD/vzzAaZJBXjwxlmJvDoAGjLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771805094; c=relaxed/simple;
	bh=PVnS6690jHZQXsp3oIasc2+8bIjBmemwvNw0EyRxZGs=;
	h=To:Subject:From:Message-Id:Date; b=RF3mK2qc+fPyP35oTPTi/+NgeE0enXgKcqm+OVDL/OvNvVNcVO+WadYRJTQaebv0NmWAse2utDrA+3lyargFUXP8XAoj+ROD2+dGbDvp32vHWiuvpVq3CpVacB3Z5czk+4UZND2C4N/7A8q2LX2oDjt/4t8gLOBmVYe+WDkMNhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNJ7rz4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNJ7rz4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF00C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771805093;
	bh=PVnS6690jHZQXsp3oIasc2+8bIjBmemwvNw0EyRxZGs=;
	h=To:Subject:From:Date:From;
	b=gNJ7rz4atXy8TlGHunC7r8HaTAQOWd7PffaWVjUMHNhpUtse0K1dMCCGngtUsKvN+
	 Q3MYs7Ih5y652WmHfnQvts4FQxfTBMAQoD6jDYj2/3Alicr8v0gJ9Eu6/i//VTIfbs
	 s5QoXv9WMKfaIkuHHDOri3DBIBOr0G+oNpiC5q1zxfGSKponxdjzG47BZ2Vejv5Sa9
	 rJ9xV7c92pVzrWI+xvzZfJ9RXPLeip3TFUnyZgd9iGLexh8vUhVFi1sXcqoPvKVLdo
	 ralB7dmIYQu8y7G1R2KaEABRFLl18dW2Ke+3ONSv1UH8j63momqWp2IlMrko7GBEjI
	 KT+6YbO49WX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94640E68179
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180509358.26833.4686905368108472288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63381dc1db255a951336344dc4a2b5fb01315b9d5fb22f828b966d120860efbc
Date: Mon, 23 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771805093
