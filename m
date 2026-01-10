Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F98C4A0C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768023834; cv=none; b=u3Oi8L1ETQDrC8GpJXISjLPcRGYLI51/giiE19IFZZ1l+PsDjK4Ko4oi1rhkAuGNp6rYWeGMwID97CtgTlFc4BE7l/MSHo0uy/pcSRrhU8YcgwNiby7rbit+5tT95tzPUgyO9UvUJa5/HJcf2w7zzIPsYT2JKp3THGmj6O+RDok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768023834; c=relaxed/simple;
	bh=08F0NGp/D2BxjDqvQqaeGuFscpcttUkhz36PftsRNL4=;
	h=To:Subject:From:Message-Id:Date; b=Dzq09fVNJGdzPBBXXfmXwGBbB1FvoAmIrqAxW21m2vHUL7maN832YnVzYA+BHT6gJBEVhCj+beiX7KbjnGExluV5ZMUJD69tGEcN4XtRSNMzAHtgyzExrASv6ECnDvrsngJtqoszFb/6B8Z2xXboibJFoQxoqNeVt0ebk3vpylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwmYAwcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwmYAwcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1739C116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768023833;
	bh=08F0NGp/D2BxjDqvQqaeGuFscpcttUkhz36PftsRNL4=;
	h=To:Subject:From:Date:From;
	b=AwmYAwcAfI9/p6agLjNxDFRyJrZP8ZMbwKmv1ZUKxaL7eXAO504q9CHyWc9yk2oaf
	 2hh+RnvYVg8KyQD3/tc+99i/OS2rc8Ww0WUEGIqvaBYE2tskRJI3Iv6ly5p33GGC6P
	 +vLgMo9uCXREFiKK5hr4o2dVxdaPo7EQgy8guAZ3rjJAajahcXOYabKCcY3IjlDgVK
	 TWzl+6ZcFJzuXRhqAscTF6UfpDGIY7TSkPswRB9oP7t1RBUdTgzhcH3CKykC2byTTP
	 fE4mOyKVdNOZadvC4DbOnNgwVzPDV01feiF424Onyy1aFugu/uytzE9aqvqWCar2OR
	 GXyvkf8aDAsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76AD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802383358.14369.8764071778856191806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96175a2b3c3ddb62390a8114124f2e9ad85577fe8ca52fba410a4bd7788a8bf4
Date: Sat, 10 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768023833
