Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482701534E2
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713801023; cv=none; b=JBPuRAVe34mDgq44t5faLvBEq4prua9QMiYSmAxgUNzCZ5cUs6Kx8nxoPcDQZ9M9DQaGROKNCtTI7ltO//JN64/0kKR0RigWVaOSDbuZB0SUYI4B8WwPBLCCFeyKb/hJEMlbUeBkOMWpJCmLZIfXmYndPspgQJrnxkumrrDbMUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713801023; c=relaxed/simple;
	bh=+pg20P8FuhPzaQF0rGB8xOD1Vj3efjNdPiojffG/S2w=;
	h=To:Subject:From:Message-Id:Date; b=pWoV8AYEk+Li0c65OY29Bn3JhQcv519P1lQH0qwuoXvlV6wyRdOKyMDqYTG4p/IodbMeNgZdUSL+sAiIIaQXSQCUbY8c8ew0HzSzR7noSjwK5fhwyTOoN2S+YSjfwCg0EjBKFYK/qAz3lF6Da3uWJ7fB9cVErzQzxONEhOh5lCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGFjYAY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGFjYAY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713801022;
	bh=+pg20P8FuhPzaQF0rGB8xOD1Vj3efjNdPiojffG/S2w=;
	h=To:Subject:From:Date:From;
	b=bGFjYAY/pLFasqdNYo8RIbEG16IOHj2jKwfgRBwXX+Uuh3OManEvu8NhDnyaSRQgZ
	 lLnGOeEaGoPOno0/m91NWJ4HHtsUsuk9tnkMg1aGCcqfQtCcanUrE98SjdOuhB3mEP
	 xciRb8CUTc/YsBMksG1mgk7OmIrYq3CntU5dPPoC+oQweSWIJ2LNSO7majicghQGtI
	 F3q+eCiQe2ZRTXmnk7JG2/Hps7VSGSkCi/Mjj3LJU51n9e6YmiW72G9Zdi22xsD4+j
	 f4GI9SVbGz4JASZfK4Lpgn2Pm7PL2VP3+nf4w/x5cDAwGibhJKYO3l3HAyYUc3AuQm
	 n1bKshPyD06Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E42C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380102280.4826.10847711465306567004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e281f057b0d9c34d2d9c79eb70a44b4e738c39a17fec3e4c6acaa174a333b5f9
Date: Mon, 22 Apr 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713801022
