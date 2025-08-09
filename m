Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43961D7999
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754772593; cv=none; b=sOKttU4hdYNIdd2DPwkX+kgO70yqJAEX2iNF0iGHN1hIzADTTWv10uvkAXIIul9mA7zdPoUJHZHxdo2KJafVYkCryPYzNYtD1Flo6bXZgDopWYWoZkVhPG0fDd7uWwK+8phDtcAwaDu80nLzSLaTBh2rM/VmPLFRA6YLlE6VJ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754772593; c=relaxed/simple;
	bh=CjKr5rWzP1cseuamkIM4C1vE/qYXUB92I7e3wd37dN0=;
	h=To:Subject:From:Message-Id:Date; b=bSqoo47mLESoA0RvzB/SBeKyf43ARDEnBjfoCP17mIrwk63yu82ESqUzABvZJ7D/vUGo0SIQa6+mt5YwVggxzv+yoBaByuBRLt1hTyEzZZAeYqTo7uFAGACyxhtU+8T2n1K9RXGZQ6LmLin6MxggI8wZamic2976997+oAID928=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sI/u3kaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sI/u3kaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754772593;
	bh=CjKr5rWzP1cseuamkIM4C1vE/qYXUB92I7e3wd37dN0=;
	h=To:Subject:From:Date:From;
	b=sI/u3kaTPdGFWpDTRkWdPAqQx2KxNXfAhO+bQV04cNZZNR4J6geO5lGaVgCQ/WO0y
	 1VyVKyS5Fy4VefQz0szK5GXb2w/c0iztWcGjppURqQmJ0exN1he+jrlXkMkhXfXNgN
	 6b0QBTUXmgiGewnn1qmz+wrSszonduKtCBqX5LDxkGIuaBS+je1cr9Zl6xvlba3QWl
	 mUNeYY+HrDk8WzrsrpfCyx7kysnmxcLUv+5k96TZoVZp9DXMzmtOAORU5AzaLHZy9t
	 UwiZevud9Qdvdqpz4XG14YlYEJilMBZNvOJ9ngolkxTub3SooyWcg2s+XeT6ZS0Y7v
	 ebBFeT1c/g+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477259357.3178.703165760343484799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f9aaea0eccb4a437046ad8da94df05142b14199ceed6425898bd12be205ef1
Date: Sat, 09 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754772593
