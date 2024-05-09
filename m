Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500EE13BC0B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715223743; cv=none; b=ZyD/uOWcxkzqp2zDl6zQpLO04fFlw4Ey9xumpzuBnQwchIc7m3IoQ/tdd1tMlRts5aadubNim99j3kyUJrK//cVMHeXEhttb/odAmikB8lRI4TBsnkh6X8YZbSLdxOF62HoRflDHn3882cJT/NM9Ll5tWXLYF1iRt15r8Aj+V1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715223743; c=relaxed/simple;
	bh=5nL43bshEeRjpW7ruNXM4vp2JXhIMtiojdbM0jlYTbM=;
	h=To:Subject:From:Message-Id:Date; b=molny5EkcJhKSk3TBweVyD41izmUGA5iMc5fugCbrR8s5J4QgCpwU7M5jyVOfukMg3w+VQvCrgRhBCo32DotBpJkwbh7ncHS0spv9qc8VckaKRl9LU4fT+dRD4rdFaER3lyJsoEZAPi4umPhMdWiq7d1EMlyF6QQY7E/VmXGaAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6S9lxiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6S9lxiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFBC113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715223742;
	bh=5nL43bshEeRjpW7ruNXM4vp2JXhIMtiojdbM0jlYTbM=;
	h=To:Subject:From:Date:From;
	b=b6S9lxiSqN7d0Yuucg/dqSO5c/Lbz7VbF1bkK7BdMWA5yPqZW7rhgxhH2t6BRaUBh
	 0zAun2V8BU8GavTngBYJRYcHvfqE7Tvj7aEAf8NpV4on2fCvkS4J5yJJCQDNc+kRAk
	 Xlq3mPmRIA/vsVeHrECzBVl6mtERkfPjwOZm42K6tGNQNc7L349kJt8GWG8XM7JTAW
	 UsUpIWtYW/iruWKE06nz/jCVCeRTugRq1uiOTb1L1XDPB92xFjKii7qQtwLV7jtT3y
	 mEQOPwcXiGfwmsHbNAi8XKdYapOp4tSH8/uild288jDmBk42RKDZ/TGgHItz2UwZKf
	 +Yax0FCqkKcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7439C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171522374278.12911.973605726504636162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6220e0302d3b9b195068ee6e1c2b8d4deb1b31770692acadae9dc8bd6b830432
Date: Thu, 09 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715223742
