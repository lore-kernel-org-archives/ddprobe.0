Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415083612DB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790702434; cv=none; b=P/ldpgf4CaGYZiIVlByzhny5bNSQhDk9GEhmAqWRLdBPDCo4dMyFsJ27aTB0IbclMCZHyMFoNKVO+2jqMoveqm4fqFGsiutEUhwO6aEuszfzSCRKcCCKzjmIJBYp7OFPLaRyu+/GLS+2xvSBfJb/IlAUjy9X4boTfuNIYUSpbpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790702434; c=relaxed/simple;
	bh=iijY7MD4NAF4CIqXvZAEqytO3NauvJV+1aA8uXZR7Ck=;
	h=To:Subject:From:Message-Id:Date; b=oe5r5U8hPHRzrrw5SL+dB0Op4rG+htURlanybXEWXSO2Pf1dbO1qEEuHJYohk/0XLKMI5e2vlGoW4GioRMnZe4AKrcnoxbIBbS+/9OzgwZo6Zm/B3cWY/8S74Nv0y8hIXtMc/OWs8ubvjR6X8n/I9Ve9rSuAfR3zCF3LoKHg1yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO350eL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO350eL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C403FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790702433;
	bh=iijY7MD4NAF4CIqXvZAEqytO3NauvJV+1aA8uXZR7Ck=;
	h=To:Subject:From:Date:From;
	b=VO350eL5yiiGPlD4Ew1qk6lgn5L4UXg+HW2Rx2ePfwxWdrQKPtEhNQgVXtKMUkp7p
	 EMVHFe7D7ky5qCzl/9F68wVvnNImbvIaDOvBZPJ1Cn1ZbVfCZCJAm2JLMTKRhG4mAi
	 xch5MokfkeyI4b1XUP2Lv7CJPsLN731sxgLcyo3i4cdZy0cAqxhyj3tAyy7b36PnJy
	 MCpvSjwb4fuS6vp0UQ1YVSFnPSrN1jDSow6vChkdP1FDlXu5Ut7I1e8hVmmGYyAPd9
	 U7r81PI7vb30KTA85NAPyJ3vDfZHqkYtqmCHTa9VYXShBfutHRA5iJjOHfrk9Kvk5j
	 LG5TbTKIwsV9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA678CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070243368.14108.16496744211633773663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dba04770ef09a9dfae10a17f09818a9bd41181fbb2d2e0576c358a4bdd04f75
Date: Tue, 29 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790702433
