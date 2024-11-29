Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C2B1448DC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732892154; cv=none; b=GzPdEHcxFNhcnAG6Tjw3IimNbADM6rp1Cp8anwkZY4WSfMIMQJfyEnkAH9kdXTaitx3jkyAI49Q5Uo6Sbjsxgcibf+6gRiegEkIym/A+hQbG3rEhdNmYyyerGq69G+clFRNb5mkYZcWSXTDrYpaT0rBrXbKGHdmliKSQkw0ZhQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732892154; c=relaxed/simple;
	bh=tmc5WcNF0eIV0oQRa2MBVEd0/GW7WU7HUTD2EZhWIAI=;
	h=To:Subject:From:Message-Id:Date; b=bZFPrYpEPV8zpA9rL/alvi0RvF3Ei0gdTnJG0ObInjNRpeq6F0RfSa5Do1RralJv7twWo2oq+NjYpjsLeCUWz2N9N3+i4n9KK3O5wDHcULNlbycLYEEE+jyOCRJTmywIIEm7uKintRyuw8n7xfd0b8WCwACn9oYmJmXYdkp62dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ql0qEThs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ql0qEThs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE13C4CEDC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732892153;
	bh=tmc5WcNF0eIV0oQRa2MBVEd0/GW7WU7HUTD2EZhWIAI=;
	h=To:Subject:From:Date:From;
	b=Ql0qEThse1X0v7rApBHVQlItHPDqttrygqY/nhdYOMQZDSvQrwpRVB8sQ1IKCIj3j
	 9UtI2W8HZeroPR5mT/F5LYlUf9jt3EGJnR1zAWy8DbHFAaxWNOFZVAQdnp4VDkGD6z
	 LX3MW16k0sIY1w8Pw+m7OeQBTjO8PY/6GcxLY7hxoNa8qnsrNbldqB2RPFSBPH/n3B
	 RjQLIDaG8tD/RjhZrYiW1A5DuWSBztyj3/oggsTK9RtOlj0YMtRoi0bwbWqrReUqT8
	 olgVFVhSmdUCzlvFRmeQcvQtCP+lPHRU/8/TkvGRjGc6WZiyPpExhZF97k23Jy9Z6G
	 sxnq/AfoO/DAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A6DD729E3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289215367.23004.4668746152283995462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be608023077b2ece254f71c6d4097dda2b2886b6471405cd4ddad3ce30220dc6
Date: Fri, 29 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732892153
