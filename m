Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CF42E888A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769669034; cv=none; b=tTTbwKE9dGd6qokraRUXZ8+0EKKUahCC+TS1r1pmYsoJAoqJ+yXWgnJEuKHetlfSjaLiIyl2qmFFY3BdqimAIU/kkWScu/EuSm9o3yg9dIyZZ92pVpbybbRau17+BiEG/hJe0rjH9WRlRmrtCD2EtiiHoUXiz+PKPcOVybXX0aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769669034; c=relaxed/simple;
	bh=ZtvIbDWO4iYR+AuHW+R8BNfp7hULbF2fv9qdREPOgRc=;
	h=To:Subject:From:Message-Id:Date; b=CvanwN68CNw7HYRychtLfwRXEeuHwEzsR/wcomwTXT5mlUurlSwRYRBE9K5NsX5VUpxVz+s5ZZQTFdKpaOtLMHiSHN2u/CSYTKzK6HV0YeKO1tzeTnyb9qpa2jm+eHUYAfSh//FkthQH3X/MG0XnolvssV0KgGrC/0uf96v+4Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE6rlG9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE6rlG9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97F1EC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769669033;
	bh=ZtvIbDWO4iYR+AuHW+R8BNfp7hULbF2fv9qdREPOgRc=;
	h=To:Subject:From:Date:From;
	b=iE6rlG9pVmR+7yDUGUhHVq/q/h476hxKX0Yv5wTP/qAW7C6YSnKSO/nfAl0fYqSpw
	 wjxJHHuQ0G6nxzECIHFK5RT5gnP1WRuR/lld44z09I0iJAKlXDJkFuJbzmUJXP46pr
	 IwAxpgQm35YoycOcrVDSnEuQiBDm6mzub5+/5urKONntjKTVuLKDtOSkGlPL7vvvhg
	 J8CcXf8hYZx/ThZ2qEdJk9DiJl53Rsr63IKxzFMtAyq4TpBCGq2WD6nl4n0dl94IH3
	 Nbw7YybN7T1P3wvmYJEOCJ3Vr9yZXGCvjTyX+CtSsbNhJyJ6gwmK+ho50EbO0lVtQB
	 dNGa1LsGRawGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F959D358CC
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966903357.1569.8780599376637586803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3af996e42f1cb0051321b4ee6adf6eb4f3090706eff6d31ca7de849055b910d
Date: Thu, 29 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769669033
