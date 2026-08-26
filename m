Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CECD38425A
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787745634; cv=none; b=dr9hMgKNW4xiSOaluUp+DvkqA0+CWv0qbc8y2A7Ja+iLTZr+iFOZR97eKK3VtNq/oIjjmrUDxpRc5QxVMPkwEIQnPQXOoIglI1T6Tth94nJ7JPqa3tFDgaRV3aoHJthaOcZ3/gNV6fiAGHZzSX5u27roIC46S+2dZiErl7tO9T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787745634; c=relaxed/simple;
	bh=nfiK9mkcLKNWBNmNB/Gn/VCYBD2ggJnilHpkQBmClLs=;
	h=To:Subject:From:Message-Id:Date; b=TmLA5scx1vKY9de5+s14TBpqIF9R0HRBiUhH4+XHl8OQh8lb/c3ei/tucdruoSGhaySqUAV90igH5Mo/y6sd5RgVCZerhykqLbU9C1MA+NxlusIsSb0o1sM4Tk4a9u96fVkS/8UdsAEUuBjCvZZQiq2lo1ZXD5Itp74AcGjxLlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+6hPxGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+6hPxGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA408C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787745633;
	bh=nfiK9mkcLKNWBNmNB/Gn/VCYBD2ggJnilHpkQBmClLs=;
	h=To:Subject:From:Date:From;
	b=A+6hPxGBqdPLAtepm2oFpK2vNftDjyOc3iXc2VQkiuJvQYHxYZhDClKrERcNTtJ16
	 eJP5BQ9ct+mWzWFyhwlfZSFqjSjUlh7DOHCG+LmmzItSRJKIs67RaL5371qsY9jgvH
	 U34kV8Y11tKL0sNhPBwMbgyUosaP9aOSghcfFFXJFFKrWSrcfG3kXcOrR9zmfXsRqj
	 sIjcC9PKoKt4nN1bhjS6JNNxgixBRJ8Qqh2cqK3QNLqd62MLWYgbPKkE8LLk8jqinv
	 BcCcGBI0WdB+6OJdLfaEND2I9w5hdC1Bcp0+Fr54o22b/kJBUy0enib21eCi6I6KrB
	 jWOIwnATbGz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB18C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774563369.21619.4891716914026251568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23f5655713ddb26c98acdbef40cb35fa1462111e37bd07fde0d11b38c949aba
Date: Wed, 26 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787745633
