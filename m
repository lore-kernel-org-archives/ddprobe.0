Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1052B146D53
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772901894; cv=none; b=uIhERiZs13juY0PfQ8NkaftOc6GeNuwz+wemA2MSm2oPcL2vMXrj6JRbnLSyeH9NtxxYV8L31yPLsIXZftzp/PkN7qBpq29jhImIRhYZ/nTJBqFo0PrixM6+Cp7a7OuNCt/gs09FCV6ktCpEVHRTf6tW0jLjuKfadFHE2q9kTcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772901894; c=relaxed/simple;
	bh=TGvIAEX0S6ST4ghh8OY82gA5dnjwkB0lJ2GpUevX4jI=;
	h=To:Subject:From:Message-Id:Date; b=cbK2zZ8Kz1AHsFZwKPjGbvE9/flpjBsAdTU4egTJL1cbLspPOnP9N9vq3EktBQ1XR9CQgQghKH5nODEMXHg1+YMCXaPw17HhfIE/X2XoI93CaCVy9Y5wOIw7AUEAwfADyzpBXdCYulbv8B+ltuMeCQQw10o/FnXnFe83sC2h9cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FavO58V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FavO58V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772901893;
	bh=TGvIAEX0S6ST4ghh8OY82gA5dnjwkB0lJ2GpUevX4jI=;
	h=To:Subject:From:Date:From;
	b=FavO58V98HSRO3RnZ8fWvri/bbgU50UPvp6RnB/GXa2zdVRUXlNz7eDhsMHdnT/tH
	 uISwEVWwxZ7kL+OyFJMDZLb7h2gZtTAj1B0JugRp+ZinF6h4afZ5Kehs2hdDcnR+YS
	 KhZzyH4k9fVelgnais5GMlhDq2E+zyGi/v5uU8Go/OozrYNlYbuWWa6CTGKaZXPSOg
	 TcGg/pQyRC6kMUce61Q7kupdVN+GEYMfeweYFx/g5u0hBBXLNRgWOiQ98gtqFxT4+L
	 sHdVHjJPhYJVXRpJVLU/KS+yiprXfbQXnGWGBGnOh1ZkAnOrX8BPaE11ewnfmMr4RK
	 CMfVsF9fBY13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709F55101
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290189358.8846.7851165732074325594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20736adbcbe2753e0d42d192343a7f1189bb52131676a7454b27494c0ffeaae1
Date: Sat, 07 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772901893
