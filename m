Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D364233936
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791009034; cv=none; b=d6tOeWHUcKw40k0ibJ95Ekg3myZhC/iruNXLK87a2VuaLt0Gc6h74PVL6+PPH9ed0wVXI10jU8YI3W+EtPNoBgJaERNCbroHvz+V/kJ9Wc653pDWav2aFC30f7LLz1T/MPoalFzmcgqdVWx1n/f7WNHNxK/vFzWwxLWFpxA4nMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791009034; c=relaxed/simple;
	bh=ToJfkd+hoHCyi3d2DhJYkDxNJ4HEh90xbHtG2IKcVpo=;
	h=To:Subject:From:Message-Id:Date; b=PWNVbXlmSlPxlsnWAZob9l+2J/7vLr5+Y+vKdBKNC4uGVMXVINiNOk4EdBw+5qJdXUnzgtg+TpD/cc5tMVLHjo1Az4TfShVXuTJHk2X1p4JHPyLS6dXJVjaMUSk4qi1nVl11D4tKUUsHydwiMDeUN4a3ZM44zd61GiWmFilHiio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3/xzz76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3/xzz76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D766CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791009033;
	bh=ToJfkd+hoHCyi3d2DhJYkDxNJ4HEh90xbHtG2IKcVpo=;
	h=To:Subject:From:Date:From;
	b=E3/xzz76h+L1i6y0Fl1/SrgBEN+wy2xzyv5old9rGXiU+W/+hSakc3aj13u//TXu+
	 Nyd/OuR9PboS+NtQd9PmVkksnhJOOWRk9ZsApvbGdQ2uh9wf2DHK9TXEDhHffaeQHH
	 UxoHTyfDxcBSnQmH3MXBNX26mgl9pUJYrS7TXgO/fBOWE0d9YWM5IEnaBYlfNUr+eq
	 P6mEqwE3WvRiy3QtbidwgpPH0PhhPgWgs6H5xaUtAsI1eWXyHdkKPlgODvZgLdVOX0
	 WHrKyWvhQ6lLgTLmVUYLYMdQr80KU4H0CFAiIGQd0jm9YKcBI1FaWBSAz0mNUqEnu2
	 /KZQnuHoM6zUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF916CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100903368.7742.2024624926685125511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8876301f50713c80d20bed16de159f353f14df10ee5bcdd54ead9eaf9a83c86
Date: Sat, 03 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791009033
