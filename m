Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EA52D6E66
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776901654; cv=none; b=BBeTRHZKQozyyi5CQTXjbk4U18nyKrOG0zXEqB0O9EyowsHA4C3WZVaQEwMe2JbonhRAujmW4iEGQmIdKCkvPgL6xyBZNGa4xfAmuKLa8DX/ZZoCCBeCEKErZsmHAKxVk1ZHo0gLTMYeAi5XNfZkBSvqGYGkhZ/+Ff/ynekhskg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776901654; c=relaxed/simple;
	bh=xWuHeie5j6MdV8mcsvcLUA36Qi66gFnS4BCibFZLLJw=;
	h=To:Subject:From:Message-Id:Date; b=HQeBvx+r0CuvlNCfYQW3U889n9AftDsFyVZUMWRamUq3eyfktjoUcGOFtZ769wKZCmx4gM4eJF5svzpeWKGNgUWY4t/eIotTa08nsqrekBzT6ng0GGifF22XpVZiKKozVky1hO2g5gJIg5YUyVCHbh0p3vfkbxfJNw5glcm3a98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtOOwLM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtOOwLM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1CBC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776901653;
	bh=xWuHeie5j6MdV8mcsvcLUA36Qi66gFnS4BCibFZLLJw=;
	h=To:Subject:From:Date:From;
	b=BtOOwLM+I3qmNKT2jvmKQm+WzwgY/IQ+lMK+l3/JS/3ShFNQLbsCVxiU9X3Ktqxht
	 d/ylZ7VJg4P6PcMS/m9d4/WqkvDjrCxAVhQrZMpNieyM4l12iP6Fhj/6wttwCV3iTf
	 k0OcW1lQKPJUqbMXeg1eUWEBDnQfjABYfnZiE5xjv8BVY6CwT7C4RrJeFfyZCyXgBJ
	 y4XUQX6yslfFf4ZrBeqBWOUqZebf2pwBaUm0sQ836itO8diOibEP+pHpDXuEjuTuu0
	 gnKtnWTKWWC2f8g7FxugMpyEnI79Ou4DP7Je6IDP2fbczmQZAHekx49ODNq2nWcJOz
	 2JuRtd2Ai37zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0764FAD3E2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690165368.22816.6674504750925384505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ac180d777c87601f56085d31b0ff4d1ab865c4b18ea6aa2622731130a29531
Date: Wed, 22 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776901653
