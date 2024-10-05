Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B401369BC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728154554; cv=none; b=kWfGD0L+vUxFu/9FwDGiViRn0x2g/v8HtQ0SnRTddgCkRIdGvYH8FYPPGbmwAhttnh1Ip8GFIL0hKKawv3w3XKq51krjjIKjFvIyoWeca3OF2fn8kRYcMH8fVjjpiZbTTCVZ7Ln0HqoCM0g4ptDN5BfcQEahA8m4iQk4BaHDJnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728154554; c=relaxed/simple;
	bh=X3tXd5FInf3iC1AmNtHoIHmr6my19S6hldSFo2SEjR8=;
	h=To:Subject:From:Message-Id:Date; b=JTam1zpvMKrOjM7ohzHkga1zROYkroJeef/qYFftpI4tq13yLzxMhT6SyWFFw1j2roJgTX/64H0yDPZ+ZHfuyQhVE1/W+479g360FozQGHgdKDe0Ek6aCb1FsD4wRLt5+dyW47Vug8U8586EipAlekEdjHSmnl1Pge4njus9320=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcBHbCNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcBHbCNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C22C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728154553;
	bh=X3tXd5FInf3iC1AmNtHoIHmr6my19S6hldSFo2SEjR8=;
	h=To:Subject:From:Date:From;
	b=XcBHbCNgV898PrzaiAP+15p+BaSoR6gClzC0RKN9KT9AAmIf8SYxI+vF0MYsvk68x
	 xeH7pCZv24aclO2A6e1gdoV4g4jXCJr8F94ha12s8uVIe3kMGud2X5CbtgfWOEmNtz
	 dz0DR5N40tDdW0/hQ/BjMblig+Lu+VIBubx9SNteSVSHp5sVto3faykRmeqEGdG7jv
	 AO4a+aUG1mmuvPuONF7SscAR+PySEyb9fZ/HSBo/l/5syVZWDlND0eTEoGHzD0adWy
	 wEhxMxlsx801QuFohOWTASQg4tc316LkBZRqTxTKIfO6VHRgk0eYrBiJUE3HnFphnn
	 BP9Lj6YZSQrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F00FCFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815455360.7080.5911634304148754059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5945ec3af442f2c61d7c555eb3ce431a0739b046ca2b32c7191801ac32d085
Date: Sat, 05 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728154553
