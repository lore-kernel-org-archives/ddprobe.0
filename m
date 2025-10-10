Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD652BE7DC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760139594; cv=none; b=G4QkzfMWPLotBf/AEORVsYAW6nUsxsTS4wz422Em2USEgZ0vmc3WtWAOoSddId0zz4ECXzbwtyCV8ZMuTzyQWX6SKbkmu0DIJWexp2WbuIARwZ74FxJOM5OFLU8Gph09bQzS0MdGep7fNgHCnHDIlTmxN12zVVzd/ZoUihWaFCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760139594; c=relaxed/simple;
	bh=MS2OmPGAwJMIXsF/nzPAg/aLPZc6WcmTQeS/UkIsjbI=;
	h=To:Subject:From:Message-Id:Date; b=n1P+EQ7IDrxz8ArwVBSkrglJIENCRSDmxpd1PdbjdDFJG6q1llZwPecOhMUkw7l8kG3qXn7Q2xdPdDal4Hx0feI5Fvk9XUmRbsXYrqhEG+DMAErYECjv3KMYQUwVxV9ywEf0AuTKWCDrEKshnY2ZehdS9cTDD7oBQk53bEZKAbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuKDhwy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuKDhwy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760139593;
	bh=MS2OmPGAwJMIXsF/nzPAg/aLPZc6WcmTQeS/UkIsjbI=;
	h=To:Subject:From:Date:From;
	b=MuKDhwy67AkSlCHciIsmrD2e5b9ngiE/1OqOh7PwiqHyJ5czDJ5fprhZfvRxMRZZ4
	 odzxyWudxO5KZDrvyd6MF0V6grZ1kWDXQNgAGgFxy+W8LZ6imVKbNWl082Bo4f83LW
	 Jep+wx305t9f8QCSdh1mvkiR8lPadBbntqKVX+ecF0knpeiZpFQ9ekbv/sSCLGBsET
	 qYyncYb6wBTv3nbAGuIRjH9ZzGHSKmWkzOxhLBm0q3gCAAGw9NfL7iYnNw/6MKP47O
	 R5PNMkEjqpOgkPvZ86gKx5VpW7KjwnILSXikaoPxLW9amZLdjdwVIYoE1uZLRj+M9x
	 2aLWn21LjuwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D6CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013959357.16622.1104716220358916510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eade6e83c683ca5bd7496380bdde45802f0aa97f40381b83e29e2d226e830d5e
Date: Fri, 10 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760139593
