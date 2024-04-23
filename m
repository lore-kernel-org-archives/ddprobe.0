Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622E763C8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713852623; cv=none; b=PVUtYM8bpzRzPYpxRXmuA7o+SWOTVUGeJAZ+rPWpVxe/PzHziQhjFDXPMXFDFh5hf6Rk6Zs8O8pSuIO0I5lMTorOgLoQe8zJA34wRYhtIWEywALUJQQQZDDahxmgi63phAiIBFLug/t21D18ZTcxbHE7b64M1ah5kBYRb0QyNm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713852623; c=relaxed/simple;
	bh=kIGmts7FUu4bXN4Fl4/fSHKrNgYYaXFG8xyPqpFEGbQ=;
	h=To:Subject:From:Message-Id:Date; b=JqQDEpbhFJIAF3UFGhSxrdW5iA2JZ1FKYwulIL+wS5QfOIbweHPGfU26Srj8rzhZA9PxxyMXAju7ByYelNRrrmudJrXYJp+A7ovWroSX7r3qfRrpkVsjJdLzDLPmY5ATq8/TRcGkSsA2BmC1NX5i6cEKU20afnV3JEMvG9LQWys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THADu+BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THADu+BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68BAC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713852622;
	bh=kIGmts7FUu4bXN4Fl4/fSHKrNgYYaXFG8xyPqpFEGbQ=;
	h=To:Subject:From:Date:From;
	b=THADu+BKuvf4GBqKGdwCfvrjX/0GLzkZtG7JZGQccFNxlKfqzZhXe55ZcoNyKWRx+
	 7duqVsqIrkkOlD/XHOBlrSndZ9ufPXqUSSsuDGbq6EmZQxPS6G2HwtE17a8A5c0ClS
	 45KwoYO3Ft4o76h8pr9EJ+O2HDLkYe+R5Za02zFNzZMUpfQc8dSktsaIrMCqbuIJXG
	 m2v8/3t8AxW0NDWb/d2R7jeAaiyLGdrkhNUjOx3iI2IoA1XduV+ABEKvClWKMVk4Ll
	 zTiEumyv/6tJe1QY+6POujCYGRSdfOzCgKX/zgzuHq+5H7T/5dFTDzeItYXyYysQWq
	 OOOLe2SFrt3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385262276.4328.14604313398989752780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bfa9257664385838ce2e62e9c347f9a8d5b0f015a3386a406954d5739eafc6
Date: Tue, 23 Apr 2024 06:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713852622
