Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E4717D88C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719357803; cv=none; b=TnI/haPq4C7EGaUG0Cj+yd5GXC1auHOwHcWUN7PsNUZpxmR7puhCS4jm83h5EBvBy65wBwDGe/mUOiElFusdKahggV8Id/fS1UJUc7sCM4lzG9OCFOvBOf9faSmfhfVKpGEFHKEIF11fIuJN75ckqZEZSvX96FGD5AjwL37IUVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719357803; c=relaxed/simple;
	bh=zs9kXtnCBa1CW7bdL5ch1l0KOYBsRfwz2bsqgDrl2T8=;
	h=To:Subject:From:Message-Id:Date; b=fJrZLFEcVFeQV5rwyiQBiLOyceFu6mxrse0BCD/kZiqBQTrqb4fG0pf/o2wpyLYFPo6nQmkFNhNvAj0TkAXoecpXjQ/++sUSe9GWy10OqQBp6VdsalfczMhiB+mKB1lUT4E03V2AFXbqeqZFpgRry6uKzZBTTFEafU88+TnhCJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7nilakJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7nilakJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE00C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719357802;
	bh=zs9kXtnCBa1CW7bdL5ch1l0KOYBsRfwz2bsqgDrl2T8=;
	h=To:Subject:From:Date:From;
	b=T7nilakJCQzUDoo/BzL67SgZlsF0s2Fx2W+LA5yNDziEtD8jRzkw0EVLbnt/Kqe4x
	 E+ACmeRbZ4ul+ivtJUTKDYPjxw2dbjN5bUKDxQlW+eIJ1hHTilCLWV/Uj5T3PJqJh2
	 98D+LznqDuWsFFSrpfo90SKe84XTcQXl+LHgZTkBWFVVPaMZMvskiYayGJmL4E80LY
	 L9EhtRrKkQ26gita2LYh2mOlyPDh7M9uKvn8ugDgFWwuQ0VQqWltzx0DdvVKVirRhy
	 0y36FPhq3XoRabGc5ol4lYJAgqr7pOE2K8gfMVVBWv8jlHm9sEIkwmuRKMJsHxECVo
	 Dds56leC1MKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD4FC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935780276.13697.5616806422285592207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6afd09ea7b2cc460af6ce405b86b6ea445e36bf8536cd1b405fbab54eb6fefd
Date: Tue, 25 Jun 2024 23:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719357802
