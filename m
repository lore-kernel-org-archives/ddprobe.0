Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377091A8F84
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751750394; cv=none; b=UWscv3J/bD7PxFpqEOTgIKGFTORbbfZP2ZtyzjaeT+8ZmmOAhCeWdDolRPuj6nzYbAppqJEthIb28TQwwjuJ5umLfojz4w2Wdi0m/A3uZQwG3k89MR/DZC/TZeUDAM/Rqef1J3YSUKvTBfOLHkB0ugOofd/sQ4+Nlld0X+TRFss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751750394; c=relaxed/simple;
	bh=HC+rewiV9g8LFC09rPtgOXGHhfA9M63Kg8M/BLzAiXw=;
	h=To:Subject:From:Message-Id:Date; b=bniNXclfw07JkVw5yLcaW9agnlRqkD/jfPusP0meGiiZ2pOxM3b5L+PSw94uHmI66AFSvb2d/ZR8bwpgNwLBY2SzRIRJ91+XgcxsN2+65pkrbGKAdQAZ8c4TD/SNv9VgkJPcVZ9WCxZoqCSOpFD6DEkyGE9fZDfTgXjDS1mSakU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtFW46/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtFW46/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1459C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751750393;
	bh=HC+rewiV9g8LFC09rPtgOXGHhfA9M63Kg8M/BLzAiXw=;
	h=To:Subject:From:Date:From;
	b=TtFW46/V5ntl4SnQvGKvI6rJCfKW/Q/ABKC5+9I4vXIN02IIiucM7ZIAVz91rE8cB
	 oTJByD68alwye0+Wq9BnzwE8Z8L6ajONfx8KTI60ACXzeKFW1eOimNsKBDTPJNWr7a
	 pNYCOwbypzi8Sf9tHeqz7oX6p1Biy21R8pJGj/dbYf0HDctl8mo9oylumxTLn0GleW
	 ObHyowcR5LL819l3vgDRPoKCYhErJ1rpqppF2f9y+qU5SzKWajLKy5PMRumTkSDGE5
	 Q0YlRV13orVaF139CVlbhv1wmCzqXHmZFcjSuaqTgssWkKzduUjR072gtHrvNqto/M
	 5eRc6B0YwtrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4FC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175039357.10765.5098750239649821288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac675652711699e43308c1a3fc5f211fc15c28c92bd459ee9cde893913ee2677
Date: Sat, 05 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751750393
