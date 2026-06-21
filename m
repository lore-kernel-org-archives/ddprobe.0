Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7CB175A66
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782085594; cv=none; b=QYLbUKT9u2Tzb2BgEORjTBdA7PNrNgxON2aFrpr1gMXfNPexBFkP32EbH0Q8VoDmykzgqB4XAPvmkPl9jz6le3999qbJ/sWumE1wonMvCHeRbenh0wUrP17y2FjbS5ahVWcmjcMPA50wKIQKNhJlhzXXJEFjyK1emCrzKEJnYSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782085594; c=relaxed/simple;
	bh=d/vvJPAdTUxgxeW9SV4AftV0PwsEXVQHKgrRqfW4Dos=;
	h=To:Subject:From:Message-Id:Date; b=bZlnoQetj0Z/AyJlYQS+Lf7AY7twtjVQ1i3IGlHUJ/4KXr+c+zRYFJ4/8+zr3pEkFp7iggeWX2tMaqPAHYjaekPk3ZB1TeluL0AC0aQMyfTLkjHTYcvQ+ESWOl/UhuHsS7xC3sRjKpbm0Ng8z+9lNx/620t45YbnbcL5nDDhmwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDNN3RbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDNN3RbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F68C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782085593;
	bh=d/vvJPAdTUxgxeW9SV4AftV0PwsEXVQHKgrRqfW4Dos=;
	h=To:Subject:From:Date:From;
	b=aDNN3RbV+yGn754yWFiCbzb19g1uDnIq65szisAN7fDbRrFouSXqh/jVdg+k2DDYG
	 NZjCdHC7GL92u6ZTzWSN/dLV1/cU7tB88rwv8Fzs0NZv/ksAv1k2kWKV8UiDval0wh
	 5fQ0fNMjBXKeSp+FoMZ62mYel6TGMsCVNwizKy59tnOR1PvHMLWX6PLmQt6b8Dlyp8
	 zTkhHZN6Da5Z95m7fbfFIq5tYc2GbS0gtmIZ7bNHc9IKX40QGb5hAeqoF63+4eEgvS
	 eAskfhWsD5420N1tJyPPT+b4Z8hmh3dHVHKotnQ8/nwvi139RW1SB6X7JiPefPder8
	 EvaM6cmgE3vVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B464BCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208559369.14073.9011947995901965274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d505474a0e8fe4294f8ade125c0a79179a04154e95dc06a23a981b048eb0ebc1
Date: Sun, 21 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782085593
