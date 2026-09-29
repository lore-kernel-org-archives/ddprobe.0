Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A2B4FC8F3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790698234; cv=none; b=iiCaCLqyurKsHoRBfmeL95QTgAuJRM6K7YNrKBUj1CiiqIUmblfPfMwCVKnxBs3LKE3glbsba5tfYvSKDvcVQ8GqpYegEw3KO+2Nx+QejcFKyoUVCWqwEw6wW3+KBXxrmX0LINmN0ytiAjGvns/jg3C22ih3FEvihQenxXwUAAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790698234; c=relaxed/simple;
	bh=Gmo0di1bfK82CgKj4oEpwqhbaJ6REDqBydM5CECqDUI=;
	h=To:Subject:From:Message-Id:Date; b=IbSrIJCJT2IwJAW8gM95Z4tCVOU1QWlZz3n/sVg820RAsFhauYcZQO5BhExXL+gklPap4KOCSWycsqncMr9hqIxkyZPruzQ7zZOmX888DzdmkXlNgTXgZNO2zD4AwvTcDuvyfXvHnL0UN1nQx51SeckipxjsaftQot30Gkj9GQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAleR6nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAleR6nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC75C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790698233;
	bh=Gmo0di1bfK82CgKj4oEpwqhbaJ6REDqBydM5CECqDUI=;
	h=To:Subject:From:Date:From;
	b=TAleR6nmJ5IG51uC07x5C01Wn1SWmE4HkMtQ7pUVLfXV3uJlCSqfGsRa263WsoTY/
	 qSDBfp0fNsMfX3qjYAKVZviyXwm1SUZJ+ZSyMRDv5LmTMGsSBPc1czEfWxoaSc0D9a
	 PYoxu3W0Cq1rFmDBATtDrUif5525f4QP6HtwiGPAjiNOU3zUgJHR5mrjzSXIQif98k
	 rATO0O9lII7fsfqSdwQXVVFRwlyBYSM4Uo49JR883NE/5gGMAfHKgTbLlXgltlBT9+
	 lWVd4dbl5qZfdmaR2Y8a5DIOJikYo+K9bBYx2BniRYJTaLGASuK8J94dwkWu6EW3zJ
	 j+/wwQ3rWEAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A992CCA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069823368.26160.804771800286587743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9713486cb5b73c971a5233c065e19ac48fab324e207f82690b9a7d5af84ec0b1
Date: Tue, 29 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790698233
