Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1751127472
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755098394; cv=none; b=l14NbhR5RDMMgIim+b9YSlyuAQ2R/SbJZGmuiM3aGAXpMZdqpk2RolIYJLdtzMZ6TDor4vhUbsmtiT2avg8Tk7cc9JRNSaLi0SAAtRNEY+7tZGJV5uIF53Z0/qZseQur5Zr9ijLhWEcKvqBckI1a6GhfRM4T8ZPWeu7aYedy/+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755098394; c=relaxed/simple;
	bh=0ddBenMDF3TxvTXOrqIKtf9f9IwTrLF0JQ8nfAk8KAU=;
	h=To:Subject:From:Message-Id:Date; b=NjPrt18jVfa04q+rnz3Ptue3kz3EPQYNXcS1xJPlWKVuCROUznN6DfWmLdhdyyyyniCz2zIMIp9lXP63QcxKOQiuu3z7SbZEpCSJdSFUT5sM197tQcAj7xMoLO4hpBQPaM2JJ6JNpbOu3uCiyEOGE52PyE+mS6tMDQaBv2ZSW28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF8+sTms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF8+sTms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C82FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755098393;
	bh=0ddBenMDF3TxvTXOrqIKtf9f9IwTrLF0JQ8nfAk8KAU=;
	h=To:Subject:From:Date:From;
	b=iF8+sTmstRqUPcQ0fwuFx2gkPXbTH7ykDu5C7SFthrD83OjOUvREQUmNmP7MlFFGp
	 VGHi5mut+IwllW6b7mOZofwbiC2lvuzb/jsxBGEGHEVRpbRCI4nlaymePePbvoS0FA
	 OZ9/HzTUdFnsOJvpmvIjMui+L500lffxqqeAVP28TKz2BmYOmJJzYhOE1oEa9v0cSC
	 FN7r5eLcipPqLrQfoi6bEk/ZQN6BTh2VkhKCqcXY97nEu2AwICqY5dIenWEEZnMReQ
	 7kS8kiSJoTun+IaVdpgk5kEi86ROxR9Glh/6shmA+iIpKvLiGLZbjWo8vW3aEdEKSj
	 kiZgOQMsWDXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C4CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509839357.6306.2869735449743841477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a332cedc9fab4e33dfa44f8f8180ed90102f0bb3ce5465518e7600cc21c05cda
Date: Wed, 13 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755098393
