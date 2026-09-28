Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3643AF650
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790621434; cv=none; b=GrCc4yiqEhj7xMD6KYyHzNWww69EYyNwczxVadz6nOimHsSsPQZKZIVgnC0k94U2+0tJrxomHlHv+j1V6015+EKuCaM0YNRS2JKf/mySps4WktUfdIbkYBP1GxoiIQjCT/MNzQ+1T2baxGVGgtlP48dFbEfZToWE+a/avO/P3RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790621434; c=relaxed/simple;
	bh=s4YwtyV0Yz7JawdCk6Rp5x8wl6j3xT8W3Ct2RzGcy8Q=;
	h=To:Subject:From:Message-Id:Date; b=jS8gWOdAJmNRkFhCPynosW2e8HT4UzWaWZQxH1xdJWfBLv2TDJtwhNw8XLqkBEXoos7+v5d5nGUv68AM8fu/2j9VzOZdnz+q6Jx+DqHgxuv7OKchyruV5+QqzraRAY9Rw7xpczlSvv8DbjBrxlKcKGqQ5OV5/jAHwmDiv2S/KM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GooR46YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GooR46YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1419C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790621433;
	bh=s4YwtyV0Yz7JawdCk6Rp5x8wl6j3xT8W3Ct2RzGcy8Q=;
	h=To:Subject:From:Date:From;
	b=GooR46YPbVP4pbCpm+7+g7jL8GXwsqgAReSk720PYw/71GRGea+dKuN6wX9uhMcMp
	 lCnoiRPrLJHtEEqn07iesUD1O4WzqlKUKZp1oPIjOtXB1WlpJZp8MrObxj3abiUr0i
	 HjK8SJIMbUGihsP+BpE/drTRv6lHbm55k3LZff7IY6QClcZjuD9ytkm/yYgLsZ7666
	 c2nk0LoXTieH4o4zVy+IRKJtms3OtS9pvVBaRiMwwn7Vb0mOrN2TH6qa7SXxOk8Gwh
	 2Yvx5yH7pnTjfFA4m1hK/jIrjT11b0nGNrt1mmL1NIIT04gB/KnoSwdVq5Xor6cmWO
	 kHRc2gCaDvoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD87CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062143369.14984.12608048991220806379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a677ad103139fb72945264081d5dad39c4a1abf1b291812d853167ee6d9e572
Date: Mon, 28 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790621433
