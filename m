Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83F3CAA31
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783492714; cv=none; b=PkXzHmqrF15fVmKly5dgYyzc1y777aUZP/bfzRlTN2I8N3VmR36Lol5eoC5df7k+2CGteJ9nk+NrWCtx8fhCywKpG+WRb3yeMiEaXQO8WQPBEqHyIuAgFnbF+OTk1O2tpupQgF1yz6s4hvP2nHWbi/oxDuoVE5/Mo3luIWSDPJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783492714; c=relaxed/simple;
	bh=kkv0skL/cH8JI6wdcAp9guvqogZPl3oPuBzbBgIWxPk=;
	h=To:Subject:From:Message-Id:Date; b=oGGNAWZskkLaxj/rm/o0F5N80fQryXI4yRSkqDP13ahp1P2w3ThyehZJ500Q9SNA9ZMHlC4E6c5l1i/2atAOGNb07F3RaO0sG8eitFr9XBldsrhQ/NRhcpUuVjYt/82/oCzXMbVLuWxeemiDWQe0OJ2bGn1G3tWAgh1fHTmpqGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9Ka9OK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9Ka9OK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF42FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783492713;
	bh=kkv0skL/cH8JI6wdcAp9guvqogZPl3oPuBzbBgIWxPk=;
	h=To:Subject:From:Date:From;
	b=a9Ka9OK2Picjogptm3/0XPTE9Ji+y8nygyAL0/3gVzY0xE6DLfEgA2lgnF3rkPvDL
	 YuwCWW9ZYMekiU1FQTMD0cG2gexJMvfIADS+NR89+nDsq4OIuDYPl0+O/U4Xk4bObd
	 kO/gUcBOUA/z5u1STFJ48AMKM7Pj2DkQKtQyDCZ2sh9hyo+C5qrN1KEYuVDEqlzi+F
	 qd9m7nzWIOH7RCmaB57gIYkXjblEDoSEm78348WIXqp+S1OFoqVKavzmtVeJdNm8o+
	 /7ZuwaFuADfRdm2d4VZm5Syj8WVGxFXOPz0Ep2LJOK4UZClnPjrHNwUIR4kxBH+Bzt
	 1A1+hjstYzYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E6C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349271369.12835.4870778703470842722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c5df74b157fcbd18a664aa3d3a69ec959c558784fbe1ee768c7ef4aa6f5246
Date: Wed, 08 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783492713
