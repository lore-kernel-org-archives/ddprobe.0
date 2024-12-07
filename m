Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42777139B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733543154; cv=none; b=skR1aK/NsKnEvPKzn43CuWPE9uxHTfv2RsoUUFX+WSZpErqaHw5VnJXndm5uM6+peoGOseowq3NaogJ38Wjx2e5wRvO+wgtcpswGkK+qUwK+BMfNkTkiByJwlBZFLUVRkvzGaFh9xdaWdab+P+XHpnzU6QdJy+cokB+UTI+UVg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733543154; c=relaxed/simple;
	bh=M5QV5WnOdwbEO+pKqZfq9vd44HZ8weabpR44FVm1EAM=;
	h=To:Subject:From:Message-Id:Date; b=E+6E0FBh2dvcTtwnSOycpMDElIE4tvMj/qCn82b0H38yMqCd5xY6rC0mozXO1/wWlXbkLynzME4/58+fl8TPAt5iyiUCqPhIpCalNeWVl5O170gUXXHULUMdGgopmeBeHV+/SkCryq5enOQQaEPMgwKYDWol3zzZMiazAd0ckI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRSaB+c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRSaB+c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16BC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733543153;
	bh=M5QV5WnOdwbEO+pKqZfq9vd44HZ8weabpR44FVm1EAM=;
	h=To:Subject:From:Date:From;
	b=pRSaB+c3+ul1TtkoWwJxaOzv9HX2J/RzSf1eC7CRkHlUIP7zQfQGQwEtwhP6gzgIt
	 nGIW1h5zvEKiCPSpkLC1MQsCIBbZff/NEoY/URrN/6Au0UV5mqbbF5LCEJ6fBoddGJ
	 j5qGkEWIX9z+MuWiRzTp0lWEHg4+FB3OFAP04bTuSaYAV3TTU1VtF84BJhMM0D6mic
	 gIjmfL+PNc2n526RTtN+qaJjAZrWP+h4x/nJJSeDGaKsU1i/rjBkQWmRmi/oh4XPa0
	 No30veao2VedUBx1+MHHOhbjziK1RHiig8sS820A/klMFIkEtZgIsH15Eg8iKZYoIo
	 Q+IKLkmoOKVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99096E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354315359.12644.7206203335934277466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcc9f9afbf1f6c4309ad34022a721d80bf43476a35f3536200c1a02265cca95
Date: Sat, 07 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733543153
