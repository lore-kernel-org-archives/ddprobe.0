Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33599256C84
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776610054; cv=none; b=loLI9WGPWOgzX+VfI9K8KSwm5npGp5XhqDoB12CEuxXHxf8rqBycSG8IF12Ekq9gpRmNhLCfkmIt/N2w9CobzMdlGQMmqZczkFbf5cbyb2lmOL3en8dubTa3SE+/SVXb7lJUfW3fHwsHGQo8C5V99Ag0rTT6xe9wW4hyvhQiPh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776610054; c=relaxed/simple;
	bh=CmIF/mjmgS1luIw3LkXXdtbbLB5D33G49JGKc4EA+jQ=;
	h=To:Subject:From:Message-Id:Date; b=UV3Ojg85QBbwew8UUP9ubMbzuCqzChL+GKGgXUddWEb40g7W+OWmvE7XpHciX55Lh1O/MfHumceUNZS2X4aUXBaKKHdQwLXqLAdPg95Gz++g7In417L+LV7PICnbQp2HxCa3NA/tANmeuhjsF8tAjyD3Jtb2fhQQoPbmqS2v2vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ2G+bU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ2G+bU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC193C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776610053;
	bh=CmIF/mjmgS1luIw3LkXXdtbbLB5D33G49JGKc4EA+jQ=;
	h=To:Subject:From:Date:From;
	b=jZ2G+bU+Ee+d63cy6T+9/ymbIcdJuJvhvOaDDKGFecbIYXooxRxD4bVnj4hxLSfgP
	 8W2LaEwqNUqNbSLLii6glAHBgBmFRZnbgFngigJD7XDArZfh9qYuZwylsa83JA7iIX
	 v1QsZaSUOA6cIOaA1b12vAhFlCYEXclzFn0btHO+5ZU9m9cRckBqgNblSkN72Rv1ls
	 1tImyJyaKiuVPsHG6mfOy1Fx/rXO6Lv6ojb7OcrL7u/9IfjO+zfZo5GNDakTszcRCN
	 ujRuhx7wHjf/xO9CZFW0VWW3o0R5+/079v9LqsQSl+BYYYzTYltBnwCtBY+aSpL12J
	 bRbQvd61zocUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9791EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661005368.11511.16527186204580018902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd88a48934335c1ca16f2d53c6e7c75815fdffb1a5535691a47e17d912acdd5b
Date: Sun, 19 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776610053
