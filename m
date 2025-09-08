Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC9A22129B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757310594; cv=none; b=mCIrcbUCCN2J4B5qwzSKp0aZ1NNm98qf1eNxBRAV11bD5XJgj5B97Xma4O3b+6cVToByUTnR8iNQU153PNYb7BCgipp/rDXK6I40tXbMi45Ej7OQkmqs41SCJ1IWzdG9vsPADy3n1C/NCYZ9o0XW9GW3Raazx9yovFjtYisp3fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757310594; c=relaxed/simple;
	bh=Osp/wdD0ruyXK3y2s+6DhB1QtbNEoT1OmtTFyYh3TGI=;
	h=To:Subject:From:Message-Id:Date; b=SLybHkLS+S9MusxJ6f8n/TIuZdDVUKz7xTa7eDbbfcSi5US3rLYE9lyrnxTgdYoe2YGfcxy2Zxmf1dQF67GIm8FbLzDwKEkE7+wgVvmcr8dFFlIlf38ZrJ1YwYBMpJ2Dq81xgZ9EillvSxB2Lv+T4BEelZcw3CtPT+1eq+Uzspk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGQZD80N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGQZD80N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0196C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757310593;
	bh=Osp/wdD0ruyXK3y2s+6DhB1QtbNEoT1OmtTFyYh3TGI=;
	h=To:Subject:From:Date:From;
	b=mGQZD80Nf9jCCpJT/XNy8VLVuEQpJzMTpYwbFfJticL+o9ggu0ew38/Bxf+mQzitK
	 NRN7UXWX/aU/Dn2ffVdvqjKiymAu1Qfe4Z+1GtI3ZawgGMrDakA2n9T1m4OInOECBn
	 dFryDXdyOifOWOBPX0z9iEYdgB+wSpLctqWtWgeXLRGZLDtKWX6Eo54gYETMxWL23H
	 //fG7tARmzGUBQerAxNNlBGQ49zsrb2Vl77mCrVlj2kLV9M/S/d+GukjJGpvU9/4ab
	 JsAEE0fPs7Ie7k8HzceVGoq2AxNv+A4licfsB8mm3+gZd+hUkSP+PCATT4hAoYMJP7
	 8qUk0CwweSFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D3CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731059358.26500.3066755483169375966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7252a3f4b0dd41362612aa95c0f99420110346ae9a8cd75277d14f036f68f513
Date: Mon, 08 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757310593
