Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD3BE5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713682823; cv=none; b=JkZzh3+IXcsGvRJOHFf3MlOC5MIxLco88xwR9eNYHKu2XSK5OoCMr+BaesDzXj7he5+58U9a0bGv8pndfhe8myQxl8oiXlZ66sYvnJdmXRxqkgqZUE9biECq3VnoUtcItdKTqtJh6vtBuKghwW4sb8FChj3CDt7F1qPmW7hiEMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713682823; c=relaxed/simple;
	bh=t6P1i/v1fLEq0RkRrK3D5zCfJ4TaRzs/ysoPutOhDfU=;
	h=To:Subject:From:Message-Id:Date; b=WdXL6J+Ymj/ER9KbT0Wou4JeEUPrg0qWsGEb4NSpPhBtn11HuQBw1c+lGeUQpAJpRhQpuwkmG1u7riJ/y7WXODMMCZ6Nq37QqTFXWsxkBnBpyceJZO4D4MnFh3RGoDJuoKocCFGQEkYBpMvHpIw2i4wS6lUZBrXCNYXZBIoQUJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrAdRUwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrAdRUwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F52C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713682822;
	bh=t6P1i/v1fLEq0RkRrK3D5zCfJ4TaRzs/ysoPutOhDfU=;
	h=To:Subject:From:Date:From;
	b=KrAdRUwPxS7Nzu2xDvaBQ2Q6H8T5OnTzh81giG+wib3TET0ISUz8jaVCjIsCEucar
	 +uwnzkIV0DN7OjwXq5g6l/Z88pCQHjXCtp6T0F2L6ryPnKjB4nsapl8pekF+ALVf8a
	 m5zOdMlkXEta7SJ6z4fr/ZxV1WjgVoKAuVVZRYsbU/PKfkZ6iyb5Rg1LLdyBbSF/hd
	 rX7wMbTumU4iUUqJilCQxy1GwAEKFEGlf/0WiuyFlv4cp9W5vv9zWlJfiUz5cscM3v
	 y6ssb+v4WbCm/ZQiG+jc1HazxBsCRUrZi1aHEkKGTuO7i0+cHlyRFw23gEgJCgKXiy
	 Vq+V6OMHbPCrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C157CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368282275.8017.12387439623632911301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95df24046d982af1c6d270333b3c5624e2a2998e5ab348c8778a58dcd60d1e81
Date: Sun, 21 Apr 2024 07:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713682822
