Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F897394783
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783569514; cv=none; b=piXdeStrXldu2wR1ohheBGuJjxUJZTneqaHZBvwY6woFVyNqQSRR+UN/zkapnWwex365Mtfkg79ZUN5JJpwfh9nabAv5VBsK55RcdLUJIMQ+BWqesku3UiIEL9wvBHcLc58iZuq6B0y0frpCfc0ZpM1vXqrmylgaftvuDa0O77I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783569514; c=relaxed/simple;
	bh=fdg+749Re2Bv9tJhvIIHnmKbHCK47tuDaSyH070OSNM=;
	h=To:Subject:From:Message-Id:Date; b=mPV7VoFdWkG23qBhyFNXt4qTc7i4Pva2dychM34GAUEeNc8ImEE3rE3xG7Ewo+XpmpDq4Q3zwxDM7R64Xjcli3/Rf88cZsPVrqOxCXuGF0uFS4Kb9uqgZUBDsoxSutGMZVLSeTa8da4+BY8ZoT7MP3m0aqxoIKsEzVS5dXVrBSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZboRAxJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZboRAxJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F68C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783569513;
	bh=fdg+749Re2Bv9tJhvIIHnmKbHCK47tuDaSyH070OSNM=;
	h=To:Subject:From:Date:From;
	b=ZboRAxJ6Iuis3cRmDaps+BLzPgvVer7uWVxyB1n58L2Nc9IbzkVW67CrzSP73jAMv
	 IZQT2TT5HEVwVO2fb0WNYosk7Nl8S6xpe4tRZv/joGQ5bchpAGhHDw/KZc6GeAZCw+
	 XjmPZdOrK0J0K496/FkSAQNoMBaLZhec60UjvpQM0nEWhJsavH+S2FS3wlc7UO0Tl5
	 c+qDm3u4Y8ET7nxv/I6bFOHi412hzOZ9kvibgj2rG4kX93qosUe3hy7D1Q/geMBkLH
	 /BPZts8BXH5j9HXiAiPP05eWCEef0A84muf6LjE3AMIJha8PGUU7ff464gfQC+c5L7
	 PnB/fkf5Dgw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80BCC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356951368.20235.8307073521107376534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c167bda6a92e061d7108cbe298b3b0bdb3e4ad82c319159af44c5300a1756f4e
Date: Thu, 09 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783569513
