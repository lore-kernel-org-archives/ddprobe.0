Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C101ABEA9
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727200554; cv=none; b=MylMS+TmmftOp2te73/tiidok33y2WwAzqwn8QnV/V9gZiRlaXVvsU8V8RtD3/20Co5+X1UB0BZZ/bD/X+bfl8zmt5KrIc5mxpr4tbLjGyXBuZGSyEc77ebwEW839n9wAef2nhezO93LgYPSsI6Mt1IKKTK+modrIMfi4cxqN0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727200554; c=relaxed/simple;
	bh=/LTm20P9ziKEQcGNLv/vxw9dtdk2WvDinPVVNhmSM3k=;
	h=To:Subject:From:Message-Id:Date; b=gRla9M8LJNu75+nyqWyu7TOWEX50zbVooy7BRjY2qswtpOBMb5RslF6jzyT5aSahsqdoJo1tBws2P7TMgwWK8Sf9KFZVrETv7/FBmJ07zji1fGbse5MlnJp+bo7nZoLVSdmeqHrlPLjzcj1/uiV+PPiXkuZ5Ju2fGFRvls4glco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0IdLosP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0IdLosP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB01C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727200553;
	bh=/LTm20P9ziKEQcGNLv/vxw9dtdk2WvDinPVVNhmSM3k=;
	h=To:Subject:From:Date:From;
	b=C0IdLosPHnznMnxfJL/fja2fNc4a0H8QTeqmg9K1usvZyu5DMpPLbFAHAMiJco+Dz
	 9Sw3deSZiBEt8GOgU8fMNsUvsqozeUt+HuDSqNII0vEIzUZVaBsFCRbfrojXZ9loz1
	 e5rKRi6T8AtdImR1WtACAKCtvxHThMP7G13sSrPfQ8BcAXNu7xzJEi8MAlDzpxamqQ
	 b9qop8Ss0idKZ3vA/kRLyN37zw/JPRPNCCu0f7UZ7LrH8lWVU2fEXpOhmtU4LfbjAr
	 3Ek2eT0m6RviBKzusEkGLQl70JucKuJjU8h8fqnoYncEYcOv/N9D9lpodc//WJrqFk
	 WiCNQce64yZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E0CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720055358.16600.3645073579406867897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b46f37965c0313af22bc8186ecc085fbfbc09523e8457780805410ef1afe00
Date: Tue, 24 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727200553
