Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6B62EF645
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753458594; cv=none; b=vDi8WSSncm84KH79RBicLY9keMPxxsztY9JTqjb9N4JmpE8bGqI5HokIWEax/NdhfB65TrdlvAAY5a3yzWlPkHmA6K+fJmq/0cswlcfQdI2Q/tP3vBiD8NrkvwKWEfNaFTk0wYIPvhBqKwKfHJ7EIJpVIN75O9SAQO8BX0zBtGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753458594; c=relaxed/simple;
	bh=js94+lB2LhWvbc8aTH6Ia3Fk22Zmw4lFrpnBjmn6KYs=;
	h=To:Subject:From:Message-Id:Date; b=uwKO3tSgeeQMlkGs6z6ZgthhfrnFdHn1+NUwD7uATYyZHcK/Hfz+OTSLH1hzYlZ3PEvzgoAkmM10JdFOe/jBs+2SZyxV76dg+6a/Ee9ZrgC/7Qr625kvDmjMg4AnbAk+Aj6UutsHcQSuUxrQl2xRb0Wnp1Gk3P98wLtFn9SMCTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwP71WfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwP71WfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3A6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753458593;
	bh=js94+lB2LhWvbc8aTH6Ia3Fk22Zmw4lFrpnBjmn6KYs=;
	h=To:Subject:From:Date:From;
	b=SwP71WfAbYKWdlEZZSGD0/Eh+F9XKgv/S4zbfhfHghiWklffGpoSoyvBjM5AbVUwZ
	 bF6W2tg+ZTGeThYBKHMGmFIKZ5Cm/DlZNp5JCkU0PkTuKRnI0DLj84IPRjXOZA+Q+R
	 4GYd7uvtDGabFCXiBWoGScbAYMAIPszVHRibj8xqJ7+x4oqgJKVNXwGLDtM4fbAGcH
	 7358K6vJds9pP4TleI1yoxMU/+ENB2+9bPI7C9cf4jBPC52CcEAYVjGZJQTZbRqubh
	 BKdQAAr414IIxK9/000eJBzZmgSU7iMIkqiea99dKkpf1QAmcr+9GB3+DHzYcxbb7W
	 BuOSNniL7BLYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBBC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345859358.15246.17470367435446153672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a90dccae69a4bb6bdd31fcc95367f6d7680e0ae0a5bbcf9fce543a54c2c5da7
Date: Fri, 25 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753458593
