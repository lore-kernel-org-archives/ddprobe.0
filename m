Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170AB386420
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918254; cv=none; b=UC+xXWYMkNfpdXH9K90HavF//RQLtf9Dpx3ZcwvkeYTfqlTVhvqX9h6aFGkOxFotl1Xhdv7Hhe+cB8dobApQqur792OJFM/K7FX4p37gm7d7+4SxstmFsFFJ0dRfdVWtmBexgG7IzXXMidnX7he/8NuPZJLdMWN08kfg4i9Uz6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918254; c=relaxed/simple;
	bh=Zvr0X6J2mXDFO61ida847BzKyDMGWJkm2G4mANZcenQ=;
	h=To:Subject:From:Message-Id:Date; b=j0OiEYuAa9TA7lkO/U8bHcDkAeIgyKaDzG7B75l4OFW0oGQnkaKP7ulkztBCw+iertf4J/wTwfEgAp2dRYWI/HBaGFcfSjIKpFKClgF/Tdje+3gL8eVoVt1ZqvtnJdcgaWn+mjNOidla6LEFh18XGMX0p9V8v4uGYquAuwfGjUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8AdCbOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8AdCbOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1BBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775918253;
	bh=Zvr0X6J2mXDFO61ida847BzKyDMGWJkm2G4mANZcenQ=;
	h=To:Subject:From:Date:From;
	b=U8AdCbOWTnVOFEN6/5Bi6j2vOcam7AWDK+BuZmP+zAommy/+YAnwNSp4irqw8CdUq
	 aws0vcNosrJ7ChKR1NaVn2eNmN14MNbTFiN3vqxLdsBlZ+UYtaDCyX06AGrUk28gtm
	 Pz0++ktIB1DTbluCVhmKfLkQNY+rGHT2mLN3AjIg7BfSm11JdH0Elk40RiJ2+rhRSb
	 8Hdt1YoTNfVks/2qJcGH6kWhZQbLfUES6LBmcL4Wou0pktVvh8GT2pxB1u5f1NB4bX
	 6myFtLrv0ohJ5rgOsXak8R9z2TYSCA4V47fCQWyF3j4cgDsyDpLpfYW8Q+lBFFxCFV
	 OATRAheNwG79g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB686F3ED54
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591825369.8222.549509590036195678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cfd814ab1e4a05599e033abb87fe60ca70a9dcd517b8345bc00f158623d2b1
Date: Sat, 11 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775918253
