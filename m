Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F12E18872A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771882494; cv=none; b=QPBE+rTRJK4skUuHaXQuHezLM3W4quRSYtnCsaHEw6WXCtegzCBedVu9l588Zgk13vpmxgsCUrOeNaxwM2JhshermvNG3DrN/Rsy2KCJ/fnIzEP/7DfeFChL1j3xoDQV283AhFQCXntOOMPWNb3mYKqTcTrvvU7q8W+1tI/3mls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771882494; c=relaxed/simple;
	bh=pP6Xc0NF6wM7zqWwoTqPH7WolVVFKY4wWEqVJCJyO04=;
	h=To:Subject:From:Message-Id:Date; b=TOL5XiXzIv7Bvwj5PqXb4iKKtSBVEixxFVHz3UcKCzbSLPiNGcREIl7W1+CSwPLEiuJ1PJR28raT7INNxJFu+BZZJHyydqvzcKbC87z5dc96MiS8Dfk2M8x+JMD1qQnDO5ZVQm0lTiIR5sjkPyw5d0i+RGq4d+hxDuaOZm/KYeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kl/j6V7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kl/j6V7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8498C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771882493;
	bh=pP6Xc0NF6wM7zqWwoTqPH7WolVVFKY4wWEqVJCJyO04=;
	h=To:Subject:From:Date:From;
	b=Kl/j6V7wD5pVcMcV/QLtBqX+Tq3LavS9uCHDmX+lNRS0EFbKqT+R6VuwLKAMl9pNn
	 Nqb6JF4fDgzroNRP4ZNIG51VWODkhwKfwE8yLqlNZwFbs04uCv5UUKwNyydGbx1tHu
	 QcOLGpGN32+PO7vhsB9y1iKOsDuM1BIoRKstGfaJgF7PWfZLnxCi09P9RZc0PGdYt9
	 f6j17VBIDdqqSvpQf5HLJdq4FHhEcC3cACouVBskEINQS4PQvhsFNpYPYhfT/MEDFX
	 tjBGTusccp+5OHK0xJwQJz6dD6YNiFPhfvd3uBTVqH2DxyoMF73ILUkArUxb39zcS1
	 pVk7CIYLFlQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDAEEC287
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188249359.10187.17799621219076783748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64aa8718d3259dbb4980b94a982901a44f56b88110a88dc9d3f52a070904af1d
Date: Mon, 23 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771882493
