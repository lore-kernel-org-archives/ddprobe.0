Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA7F23B0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737806754; cv=none; b=nuLeDxdUI1k+FyArozUcgCwXS5mDJpA+qMIMlGISVSmIT0o4hSXgFDRXaONYKRDAiKBB+hNaIfwUkjMNjvlbeddX5Uf5MaIxdFeBpjHLlZlfwGYQeNkEpLLSVtINNyj1+BWerMzUtmG3iAM8+uPyVR7nTyHfRizNzryFuEx6X8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737806754; c=relaxed/simple;
	bh=KJZPr3wzcwzPChXxA9Ee8e6lJNuzaBOjhpa+9yPAdxM=;
	h=To:Subject:From:Message-Id:Date; b=RJ0CPeY/EdexEBBaiNvsZ70InSqaNpTzZoa0l6ps8UzH4bpcyBqvsCSfyRLXi/q0Z521jsV/jnOJdT7oPi6rQ7Z6dhLQqyJsODgCZJSgPOFp5UFkLZuRqjqxAQwmzJYj7b9hCRg0M77s2zh9bYgnESTMQDid4K/70Ca/xZfF3Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMLSBKmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMLSBKmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0624C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737806753;
	bh=KJZPr3wzcwzPChXxA9Ee8e6lJNuzaBOjhpa+9yPAdxM=;
	h=To:Subject:From:Date:From;
	b=TMLSBKmjbbYNXZ+Fv9+rJOm9VBGFRr63H6kyTZmhYo1AxQCbKL1y9pa7THXI1yjlk
	 LIMYBZouVEzjvqKoIGIE5eABJtbS0wstF2fdMk1Jl4tkXgKj2mhvtOwZCraarVRce0
	 PKtVywkfCU+rkf3ZTizi3BX/4GtI6pTicC8oPtLOAR/VTP2JzbcLV6BS2YX8ovS/Mg
	 9MZRpzy3NgGhazw+1MqDRAH6CAyrTLv1927tJnrXPHY/Ye0cYXqWCxo+aLVcYz/IZX
	 VdDnXOFjdap7a87hBhYjbJWafKzc5QynZpFGOEJcGacRpWWQJPkzeIbYCWyLYWDAif
	 bmhWSUGk2cV+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB43C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780675358.23386.8265756390126362616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17162d302c8fa200eaeac5e1a666c91734a0068bd9661daa1f937195f3490b8c
Date: Sat, 25 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737806753
