Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA79BA34
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749688194; cv=none; b=pXjiDVd5VmJkM9VRpkZ0lLM4+E03sYhOBy+ci6UyWnzeSrnQHMsqe3ddQVlM9b/LmWyLn7Fj0WCXIkE6fOFGV/MOPvYCVE0JkwJer1rcJqj8AdeGtCWloLy2Vk8YsTCm/Ek7RWdrX3naBXLjOt5+xHs7bh/oxKT7hkEW7eyWFz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749688194; c=relaxed/simple;
	bh=+IRSpBbGEeF0Jay+SFURkqysCt+1KWQQ8zb/TPzX9Vo=;
	h=To:Subject:From:Message-Id:Date; b=jYF7+uVaNQE1YJOw8M1beHsOquu7eXbe7b5nbWk8/iV+O3rjs6+x+RBEX5xwVtFcVBHnAFRQN7Pq765Qw3W1D+P4mIU0MMK+M0r99DsoDvdK0B7LYakc9jwOWsnxVoYpHGGpkkFZ9yt1SrcGdDNC/XKkz0RlhfwABqAt/AD1IB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7g9CMvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7g9CMvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749688193;
	bh=+IRSpBbGEeF0Jay+SFURkqysCt+1KWQQ8zb/TPzX9Vo=;
	h=To:Subject:From:Date:From;
	b=B7g9CMvfcijBO/ArRsWH3KaoRKIlHd+15K+Cmv/jWaGYihSo4zSn3XUKG5NIYnNV4
	 ZrJNNWouxgTEwW3Hx09hHBo2L3cJpFBaAcOVNgBAYgmlVhpA09AWKURehPeR6uRVJe
	 iWQLXOGjPswrgk3SONSDfa4HckTWktfyHBmYb1axXoXI5B3Bp4ocfFR4kuIiB0uD8F
	 eEAsJEEU4PyuGfxHI+dHIapQAmt78vaBaPFnDGyW3QIGHacuVNnuIIfPTQBeHDajHk
	 0dbes0gGijF9PlGCI3YSd1lhUGzdMNXlnlR4g1cfOkuA7eJBsY+E4Z+CJ9gVjTX9bJ
	 naj9530d3B+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7EC71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968819358.14195.5701488131092167996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2905c00420b1ee4a6aaea2b0cb95a692cdfb44daa8c631c3ad5aba4c5a1226a3
Date: Thu, 12 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749688193
