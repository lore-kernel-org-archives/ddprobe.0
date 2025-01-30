Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CD0433B1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738241154; cv=none; b=fDbzMuVCosFacJglsv700KhzrMFP1Y0GRxBPOi3cX4jxXqGwyVwg8jA0EAFlYShTXq596tAnG6eGFIP0nwetoGR4y+m8Mwxq4I7PVk+pJjKsk/MS50ACIKhCEv7ggAtJo2OOznaRDfVVpW2S7iRujQxWMvI6CoZFVbfXjPzxOWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738241154; c=relaxed/simple;
	bh=2O4wp8JVnf0IxvSBGLWpKwz/8rByN/Rb6xt6gEoGtw4=;
	h=To:Subject:From:Message-Id:Date; b=fhMD5lYVBXp4JiLXLgckTp+pRDA1wCz8WXIyGTyimA1dvAFhBhnQbyfhzfbhejlGsVtN6IyH9pLjjEytYl0CbK+sWkjtkztwZnhWkamH16M4o8zQETjwS4awLAfslI7HbM+JW1Y6gN8Ct+Lc8tXpsThxtis6g/GbLxi1RnHLHhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luD9LCKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luD9LCKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CBBC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738241153;
	bh=2O4wp8JVnf0IxvSBGLWpKwz/8rByN/Rb6xt6gEoGtw4=;
	h=To:Subject:From:Date:From;
	b=luD9LCKGB1zf3ggqQHvNI4sX2spPHWj/9xaOhrXyJiwL/C4loD5iDYg3sfVKV2vRg
	 sZ2r4bsMEhQaob/c0VHyxIajDeLVSp+NYcaEQaKyTU4L5wfzmRB67hotLGIpEtv6ah
	 TCq4GiCEmwgzlppqRmmzgm+pAfylhnc+nNjiBhJIRh4M+nzOxKajXFy39qI//Cq72x
	 NAQhiPCO/E34HJ/AffccC66fngN+FTDL57IiabX+Lfa4CqG2djoZjlubfufEKmT2aT
	 /m1FYBZQwJbvtU2k1gReASNPicNL9FYcG6oiDa6aq6QUv/2HNKSgOCc9g2gih1JA95
	 Yk1ZwGQm1ovfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E41DC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824115363.4827.1487022257286520736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a67890df25baf5cb03777332d6a82e6800542aa6a724efd86e3c53f145c00e0
Date: Thu, 30 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738241153
