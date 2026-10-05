Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E4812C534
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791159634; cv=none; b=Ez1csA21orq+O7x8Ki2Yyjt7vGG2D4zEaMTA+qsx9S48tQDdHc8/E6g0VHatlz7cXN7zatsKBLX/OEzOi6q+DyIJQKnMZ2kLt3wRiggggfPFv3wBERCwl0Y43rGbzmJ+dtSDafRcOAU/FBnvfYkb1dWC0r8+8pn0XzRrpsSdY4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791159634; c=relaxed/simple;
	bh=VDMwPmit1nw/8AX5/3QXoOB/vOleTNksgfEprE1y3aY=;
	h=To:Subject:From:Message-Id:Date; b=TQva4vXAQwxKVa+VXBSD5fS9sPMubN0o6JqSwElzTpavFPm141B3SUvfBln3tpzWOt2j/z0E7orQwzKttdGncqSNMQiQIfzrzjgqc7DDw0qLXV3YDODh9w2dl9VsN7fuIY/SWOuCH4XR6xP5s+Y1tM/gXnUZSt883mpZu7XLHz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRw9FsqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRw9FsqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60D9C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791159633;
	bh=VDMwPmit1nw/8AX5/3QXoOB/vOleTNksgfEprE1y3aY=;
	h=To:Subject:From:Date:From;
	b=MRw9FsqFYhKANv0Uyzq5GBfZSPVt0cSm5AN2oNwuEi1UTvgnnTgARnerXt3DNHP/a
	 l0ut+lQdWF14rLnxJ+163YIbvMlkHi12pqtUDOBq2BJLVcKnCN0S0cbHy1VoHjlIGY
	 JygW+RoffmEzp5mRtxNA3rBaijc3/ViAT7SGnNy/CKf5X76vJhSX2dM+AVp7X40bYX
	 yL2HXt3KbhWzibbdafN9IQtzKFEjcLdTX9h2X4oGxA2rCjEJDdpaCkdd7oQIQv6LzS
	 iAnzFcexJ3bTPeuhH2SJ/XezO0s50uYjWlfvQ6EOqoHcEDU9Fp+XzAH0BObPI8LVWu
	 QNhRWpkMhbMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE544CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115963369.22465.8909115033637749766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170821e5536a55dd90fe7868b0c1139736d0dfb98328b85ee962431ec147d0bc
Date: Mon, 05 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791159633
