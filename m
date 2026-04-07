Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F043BB9E3
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775571936; cv=none; b=cmBPGNNNYx9N7UUXBE66vR6sefj1MEy0p+sn7JLtui8Y6kd/wEJeClmiEI4/KleFa5WKrDtOQch2I6LbbjR/Jx5Zq0q446/Y2PRBMXPqaMTD1w/M7lvW+NsSCJCEEFhwiICl8G3iVzuvLW4fwitRCXmR31u/TBhwbJNpVGvckoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775571936; c=relaxed/simple;
	bh=A/CkuTQr/XRM1KrBQeDAdS08z8zv9ae63lMVFESXhyw=;
	h=To:Subject:From:Message-Id:Date; b=OoLQrPE2wU8YDXfHHlaVEMuRYoXr8dZ+RwJi34IBRZSEgcBD0zhwmIhTSnaAflkPucz3H/Ke7yZ9nnIXUrvmHzCm3roNrBpKnPppHxYtdOSZRt0qXqHWktwTCjWBuJdLbWlN74QsAkfmDsBxfruRIi4LgqkZlQZutaZ/bIR110M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJzAG9wJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJzAG9wJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E3C2BCB2
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775571933;
	bh=A/CkuTQr/XRM1KrBQeDAdS08z8zv9ae63lMVFESXhyw=;
	h=To:Subject:From:Date:From;
	b=MJzAG9wJSJbEX4QI6xjPnUGUdcfDw6dnqfkYNyDA3IQiWzKKmNlqqKQa99p2dCGW6
	 KURMxEsu70114Snd7abyFNwym4Dy2A3osl89KPor3lY4L/eEbunRUuNB6TvOuDZC1s
	 WHX1shks04kyjY9GSbMozEwIx+IW+BJMqeWIICzIvK1Al5X3/SBZFFvqHlQQSbWmdd
	 HapQf9PL1W5tRKwnkowXByxOR87QcFK8L4ZZjQYvZklCDOxlkUt9G1+3+1ktpfKjqb
	 uLKe9p0kCKiYRKipCHyen5ogFogJLD4oDalD0kuuOIjKT13Ucq7LOcw8KUc97nbIjm
	 eP5dA7upSSnyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9F0FEEF49
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557193369.20568.9728164521824782248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc038c73a1a7d960edec8552d635a8be9dd09bd61c1f46a61272c4c93e384f8
Date: Tue, 07 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775571933
