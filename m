Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B022361DD7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763053194; cv=none; b=cUtCKtOOEUW4XJbIvqaapsFE1MDZAMA+I2afR4HFvc0kbX1coiFChIvRzyfI2n2musNpALwNbq7+Wbr/I3x+Kztgqs+sHgtyNjH6fRvYBk4AxhxGSAsI+MESk0WFivDjj/GVD9sPniOidW84xqwvRhB5QZprPzCCqErL9q5kgLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763053194; c=relaxed/simple;
	bh=OMsithb/nVF95RsoFh7vmqceFKdeHVBzl8nmoXGUhMA=;
	h=To:Subject:From:Message-Id:Date; b=BOB4YFb3nj4WilraDBsxcvcGoxB+kFMDkKRRANwwyUqsMqhZq3tqdYSqaNr5F2i8fijr1addED/PQP4OGS0mcUk6vjEPkZeDpsS29vZ9xzf+3tXpwr4uZ3wAtKk04F9m6wFINvpLfUC5sfYiFV2RbOxfWptfRKyg8ZXz0Kq5JJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBfSenkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBfSenkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9988DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763053193;
	bh=OMsithb/nVF95RsoFh7vmqceFKdeHVBzl8nmoXGUhMA=;
	h=To:Subject:From:Date:From;
	b=mBfSenkmEYZOIYbMp0lymNg5r7gVEzaYruHlwbf41BXYesBxj/lLOa/pyY2tPK5V7
	 bfBks2HuV4ig8MOL1LEh1afPveOGIjEHc8cagVUcJ6tOVvo3tDbeouQbLLJ33ygkDe
	 BZwXVjJEAHR3x3ayWb4+P+QouQmz/thHg6QIdv+eGAzc832Xz+YLUn4+NB47hIRFq3
	 9WxI0MrWD9cz38sbHIr+ZsKmwUKlyZN1ODOH5n0HOrgZffDBvxlduv5OrpSsI6QHb+
	 LKAMjWkocJkl2g7mqcJBl2XpBQh1WoqtRq2MrcBGUCPvarNwe34lQkXbtTwAGetUkQ
	 hgS/xrOqgmRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F470CD8CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305319357.4321.17211919394791004154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d8aa181517062fd28dab93a1d9f78ef8e7722ebe433331b73327e5b0015e0d
Date: Thu, 13 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763053193
