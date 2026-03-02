Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5AF201004
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772415894; cv=none; b=e8rh1mf9TTyDifCodS4rOUx7gDcQn4mtzmQPArX2RX+RgBV3enAD9wnEhl41BVU5S4aQzP8cs4PEwA7i5mUj/fJ53Ob4JQGtjG0K3sOkkOfc6KQpR8gq2jS8M8YmRGO2MUeqHR37fcNijtJsYl152mZTOaIGb79dnNdkmR3lDlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772415894; c=relaxed/simple;
	bh=piL+PylRO8eZfcL+gpEfR+eYoUfumbX6Wdk45hR8JE8=;
	h=To:Subject:From:Message-Id:Date; b=lrXCGTIOmBw/l8HFo/pJ+uzpnxXueAk90dqsnzfjfAZ+85MPWRrm2AGrL2NENMPa0P0a50xP5upZsyrBTaznamjQ4lenZ2Ox+6kdyfmW1fLMc1kh6Zz6tswhV9c4bhKChdTM9BTFVws46f7bhM0muzOkni+HkoZ2bGL+Oci1TfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fyj3r9xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fyj3r9xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE097C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772415893;
	bh=piL+PylRO8eZfcL+gpEfR+eYoUfumbX6Wdk45hR8JE8=;
	h=To:Subject:From:Date:From;
	b=Fyj3r9xhtty4Vkg03jKEaVZ3wL0e/TJ9KpRqVLGZ7IMStXXLwNFzT3CUbUxzwO7Bf
	 bdo7ZgMFRED2Fpe+0Ft7BWqb/dKROD2kQKNPJlyfi8zgmc2QVTbhHr0spHjr+hKqGk
	 eBsJL/v81T0pYGI2Sx7jjUGmjF30i3IIhsrDg4DQKlWqsWNhQd5kMjDjbuXeK2vbS6
	 cjRJxu5yYK2kAiimt9VlALhfIAklaBfcV3sEKgfKD+YEN6xxjEKH0LknoNJnygcx9M
	 R0EzeZpKTOvRRbsZdDhHdKCv3+uIw2wJKnsw7qBI3879cl/mmSrEpxBX449T1y22lg
	 aKoLZvrJJ1CNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CEAD58E46
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241589360.9535.11658929456323093204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fe81c7fec6a68e3ce6de98549002342c046be0ff4682b9f639d04417cf4072
Date: Mon, 02 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772415893
