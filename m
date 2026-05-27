Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C19E3BD657
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779879154; cv=none; b=V/FPXEeje0tZbcP0PiPtKKTivzSzpkZ+IlbytwQeZPGE76m0AURZD6pGPz8OrcV5VBXYv0Wmm++EcVnywjk3L3lCuUmZT0FNR88SdTIHF+WNZQNCiDywE+Sij2HKLq/pK4aTQLPPcwfqoLjnlzamJ67ptxL9Cand/rnBplvtN2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779879154; c=relaxed/simple;
	bh=XDQUf8hpB4pzswHWpdACvJvoFKZbbH7Y6XuNdOmPV/U=;
	h=To:Subject:From:Message-Id:Date; b=gCy1MDfA5TjIxJuMbgYJXGufM47rW/qt4qShDM6SWacL35tUIcJ11LdItjDIB0zFVPnIqBqU71hNoC0+Hxwa6c+FtQQR9TG03AFZ/BnkPOXMESFUFj8Yv32GNLCca1qylf31pVyuE0cu+LvxpUatOPi+36EADszV6Jae4Ye8otA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/Jyo6jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/Jyo6jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ADAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779879153;
	bh=XDQUf8hpB4pzswHWpdACvJvoFKZbbH7Y6XuNdOmPV/U=;
	h=To:Subject:From:Date:From;
	b=g/Jyo6jyC8FE6+CWS7tIKPp501bZcp2OBfn7L8O7DUa3cPe2Tfs3wP2PpUrQMgbDK
	 ICUjwSIfj6oCHD38ZqNtapWbEdyJn1jX4mxG9xoJX0RsLJGdm7lVKUpLz4yJuhEA1j
	 lNuArPkYqRlfnizU8BTon7rWyTev7HD40iUvy3skr8tGZmaS39T8uLk3iXFTzjkYWy
	 tS1g/aH7fz+KAT9ASfRr3FUP7njuUrmrSOOzqdM7zNxxOSD3nSl3343TOT8MlPLRBZ
	 nACE/xpBgqvV3IjOEEonIu/Dk2PwmSindjn0nnRHGmytcbNo1ZyHRYPw1dH2ceSOOE
	 gIbFKU4VULYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE85CD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987915368.6883.1622368565007059821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285cbbd3f8dbfe7b46c7bc93461225eb31899f4c1262ef13b640712dab46aebf
Date: Wed, 27 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779879153
