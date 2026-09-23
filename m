Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD0D57D208
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790201434; cv=none; b=tob7BFRowYyCJqSeZ6D71Q4pto/ydvHELWpDokR4L18f7zU9S7B73/+YKgx7IyvtIKaDnNFW/rsaPFgVXR0djBWFsLWnizOiZWGRi77D/MESMTAD+KpPC8tdUky0xd+liD34ELAzIujyyyFSr/6dQtmgQdnVBem3goF2NERJ3hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790201434; c=relaxed/simple;
	bh=bGC8sYdfhJlaJLdadbe0FaNZpWhaqUAA/rfm1vVavqI=;
	h=To:Subject:From:Message-Id:Date; b=gdJpjIjCf+9lUnr9GjXPTPLVWWZLA3uSZgnXFJlq7G4lvOAyOeErzrfXiQDqXIQU5SUU3p3UtfwZUrVHZSef4x9YpzlAsqC62v9Zioxv2kG6d+tTybtEsFXbG1TqIvpWBWK1G4yuofHPOj+4CWeZCLDBsva70kk+q7UpOHR1JqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egMicQXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egMicQXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D3DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790201433;
	bh=bGC8sYdfhJlaJLdadbe0FaNZpWhaqUAA/rfm1vVavqI=;
	h=To:Subject:From:Date:From;
	b=egMicQXRlRQ0lakxRvcVu7em0EwND3GReLvTJBhfiydWQJkDuMyP8v2nh9ijOVWk9
	 r38hDXayPEf1hInaOEW9e1jWY6SGjS27fFKU6tZAhf2qp5gCKzbqeIW2XgPzY4OISa
	 6/WI1tzsD4WH8i6A7t3lSaQbigjWRlzMisWuwOU25/t8E3NWhdlXDORm3Stmu54Oex
	 oIPpzB2uWzvDTyQDP+dGBlMCS6YyjP20ZKL3YHEssbWsuNjaGuy5m6NPoc4dlI2BcO
	 6DhiOlWXeXkBEsKQc1uS/+IjuDV3q4dIWGwxILpZnxnaFgM66zXVIDE2oK2BnbYJBg
	 XZBnvkBKRNIKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFEFC9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020143375.16755.8591447720239671990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f5416e011109a12df41447b3cb285117df8908a8bc7e15ea7c46820899a362
Date: Wed, 23 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790201433
