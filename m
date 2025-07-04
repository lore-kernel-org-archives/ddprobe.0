Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1507F360
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751638194; cv=none; b=JOi388L4ovRXCag6ud01h4f5yY0GUwFx6JAYaFgwZy6GhdQKVaeZWlVmHyqZCJ5hR3KPkxKClRDxW/+vP0b8cwGKV0LBRv7MPHqwf1yJKEYq2gCxte+FKaelEMhkLcJSB7/CzsPjtARKbASecOkhZOMAozB1f+JVinf2mxedvYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751638194; c=relaxed/simple;
	bh=Pw5wNTqPLlIN3R5UxS8dUpNgOIjWdfCwILapREuZWKc=;
	h=To:Subject:From:Message-Id:Date; b=JhjmMGBSWEafzcq5M2XP4WblSccVpGSYGeH4GnCoyLrHhsf03kMyD3r10C50Ni32+EHRBzM3rD0eLdoMNn1pJJE7293mSYyMAVy4FsC0I+bJmJiP1aAiKwROd2rW0R+B3VMQfetpGKI7y7oJeJLyDc1CM4Cs/uDLpDMh5ovADEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp6GgVfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp6GgVfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1372C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751638193;
	bh=Pw5wNTqPLlIN3R5UxS8dUpNgOIjWdfCwILapREuZWKc=;
	h=To:Subject:From:Date:From;
	b=Hp6GgVfhousc84q/HEDKh70AiKxpjYgyk40M673Xl8YdgfccP37adH+LcAafMElrh
	 iMB2l5cI+0KvBb045a7Didm4p2Gb1gjIbeJzli+n5OjfyYsdFhSgBls7tB/bjxJHyb
	 Q2g4nXwKZR2b83S+/qM0gEIRMyFrLJ1vMNhJ0oRJc1jGOuO7VXWafqc8fRxt4teHCG
	 /b7MCpeDlbyk4LRadgLmNx/RUETTZIxsVt6ljkep8nzBBn4JV1Ulva87oxgWfghAz4
	 2owYcyCIc2PdCVxR7Z5uRrHyS0KAK+iHUBZn9iVjxHbR+mBmUZf21hG55/wA0HNTva
	 dcRb+VziKzVYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6AC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163819357.14824.16672792524860791340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58aad539902f41f34dc1bbc83acae8cc1f8ebd529555775c7e8a8bcdf4f89cfc
Date: Fri, 04 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751638193
