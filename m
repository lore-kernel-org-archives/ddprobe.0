Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2924726E6F3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779693754; cv=none; b=IxsM0UZ0mJh7x3n4Alhll0WqwcJ+ld4CGmDTqUkLuwPsMF1cov9ZseGdenQtpTZ7yvaVNMGkjWJRpBGC9xUCUYOzKGZUhdmzYJEw8sPQx7xorjESN2v9ZaOcT0eIGfYsMKUPsMdk1osKAQ3NAvAi5d7D4HoA5KxwUJM9xr0VP2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779693754; c=relaxed/simple;
	bh=s4C/HNMTvIlWNQ+a3MlDrJRkhFxHASt7EgufyidFvz4=;
	h=To:Subject:From:Message-Id:Date; b=p2ptw8I00u0R1rPvlPLy3ypMHa0XTmspPQYHbsM765n8LkbIgM3a4Xay7kSnymwb/yYgjgQRRAhQ/flqFO+hF6+nvOwPBkO+bKjUJTCbnjgXFRCzkcg0HIc3sODeMurnVvvUe6biMKUDWZvC2+GRw8xSlAETAMJqtflaolFwxqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f90JzHtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f90JzHtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD10EC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779693753;
	bh=s4C/HNMTvIlWNQ+a3MlDrJRkhFxHASt7EgufyidFvz4=;
	h=To:Subject:From:Date:From;
	b=f90JzHtqC0LhczNLiZAhK6EiJgqG8sZvYIRkG3ld/RwmsU1ZTzwtVAV7UPEbKYUnq
	 3E4nDz1Np94kTORk1U67msabL0DPx3V0SqRSfOtilPaw5lWUHD4dZzAZC5OALHFaCO
	 W2FERyoAk5ZQ0kRs+stXf5NK04R6dUB60cLEbUE3cRCNBM4N7ApWpa8ZU9nDxLUnuf
	 boouVyWQM4qg8Ump7fXYpNdDby75DUDp9BHUBCkTeM6R3BiWnbF2nbILK+WFUmD/j4
	 FJq012qHB2L8L0wuItw6eCqxat/F9GWsciWJlPDk55ZBwrVjfdc6ie1xBQGHXi+KOX
	 IQlPjKbbsqT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43CFCD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969375372.25779.18165613011120954303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1ebfb90e88d45993fc214c26c0621a240894c0c11b5231a755f36a0d7b212e
Date: Mon, 25 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779693753
