Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AC52475CE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762989594; cv=none; b=Ccm3kmXA6FOSVcow79BmZhTT4ggWqYSCcCQUeWqrAz4eYlt6qdLhgOhShJr298/wHRIYW2VWVPXgt4ldLwj9rVnuyUA5GG72c7oV6Vk4oahme2Tc0FtTaaNZF53TtIMQ38jb+t7WkPyQuCLyXhdzpgmBE9L+EhjiD6F3s16NsBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762989594; c=relaxed/simple;
	bh=n0r7qd3lutbBgh9PXL/HtQpoCLDtjNBdHnkwLPy101g=;
	h=To:Subject:From:Message-Id:Date; b=hb8Z5NsQe4Poc0n5JF8BOwufSZjVSogfg9F11a1tRuw1czFS8PauQpeSXbeC97TtnQN6XYffJ5lsMrDl5Lzac4om2pkGWl4kxMiuGbz6kh94FoFgNMdydoJuHcCa4GJ/M4W86UWGBlW8XuTS+vAV6mg9X2kkVRFXpb0PIKGv/z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPq2PYrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPq2PYrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4781C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762989593;
	bh=n0r7qd3lutbBgh9PXL/HtQpoCLDtjNBdHnkwLPy101g=;
	h=To:Subject:From:Date:From;
	b=OPq2PYrHfBqGeZ/pUgr+/cBczEIVM1W72+ziAslZd8wAh2QqWDX/v6hEA+3AAeYr9
	 x+d2nue/0lUeQBYi7fMCjlgfOhpe5IleKAClC783NE+mOdMbzBgFurnPLu24x01cDB
	 pcJTIULVVd2MXCtlqXKzpQRpdZ6bUtjJR/8U+kdzMG6n4a2qGWqHyrFAVKhehWFS/Z
	 gUz+sfOd6h4vLNOvEkZmV9j0akHEm745yzd+acorGqafoJZKD2DG06f7vyWqccb0zI
	 otgNXCxQi7frVug0hcE6DCrcrLJr7ReTOrkrLNyTPs3ur3PX8rqYboF8efM8PrPxtI
	 E1jZT5espKFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA1CD4F27
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298959358.19657.310735552139367933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf77be72ebcf600121c1c591b675ba2ef250bd895621115a3505efe891bb5b36
Date: Wed, 12 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762989593
