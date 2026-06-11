Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E5367B71
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781208994; cv=none; b=E0ajzm3p/KdSJfZ77EABeE9j5GiZpiM++8ibjop0fSiCrwIKuWpKc5/44jVHZykdfQInuQ6yM/mA0sQUyf533/Zm3mSaluEB0iUwX5sufuUyX3uQQyMWO7btahtifDxKu8Gr71jyFcbT+usvxp/0yEluOX/cw2EnGY96iKzEE6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781208994; c=relaxed/simple;
	bh=X1HzjiDL9kZ/1qlmkN3865S5Ju8bIP6Z2m/IqHuFlbw=;
	h=To:Subject:From:Message-Id:Date; b=rawLl8lKcuzM2KF1ntsHR7AOE3a3gDJudHQNxayJ2K5uTpIZxdbv+ZZVyHULlfOjObZnO1KErxEypoQJfZvGi0R+cKZhEN9OrtefgxdzlQDmqiV+p1cYAXdjXToT64qYvk8vG77MMQjzpqMnYYeGrlDmhbThnFCkGNoaDvjb+2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxFLubok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxFLubok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA51EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781208993;
	bh=X1HzjiDL9kZ/1qlmkN3865S5Ju8bIP6Z2m/IqHuFlbw=;
	h=To:Subject:From:Date:From;
	b=XxFLubokhuFHv+qM0wcgOJmFMwobuyDGCLl6xjBU33NEpHrA9nzL/k0LiCNh3KaQx
	 gHoSaUSLsc8OlK16d0j0xM5SJ4/DFkg0L5eSQlNYqY3Idw4uKq/ERXgZshB5zUr+/d
	 49ES0LurDmHO/7RwAYHQBykgfmc/aWYZLsSd0IsXPlKzPss8bUminfbvdqup/Y3Sbn
	 mNwB+zPkTq4rZslQT34dlzAARI4ywpxflSydJWw8+jHfOWMo7cJb4u7UJwEUq7J02g
	 l1oi87uS/pnmN32PnZXJ04s8j1adTYd4AH+rnc29elFARpxjkaYEpH/vsQ4Iu+hs3+
	 wEqWe1ogiH8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2ACD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120899369.29456.11850070555142221673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887bee09cfebba2de3da7e4892ae594e73a400ebc64d3e6ebf963fb000fda2f1
Date: Thu, 11 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781208993
