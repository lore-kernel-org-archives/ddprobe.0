Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBCEBA42
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713230363; cv=none; b=naVE19+3Y9LGBRlI+LtKbm61h6U3adEeW5ETh4dHS+puxpuyHuklDGwxBFuN+6rHWq1FTpPc2lRpAqQBS0bKxjW2AjvJfozkwKwChKiRKm/YkIZt9uMwCSWHDBOpVR0GRHQpoEJKDwCQBjyVU6EspebQDhqKTfzI1c0TK7vg2Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713230363; c=relaxed/simple;
	bh=TYBc1TiQl0FwZenFq/acBDqOe+X93BjKuZMelBX1/ts=;
	h=To:Subject:From:Message-Id:Date; b=i8BLSqKNjXHsDtD21UZlzGGo6+jO/V3UFeuHjn5KrXmQhNw5YGxI3zbAQkKPIIvfSi3VtwTmiLarEK+oNvTV9kvdvWw2bbyYOAGglMeXd1r1IbX9pRxv5T7dYIa9h222jaOPBr1WYTinO80rPhtwX/Y1wQ0q+yGK8URBF9h+nUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRJP3Kvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRJP3Kvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CD9C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713230362;
	bh=TYBc1TiQl0FwZenFq/acBDqOe+X93BjKuZMelBX1/ts=;
	h=To:Subject:From:Date:From;
	b=fRJP3Kvmr6ZZJBjqFeYFglgivkisoZSbFr2Dge3HJXhxp8fOPaqijTmo2Vl18tqTX
	 giY2iLAifkFNqcGbjels370uKT06K7mMn8bzQnZ2IFTFBCMW170Kk6w42pbJHN/ACv
	 ADKqlLSRl4H2WUKlQcWYWl1ZlKBRjKQwlwxlEwQNvhxl8w8+cQj40aBJeNeQIGg4IZ
	 yGtoZHh8j3joU8ZZ6yFTGTKctXIa351GoJPD+Ll56yid4xdmDitdFYrghPYL3lg154
	 ZPuRdvFUKqhlkmPpTMZV2ma8nF+gKcHXxbROWiioPOgrwSmlDKGu46keGQCh0UZrKt
	 7Gw5olxLqkaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323036277.396.5637482245693560188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac87a35368abb8739f6cfc20522c75a500ca7052634c36ab050d055487c48577
Date: Tue, 16 Apr 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713230362
