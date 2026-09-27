Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AE3502A7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790511034; cv=none; b=uEvXnb1irqXJKanenwwvluePj32GyezrpYUFR64Ft55xcMsGQ4pOyJhM8pFown4XS6+qY9DJSYISt24mPp3EKALyLm9f6FLsmjpiJPCQ2oeqE40HxWbddf2eOINOGWCAAqV7oJsWUQqB3pEE7U0Ss7gOND2wPLfPFuTSRDs2veE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790511034; c=relaxed/simple;
	bh=eLwX7vuFDDtP7+GzsdguGfIj+VMVLZ1kdpIZ23lWVT4=;
	h=To:Subject:From:Message-Id:Date; b=GQ9rDh+GyL4O4I1CeQ8ai+zYfomeMgIPQEQZ3QrmSm1kLnk4o8neN6gsIFodEPsGKFbFO3pnbxH3dWO/fRxjSBsC8zuA8CFYWrGDfMsHveyDRIi8mrKiDbypdXWWAKyY4Z4uALj0Oel1zkOGxK83PkpDr/pPTeN1J/5aHow3Ngo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plKN58aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plKN58aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE17C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790511033;
	bh=eLwX7vuFDDtP7+GzsdguGfIj+VMVLZ1kdpIZ23lWVT4=;
	h=To:Subject:From:Date:From;
	b=plKN58aPTY+5CaElGye7sIZ4T5pJrDzX9t9wpoI12OHKv5XWOXo5bZL5lkDLMzRJP
	 2m40E9Izrnp6OtVxO76fwR2vkJGbsuU8kembeY/R9swuFuCxgKetnyBbWAzaiWSy09
	 LtJNdFhkkT67GPf2Vh6cjYtFFcD6ly9srtjYunYzKhIDiE0jAUOoYKw3vT9giAkhBz
	 dee+5HCa8+ch1AyIHpzsm5JmdYrfL+FibraPDDLeL/NyfQoWx7+Y+eGksZoU23L5/0
	 3JdPeFyJ1dwxCZUs6Kk/KZy4QjqoE65fvlKTYJdBbrh0uptX/mDHD+9pv+vB7tGb0W
	 mv1zWb9TV29Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC3C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051103368.24853.12816050173558247881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ceefea452c51b3d979524954b1bf4a39469d3867d24f38ecd27fc3e0f983f8
Date: Sun, 27 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790511033
