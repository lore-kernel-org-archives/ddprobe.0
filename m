Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF0155A25
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745147995; cv=none; b=Fc6ZtFp3m5gUc3FspRNIvqo+0CtD/Ol/i3+UU8TzRGHK2aXIXS+IIn8UNEp0KpYE4RWyfwiT2MYcWNBLXS0h/8xITdHyVQN3peCh0K21WkXXPl9R+JmCjfy8nTBBdUGjorC81Yno8WC8rxNh1Bf2JadMnpCr3+PQ3ggHhQaol18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745147995; c=relaxed/simple;
	bh=H7cG/S1nvJ5oPDdIvz6VPeJQbvNIPLlPlSddnsHR/cg=;
	h=To:Subject:From:Message-Id:Date; b=jI1g14vupk51iEFexfGzBEJgNIyq+6Oo0UnzdnU3O1hRIFE9WCC6KuYbZUuONJQdKt1+QTRt48wWhXQLuLdjhjSQx7bnzPzTGQCaMPXN4pHgAKGDDfzbanr+ExXg2aAULMXZuiqwz4Hw7IZstxp0z0XPSxrgCoI2xJcqNqG0tm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKUgLZMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKUgLZMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85DDC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745147993;
	bh=H7cG/S1nvJ5oPDdIvz6VPeJQbvNIPLlPlSddnsHR/cg=;
	h=To:Subject:From:Date:From;
	b=VKUgLZMzmpN/QlnDQZEV9Vkc4bKV52rf93UKb8FskujWBMjavJ9lby/0h77C1DQ6W
	 Us8X9ByQd1gP9QZ3nsbDtaUijnqxY1WPhp+6Nb03r9dUi+7i6/0JIdO46kXRMhMoMc
	 9aLhsw+gBuWlTsYYf8qDmerBbD77+tkVEiMd9CXMwTFLS+3aeFeBXWqAgFnH0Ht5bz
	 DT3mvsrt+MoI9ExFBiFT/OhDLaQJoZa+h92trXPFzVtlSR8I3p32dEVn66HCAJivPU
	 WtD2HPcuH4iPSQ/y7LSf9ZfxDR1z6HmEk9HUh3Z08bKofEmDbu3GYjW0PHb4IT2B4C
	 r+0x/6Ca5X5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B73C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514799359.22610.77989073829866935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2cd543173979986aa705cb88b8c9a38f889ef51b0bfa333450364553f3960d
Date: Sun, 20 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745147993
