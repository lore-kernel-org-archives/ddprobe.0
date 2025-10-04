Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205892F2D
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759605594; cv=none; b=iegj5YfqoXCz4s/SeA7mJh6oNF2WY0WQfoFsgKtUED0LGvLx94Vwp38bpgBqOIftwtQH7L+ViOISe8YoY2nXZOnAxg/RvtIDe9TxjSVFgcz5VUcu0DehI44ASTDqSYclC4GUISfqBJ7H2IE3hjosxk3M4tf7ZfDiVGAv3jfs9VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759605594; c=relaxed/simple;
	bh=nw83DAHPTK1d1RHWfKc8r3N7ZuZsPm1aCGVLCSht/5k=;
	h=To:Subject:From:Message-Id:Date; b=mdei++LY33JQuYZ6mxiJvGsymW9uVgIB+gbv1AEZnQtrDZD1hUxxZHm/fzhVPZOy9i2pr3+2Sb4Smx7IWOsNzgEyAZl7rW9AZws2m1UDnwjCq2O9q+fEYGrdPH1I/YvAQA+isni+L5DvVsmPwmLvimlCX+6RUE6eatbXwpxImTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfCGb/Z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfCGb/Z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759605593;
	bh=nw83DAHPTK1d1RHWfKc8r3N7ZuZsPm1aCGVLCSht/5k=;
	h=To:Subject:From:Date:From;
	b=lfCGb/Z6UDj1NkoGHCUCt+GHr4/eJMSZv4tuuDXK30jo+A7hr4Fp/3mC0oPLTyE4j
	 uRielfttOZzUDFKjOk+NHSCagm0ouEAo1+P40ft/VdrkOzZfT4I5GODKsCO+MJOxZd
	 i91/E44bq7VLd3Fs2kLxFiPRJ6WQosQbwt8i+Wz7mKI5X8w9V4G77q/kUKFhkNkRqH
	 hDh5DEELLymEJIAtxgHhP4wAgMb9y5eGwJPk1BwMkHVSWZlyxhNsBAF7Lm4OngBVnm
	 GfyfXVJN5fYomL6AvFIyfOEMNxyIfOB2Evwj0tdXKop4K4kw7ppFOYdbz79p15LjuH
	 9Fys1vVk0Wo1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F7CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960559357.20385.2072446823417489098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7272c0988c911ebf7eac16b05405d7fa9718cf5dc01e0c460a07eca0130a93
Date: Sat, 04 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759605593
