Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520F91EEE6
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741419534; cv=none; b=iqfa9r336W8/keJINjEBAqVWckWCZ+Psnt+GAl/VVXzrGKjy4GiYPuVFxjLdU6EaOxL6rf87fJxtFCXiAUZfDX/69Rn0mvsUbIUBJROEmWp88ZkXGiPmA5hA48gn/rWl7n6aiAXhBAo3yHmvWGcWGAN0o3nvooM4Gc7cpZXT4QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741419534; c=relaxed/simple;
	bh=ozAmIgbkUQ+KqdI1SrN/mBK0rNqROnzJhnKkjdutiZc=;
	h=To:Subject:From:Message-Id:Date; b=HpQv9LZslBLTpi1gavpI+5/mrlcXyN+He1kgnWoSBV35LOFu3SDbVB3nMaQyCuYx5AISYTwm9EQpD+baPOOAd0bzdQ1DkvxFlDJ0TB31TBUANepA7KNKab4sIof6g/POCparGU00GFj+KGlbUPpGDY4+UCiRUEGkU2402PpTXHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vin5FUVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vin5FUVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4682C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741419533;
	bh=ozAmIgbkUQ+KqdI1SrN/mBK0rNqROnzJhnKkjdutiZc=;
	h=To:Subject:From:Date:From;
	b=Vin5FUVPg7tW1gWaZYKC6ueXsgVCxL7shgYJd6/1Ge9DJlaQ4m1cXY+Jkz/TISr5I
	 Ymc/VHE7E5wElZwWIIpl1bC+iwxfX1rGFowjJm2QT7AdQBkK9JKeHzzVs3VjSrZcgc
	 u9J7d25b+/kAkkFHrZnk24ncvUf8CkW7sB4anGuMg6vvpXV+8/2prwdA0sHruEVIlb
	 17J3AgmMLVIx7wOJx3rKMm9ZGqIeGXg6mVMnYgu9uaaPmeSDvWeprXyWx1xKTUQPmr
	 wvuVKrZzy2Lrrw6U3ariHW13ML6e0HWY2IWAxS1prAKVnTBDzrjMPNEWgx/BS8aJlE
	 +l3eiZ8ZKv31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A897C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141953359.5756.8010522136208752649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80df310311c96da6ff49a3e3a56d4005657e728f546fde09c4c7ff4254243753
Date: Sat, 08 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741419533
