Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D286B3093BC
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751467793; cv=none; b=fDurVxF7VhRDhqq85ytLKl/9MRUDvwvz5kYlPY+csFy6VR4PQM/Ow3hppwQxkw8ogoe/zBpXmQR3Cf7sGfJMzPpStUwYeTCAtnCAWS6Ia/iHTF26aj491xWb49HkSIwiqSAvvHDt7l8Ys3HazvsOsElv6ZOWNGQeeJSzjnMrWmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751467793; c=relaxed/simple;
	bh=GEFYR41e15D+tnm390YSIoDgXoDDqwA1vj8sXoahnhA=;
	h=To:Subject:From:Message-Id:Date; b=JjsdfcktcB13G/FlbxcLaTJqgaJ+aOUtLW8bVgKcBrQEyvza12LuwsbgFqR+vvi5556GDIye/hxNtmVKkD7hGbIAPh2Q1VZ7OI71iHSQjiTjk6Mt2W5Qy5Z3orN2eo+iu63MnNtI5y4PCjolLKkk+DoNijnChiIcQPajhBh4zcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShEIgxhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShEIgxhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC23C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751467793;
	bh=GEFYR41e15D+tnm390YSIoDgXoDDqwA1vj8sXoahnhA=;
	h=To:Subject:From:Date:From;
	b=ShEIgxhzhVBLwk1DJ85qhNvoWNjBmiXUTB7j95JYuk7n1+9igHVTzZ+81zGm1NGoX
	 R/Dc0st5zRYTBi/jxhXJEijHzqfzRu1CPLn6KAWvS/1sB2vJsMfwKaemQsEjKdVCjg
	 khKYyvg2DHwkLEuTFsdHEjvzUnbziaZg0iDVUMHVd5KS9cLZzL00IDuqBPfPMMuSoC
	 go2L36N57z+fUWd/Qz1JR5KQPPiJIql4i+p1JxmEMYtG4vlYg2aRDB2YUlJ1xuWlMH
	 lB3V3UMHNxq36zVixC2jaF/FO4V0TH+DIQJvoOZ1bJqaMbdx/0mWukSqLtYW7S7JCe
	 tfjPPlK/4cLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C4C83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146779358.5365.14725711745050094647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb9f2294c3849fdda39d972fdb9e485da0328410bd922c62af3229f178c0106
Date: Wed, 02 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751467793
