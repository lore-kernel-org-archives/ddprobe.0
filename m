Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBA230EF80
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778475034; cv=none; b=Dg3JSjmFeQ08EDrzemgz4x0uBiX4R3U/riMQZnBejv/yXfZSdl5RoB6LsHDWY4tYOKqgiX9hDqiYTFpMJMLus0NJXkaItzA6C8U1Y160BYtOk4KX8wMpzl2RnWFVWFGri0J7ZRJiPtnLc0fwIaPMUSsqvxQZXUrJ06b/VDv0kWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778475034; c=relaxed/simple;
	bh=zdZX4iD/V6+vpxlAMTC0zSwj23d98unDiS9f3+fuuh8=;
	h=To:Subject:From:Message-Id:Date; b=FmiovUZO/UWJDcqHyUdAy72QJS/EqTjWOjMt0z8C66LOL/3IegwiIZ/FQeaCmwmxP630G4fOBA3GIhmwNps2NcGB1K1y0kRz0HaVHFZ3i3Fw5YFlxwq++io4lxwe4CrG9qN0RK1Jm6p/Nw/qAQCeFibcistWWeikNhWZd69k9vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr7l2e6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr7l2e6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE145C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778475033;
	bh=zdZX4iD/V6+vpxlAMTC0zSwj23d98unDiS9f3+fuuh8=;
	h=To:Subject:From:Date:From;
	b=Wr7l2e6bUod0D7ezqWp80AeXeK0Z+8IfIP7tNOCofAzha9xDiGjM1InlnMWnwLMlW
	 vm56Yk3gLa19g17i5d8+eaPsIS7BoLHyJ4Ai4Jli9XoJJ1TpkMId0k6SuliPwd85oL
	 JZ0nvaTS23bIn817iXcTONVVi7+mXQxt2aZElzMqTRJVJCxNU5S9GqMEC+nRZJD2Td
	 UY9O6DVAu1PjNsu2wxJI2lxfB2x6u9wDO3B1kQabt9LPEtSzyIAaITt6ZlNpbU3W5r
	 bMnCKozaslqu8/i2I7z1lxukpt92MVQkN6HYTIiXdbkMSmsB20W4gp6hX+r+TsHlGc
	 SETu/CbsXFrmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A21CD37B7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847503371.24903.441138906187995951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a01f7339f5bce06422349fde80a65add286e50b08d4b895cc2d55e546b8fa5a
Date: Mon, 11 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778475033
