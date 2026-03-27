Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB59F36C5B6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774585494; cv=none; b=eYniIZ4kh0i6zIKNoctq3ePAIrjeuJpn6k9btxAsDyQS0LHqn5RuoSk7+NHlWfC3M7h4OtUyuP5FapN3o7g466Oa9P3utgW2klgxHKlx76pMyJvP6enlv2qkXQq/LJiUggxzCRT9FnLM4eagXbPa3jgu+LDBk3H/1ZuYzPsv+5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774585494; c=relaxed/simple;
	bh=I+tQA3VC4XiG8yzimo9WRyEGi98h8t5ECTx4/EtrSMw=;
	h=To:Subject:From:Message-Id:Date; b=ca0WpUqExzNA7iK/roMKPOtHpjpV/pnBaNWvYkAiqB2Nq1NkLzhKB3RZPHqUuKUFkhtT9DGq7Pt4/dkv1J7NqAgWvD82woqqhwasWtHisTAQsRZpjTAJQrwOvluwerEVGmql3mjZ/t8eMii/67B6/n01GvQFKHxccj+bjeA9xnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWqzKpyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWqzKpyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B2C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774585493;
	bh=I+tQA3VC4XiG8yzimo9WRyEGi98h8t5ECTx4/EtrSMw=;
	h=To:Subject:From:Date:From;
	b=PWqzKpyq+HiSFnokFlhGsToSeGt4iK1GXHpbymlRRUOiefk6VNOedlWmbT8LSMA1/
	 UmZqd1e+lzkZJ5WGWuKTT3mrzDa8HO4+dUMBe1sM66/g4PmBrzI7a3QJ66w9S+qCR9
	 ibzPuLtwnXSJBTn2w80WSlfD93WROg1B/a5VUepTW+WP2Lv3eQ5l3LNJEOhZHClis3
	 h/vNnRqMi5oOzDyVwFqgZiq6+iUVniBsLUY2BLiuRqnNeKEVbVsNfx7PYHBXm93hsN
	 UlEfdhgowtXRkdcKNcO5Zppoio/Q908kfhAZw4mZYRP7eWmfwjaoG602g0WmMqcKs+
	 ZLP9ti3VfsQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5F10BA422
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458549358.17822.4801699791016063065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1cc14b390e07de1c56d35fea20a45b926bb109139665177b6b9a85bc2c041a
Date: Fri, 27 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774585493
