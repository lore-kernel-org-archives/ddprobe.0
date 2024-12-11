Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2776D1F2C2B
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733958954; cv=none; b=Rw2H0Ed8A3cG6ObTClpz3eh+By2HxgyIQrhHQzQXyI3yECQF0ghKnEJTQjykWW1FApz58v/MIfxLuFUs6ozbcj8N/+AvqhB6AktuyHLyH8Tqcq9grab6Mf72rRwtCI5CGwXuMxYNZTXaLxFv6QF0qN7ygTn8SSkKtTYDrIVTGao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733958954; c=relaxed/simple;
	bh=cyUQUqzpEcH6ewM9Qt6m7wZ8FVR3M4Jncq3LmUYtYSk=;
	h=To:Subject:From:Message-Id:Date; b=et7jnqkyTFX4ACjNXtYbl2qjD+DfDMmar27iSe+/1oPfMHzxjmzDuJBW8gRXZ6n0cGQ9Qt95at4ydSZMP3Bg3oom/EH0EUYQ6zCTuGzOutgAW+mH11jX7c636RYw+Ki1UMhCDD08T4+xGvpGtfNVxcSm+KHxoYpgZJheD6NNqEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck+NTXkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck+NTXkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5800C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733958953;
	bh=cyUQUqzpEcH6ewM9Qt6m7wZ8FVR3M4Jncq3LmUYtYSk=;
	h=To:Subject:From:Date:From;
	b=ck+NTXkhekwQ2n1hYb1C27IabNBxrEHS7vn/xkdmCqEqt+27A9Ij+Ol0gW/okZQ57
	 e+8hF5BQwCGyv9r/OhPLp5Jyyi43b9BnFJEKztVbl7bv98ahMTEvvU0SpXU/uiEJ7V
	 62RRvo5MmTpZIjo20HvanyZnF5PPbuXal+vLvOKubMkFVzU5EPwCc3JOUKO2TNeiNA
	 iwPea6rmbkvghjAVlw26lPqZdbRHyQPRBe9nZNkQYNuCJsrgIZ3WP1r3Ux7iWUHUrU
	 QFg32VO8KDehCY7sfwBoC5vVMnw+w4Uc2bacQ7lt+jl3QMW20ydK+6+/Mp9rh7AZPp
	 m/emxi7FVjqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D87E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395895358.29175.14812320170103355602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e214bc8ad6a050463fbcdb78f63e90ba047fd0b7ea7dc4272d7673d144d7177
Date: Wed, 11 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733958953
