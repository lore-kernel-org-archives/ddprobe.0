Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C36518FDDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782484654; cv=none; b=hjoHkCJt6/es0aeQDmzhj5aLaDvHEC5EsiAWHA9pwSpZTKHMHOzY/wuUvIegiG2ApRroKhc2yvlXs8XuV1bj3yr0wy3OS22WDwkeeZKlcn0yK1L5xoOZaxvfPWmXCbQ+k5ketZ91bwFZuOipUOxJOB5HASIi1fOiFvRcXCuqI1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782484654; c=relaxed/simple;
	bh=sNaTVBvoIzwKjSlzivf4S+Dc55ulPhSosLR8WJeZhec=;
	h=To:Subject:From:Message-Id:Date; b=U0lkR44WRZN+s7DjxYSuV+KaLjhdgTauWvPoTMM28lVwMpdvW5utOZBtsFqzdA7aHgalPyaqQ+AmLWbciv1vRiV4BRRcSQdFcBVtjt09ypB+6yRuSp9ozSuM6OsHg2k1lQfxAsApxJ8wgoUGU29EhR8iI7BjejKdmmMH3eW1fM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxUvtWvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxUvtWvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E770EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782484653;
	bh=sNaTVBvoIzwKjSlzivf4S+Dc55ulPhSosLR8WJeZhec=;
	h=To:Subject:From:Date:From;
	b=NxUvtWvFCwCQosRZwLDdKnf3yyH3WDtd51iep2YNINlMmSJgRMu6ChJh9qwcSQxM8
	 djI/sW0qTrIkjAFeYJrONfNZQCWhApJ/rN+os8rP8CcPPomcRw9pRPj7WGeLoyyV1r
	 q3sqcuueRGVGNgRhfqByXGl8jVKgKYigGVJfOdzC0+vkr7e2gNLqv2NdJysUqsyebo
	 F/Eco6VAGrf02uDwYQcdq9kqqmF9+9SwmAXhQEr3TS+LqctRYhzCRLCE6lMSwtgIMr
	 EHm2E/YgjnWmItaWmAWUoIcK1SZV8LbbsYEVsVBACdv030YrEee5K5pNFHMnX7eswO
	 8tfu3kgXWsPxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD071C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248465375.11679.5012238494891647508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d747301abb13b9d663e4c362122840e88df17efb10a968f3d4e36c224506aca3
Date: Fri, 26 Jun 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782484653
