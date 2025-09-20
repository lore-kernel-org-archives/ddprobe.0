Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16303FBF6
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758345594; cv=none; b=r2HJRq344GD+S2uFu+jYWv+CHbNsiKmjmPtmxyDksV5INYtrYHdJ8KQ5z0S26zRC/wuaH+Mnp0vDC6lFF+fvfNuv0ZBm0+SDQBDuYYdaC66rO2A+1q0qn/W5pyilceZzT7NrcnX9pGXKwdEFxL1p63+LhBUUudRdG53chNNibWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758345594; c=relaxed/simple;
	bh=WwX4DmhOlSVL6TxvLJsrOZ1Q2D7+X+S8uFgZCRYRPmc=;
	h=To:Subject:From:Message-Id:Date; b=UCiL4Fy1jsMFSQBnWX1nOUEbyz4/JaDerwQ+K7eqSW3HQmiZAfiFNzkoSoPwontr1hHJZrXjmdsfqit0bySq07yCU25QeEzrvRyTLYS+1IN1YBvsqjAZ8PWw9WbZNHTmgvSFxRdKguJQh3exqnL+JD8aznAXC1hOBlQptmOFHks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1V4tD8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1V4tD8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758345593;
	bh=WwX4DmhOlSVL6TxvLJsrOZ1Q2D7+X+S8uFgZCRYRPmc=;
	h=To:Subject:From:Date:From;
	b=s1V4tD8yx9QHi0VE/XRF9J8Ba+HEC8HhwqlyBsY8+pqGixUyAdWedwAEFOe+Cdujq
	 6iK8lXhL+WNHAe2oxpEQAh3riUTwpJF6OBURkKCL46qaXTGrL+qckTZWvEGVTcloW7
	 Xa9pzMKwKdazHYgwESlUwXA7TgAMl1erNQ1zm7ILH+KMNbpjGEUr4LTEo0h8ZVGKY8
	 kC+rvCKWRCdLy/VrtcdiJGgDOgh6fO5vD5BsvXDZqr/Y19+67JN6T8tnbCBluz/Zq6
	 tm5/phOn9tbvCP5dS4LQpdEt96OQTdFzPY0G1IwXUq/ZheH33mFrWOlLcB6maOsVj7
	 qyoPER4+3RGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F97CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834559357.14713.7348299639961485852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd058f9819783735fbb77aa74e1dece1826073d2b3dec9364d9bd463eeff440e
Date: Sat, 20 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758345593
