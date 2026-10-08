Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AE432ED54
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791486634; cv=none; b=g3suf96nDuEzoiKFV4No5P0OX7ceOMKAe822uh1rQ3TkyyJlaRkFYUlQU3l3hO0xU13Jmrvb3TlnBk0UW9QUTaB9WBlkeDjVz0L/BWScte3x6kUSps6A5qcbwlYuxxYAD+eoNN14tfOuluTjJMJwPGaDH61OCkvrWuPSso8izg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791486634; c=relaxed/simple;
	bh=iu11vlYdDN63xXh0V/+ozhEuMydVZNXteFUpIYDXAqg=;
	h=To:Subject:From:Message-Id:Date; b=UHMu1GyjtshqgE0HQcjIbdY/WfjJ6dPx+zQ5LNPu+Bl2cPoK8JWac5kqJcTanGoyD3OHMEmE3l+sYguSMd5thfb9p87+eE1m1d22Hzxz3FGaGJ2r4ri+JCtAV7vQBcfOezP+o5oAA9f+nThYqRidsnAAfhoIVWHJodj+5SeCui8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiNs4aMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiNs4aMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791486633;
	bh=iu11vlYdDN63xXh0V/+ozhEuMydVZNXteFUpIYDXAqg=;
	h=To:Subject:From:Date:From;
	b=JiNs4aMBEBwcBMW1hi9weppkHcv21c29XPOVgKsaaKBGJnPjZlRMhZdImKpdI3Dr1
	 Y1sAmBGRfUM7RpdwlVCG+5fsjHXK949OpdRTXnJ/WN3NEALZBWTawhCZI6nZsEIt3S
	 F/a8kyyMv8eOU5SNo6YUKY48qBdadGnroo5IprnfF6sdx58pQ3HUaBTiM0qkHxRrka
	 8EBWVXEu9dqahfd94ga/0QQQaIIldaUnhccv0XD4q6VS6fXx89T7l+KlQY1a6T7fI6
	 V9Y1QXVFFwnXCfZ9DoCh5mAiIWJO8eHgagff64HRpEvMPZurnl1Vf5mQNX7+tAwDKq
	 OZ33SCCImMflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E8CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148663369.27525.5415756526127084223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b11f6ff89ec5041af0b7acd803799c0bb54f2c3ed7ebac9e6256f92454b77b
Date: Thu, 08 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791486633
