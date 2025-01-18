Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DDB2F5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737168354; cv=none; b=LLgdzenn7b0cRRChN9rs+UfO1EVyaq3nTbXCFt7VJwjj1o/JMy6jIcgSARbzHRmOdTyocrdO6rSKqAdAQko5j3sALE5ayLjgtTk6LgSO3Ugu/HASgfwjSZZeQhatwijmAAYWwPMJz6uf+uW9I0mOQa2tiHFGrvl7mmqmFBY479c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737168354; c=relaxed/simple;
	bh=YsVEXcIGl9N7I/+n3RJUyJWtWmkhYLs6/VdAehyAjp0=;
	h=To:Subject:From:Message-Id:Date; b=M9gL7MPqdk/N0j1aNOwB/mRh3D7cv3clacLaPbB3NIiJAMa7ZAINQcQNflA/LqubZ2nLIQInmC3k+TW4gINCiSWkaSL0DZ/NYEXmjx+2P7qD/4pNkizRfHkd4M1gBr/1glu/+6e5GPIMgZ9jCitrymcpeRErYVseKxfADjBLQOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip3+iw7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip3+iw7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B17C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737168353;
	bh=YsVEXcIGl9N7I/+n3RJUyJWtWmkhYLs6/VdAehyAjp0=;
	h=To:Subject:From:Date:From;
	b=ip3+iw7Ns+H8s1aVNsZjjtpzWFxX5CEe2Y1RWKhoqbLXfB6Ntn1mMhbawK/ORZzkJ
	 +Nc0E1NheHm2Yvf1ZuT2rn4mDuyBVJSEVPdFIM+6XUUfbUdqPBEUy6rORL7tSAA/Nu
	 +eXNIjxmcTIbuf+55O9xApHG/q6HUXgRb9Csj5MuBYB+p15W4hhRu6JVu86bhoTeLn
	 pNZ7XFWkwgA266DXNtnfiI7H/aLzLeW6m1uj7H3W1+hqNqaB/vfb8SiNlWrI0a69va
	 vmXel47gh9/xITdeFFmQtmxYDAxZRIxwGTaMc+GDku80ShPjFUpcjbE+oYY02os4QR
	 Svjjk/AUeyLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE6AC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716835360.6410.12595471345457358889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1994c207ef790c22462c3b5e7ed0500a58a08e0acd6ceaf24a4351dd7d5d24
Date: Sat, 18 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737168353
