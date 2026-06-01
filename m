Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4633711D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780292074; cv=none; b=EXAVfW3vwkc9MsGTxJ22vXo4hZd4ss4bRQ69iwqwF434UgsuUYiqEw76a/t16/aWDs/EiNxiXlhMndrzjxDtycK2cfqv1KgorEYLPBAxCikjyfPR/2v32MQT6VPz3DKJf7vsO9An5HO2feyMYShYsRe48BTOBabQQeOwRfZd4KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780292074; c=relaxed/simple;
	bh=pYH5fCaC37yw/BZ35ZftDjYAaH1rLaNPxiAj2Rop54c=;
	h=To:Subject:From:Message-Id:Date; b=ClVp90bHAGF+9Bmd09B/Fxo+/v8Lb9ahCbPuyIXZB04kWPWQgRlznWW0jq8lqiV7TAS89jSpxq+VudRh5mbut+Sq4ZyyhfxajFV3JrP+Cm2E2Ahonk9Uea4QeldrMjqjJ3DudTRjbf6Tn0R7zo2qgC+uFg9loOYXD6T43dEukSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xeee9U4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xeee9U4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0028C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780292073;
	bh=pYH5fCaC37yw/BZ35ZftDjYAaH1rLaNPxiAj2Rop54c=;
	h=To:Subject:From:Date:From;
	b=Xeee9U4NjAVM3qk+z8YbmKexdCvOrGTF9SxrOtDca6Sy4HpG5ywrZKh3Wq8/ZaWC8
	 +SSY/s8bcgUG24JbsrzXjdT4VbUnAcQraGtWOmanUgUFQFl7oP6Td08/VoUAfp8jf+
	 i+Ilgd0sv5wAJ2za6gKuhRz9cTl5ubXMe7H002WI30fWsgSmfHNz45O0goU4mCpvfH
	 1EQfUugLz7OdsPVBA3lDvBJjG2uv3DmFSOM6Bf0Sd6Kc7KxJhjRsHh5ybiu/NhW92G
	 PoUnuj0uDnqAuACQYISJNxdwmcTP2emtcNBYFawwlHf5Ek6P03DCVoKZLvQBX1l2bg
	 ZEjOyIspKc15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B698ECD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029207371.29805.12682176755766464892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58238251ea97b3fe5d4bdee8126c9acbf4f7d71ec7bd2ff5fe504dff2658757e
Date: Mon, 01 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780292073
