Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C661B5820
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727810754; cv=none; b=MVQwXW8f7OmWcLT/coNtKqBHnufmUG5YQzbkJ5cHIkjWQXH8HDEh8ujXmx1ETgiY9FyUjNPFh3MRwd5wILXSoC0VmfzdMrOZKMhLdfM8IU0AtX1sUO+3sqKgBnP0rqKo2XrRYcEMngUBcqaeuDOAGliPLdphYFHs9jlw0R8V1Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727810754; c=relaxed/simple;
	bh=qZNtchb9bO/EqXqu2aR+58n3fsdS6Jzj0EKHWXQ3ktg=;
	h=To:Subject:From:Message-Id:Date; b=dDAJJC6xQfbCQt386E4kYh8JFJD87EHs/KtOgIJ/S80MAUdCBCA+xqlQYx7KQirMeuui1tYlg90vXRpBuwVt91deLT3BjwpcHfJqM2m6AIDx6evjx+mBJ50w49jTYtvaaUuYioxjGGFqfefyGBzlJYTbeV86CdiDGRPItKmH6o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYxF+jrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYxF+jrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4033C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727810753;
	bh=qZNtchb9bO/EqXqu2aR+58n3fsdS6Jzj0EKHWXQ3ktg=;
	h=To:Subject:From:Date:From;
	b=tYxF+jrA5xc45c2twVVe4b/JvnyOOKqSAX1z4APjw45JQDdO1BB0wPmCbPq6URFwL
	 FHbW5Ft/oigd78Lwt72XlB5gtxusEHA3CvBQg323VVjuqxZXwMgcLHU0nxNokuuTSf
	 /JXZFjTzWPQenPPo6IBQkMs2AiqWpKvMKa2KGMVJqdaoAeXeUanW4oztomU5CMWqps
	 RIW3147dPpECfD7I98v/ZJ8afTHwwL8iGHSPUT7O89gxI4mRWmwKn9lIn1Ig8LpXoN
	 o4NI6kypelG9Hj/XY01v1QooW7IQ/ABmnvfzjLzjaElkPZO2JIrpGg6Yhsx0Tx7RAR
	 XaYs3k/LUkHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF83CEACFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781075369.5703.1748507627171841053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd9a2465d55906f1acf67752ee396dc30f3d4917b649130b065fe22b0554fd8
Date: Tue, 01 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727810753
