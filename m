Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629B18EB8
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714460543; cv=none; b=esslWm8lV38J1Vj9Btxj98iPV3lS5LNQpIsi+C83aV5j8rAWvTuXX5BZpX9LAXST6lvHocWCnNdYLg2Nc+g5QZFzRQ8QOOkKtqRD+8SQgmBULIbfiScwQ7hsEuO2/8rXGuuyDeIrN5OorLNU+RGQUH1nzd2gvoUdpXZ8jvAyuhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714460543; c=relaxed/simple;
	bh=lnEOJ0eP69KBMRtlBHIwanl2oFop8Jt1oDpNqtHa8Fk=;
	h=To:Subject:From:Message-Id:Date; b=Tb7vY7KWnGCi71Oy6eVAW8jmexOiHCxIPd+hrJMI9mUIXgJFB66Ls6RCOn+Ey9mNTY75FU3mrJfwjdNzjZvrsXc2cQbKZ9jDEgLrFKMmF82HWLSgvK8whPYOtjrKgVkIsm8FA0Fq64UGYnUoXgcV7ckLzB4FLpKtIvGxeQHc6Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7aGCg8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7aGCg8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1133C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714460542;
	bh=lnEOJ0eP69KBMRtlBHIwanl2oFop8Jt1oDpNqtHa8Fk=;
	h=To:Subject:From:Date:From;
	b=Y7aGCg8QJQVdSIWybO5g362SjHjDLSZRNODf1Pg9EMDwc9qc2QN5ZzOoJpFM7l+aT
	 lZNt+JYkiEIyGnGk2BMUOJypoCUnxle/Pj2n0x7NGMF4oQ/mApU0dpd5vD7p8Rpja4
	 Q727D4swmLpgU2D4HpEh3C51rRxr6lYc6J4vyVeWPWBHONjKELX5IfI4mfnMadk0+J
	 NnWcul4svX/q3e8pvkoghtn5zF43O1c6YrVgdYTiBA+v466yfqpdaZklDGBM/hhc8F
	 yHdtAEJdZJIZDgRsHxk7xc6fiSaR7bbxF8Ip6KtOTWcwuS/RzzXp5LUsOnJ6ESRG6S
	 5r2Jzd0O7eiKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBE8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446054277.3807.7143525557156694604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5d1b56835a8732875ccb9d1cb9039cf74775c7ae5829d7ccc4f8731dcb9d55
Date: Tue, 30 Apr 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714460542
