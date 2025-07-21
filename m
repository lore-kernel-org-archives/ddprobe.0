Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149B71F2361
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753134594; cv=none; b=AsIgwrutrkHdUYh6EgJt5VULBmyZq+qjxX4gMAeCFmRy1AGzKWZUMcvkgmJQLkQxSyCWBCoEzMEUyXBpV5wEUpfqGwAYZ17F3AM2Zm5wp9uAbXya7NtN4VGWgMV/DXd0AZInflHsA+kE62rEyt9Ov1A7gN7wBHpq4o9tyd/A6LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753134594; c=relaxed/simple;
	bh=3IQs9UASNMPikZxWvBWeV3QvDutO0NsGGE3TMZoYF6U=;
	h=To:Subject:From:Message-Id:Date; b=HRk+C8XPI6Fk1ji8UYBzb4EuZJurr4KUcFFS4JtGnuZRSfYuvTOmN3GkyshRHijP0fHvY5nXhD7yk5CYl0yIEcrJ10FQ6rBlHkL+asvwpDSVEK22ik3oPYu4BNjIEMFt3leeGn4nemthjfh3oI9VI2bebIohyNUBlEj0ylw2BhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYVKdLQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYVKdLQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA847C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753134593;
	bh=3IQs9UASNMPikZxWvBWeV3QvDutO0NsGGE3TMZoYF6U=;
	h=To:Subject:From:Date:From;
	b=OYVKdLQZwDs+z3Nq71XuHRcE2XezBEHKdOKK+tjpWNxpxkzIgsx2LOcDYyGUtT2t2
	 7OoruGgL/v2ocfFBxvzLuPz8V6zMgcEBVn/i0lvEkMDHphV0v3Qlvz895oVro0eZkE
	 XrStHvsBODIsEL/V0TccXMJG3osjifnvZr6qfa2XqqUu34HxkaEZL3wfhg3Je3u2Sc
	 AkAsHXR+hqcYAHq1J2eMM1z0pMa0s/dZ4DTjfW92OSK5gpJbH2kZqo2S9/jhEfidO+
	 yoHpLcYPkRudd7hEPtpY6h9ffHzdqDe/6mJOVNjtUjBq7pv/1OSUJM7ZQSdY4U12zy
	 fGRDKHUqgkuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D8C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313459358.8413.10359032316423837267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e174525526f5c5919132b9ec7fa057ed2d2f4838a52905f2bc6c278566528ee
Date: Mon, 21 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753134593
