Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057B11E0E0F
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731064554; cv=none; b=nDnhHIbfdlyJpyn2xJ2PLuisp2C60cVNyzLLvryS08mpeT3tvyLBiboFyxxpm6kN3oesxlxLW9GQ5ltzUVCfMBEsl4VfKnrNS8HIvVdrGrEv9SdTQ6K/o1ZGw4B9BYLSjrXdPzV5QFLTtHiJmYusGR3T1aG4MgE1Q0Zgf//jkQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731064554; c=relaxed/simple;
	bh=HiqJZrLMrIy32tm8L5LS1bKgFSpnzM+aBjQ+6Xi/3NU=;
	h=To:Subject:From:Message-Id:Date; b=uFeXtcTtEfxoCqNd0cYJmJ10V+zXa/7cZ5tu6oLWzoRVzeR00SotHHSImoc9RUaX0GmNeCn7TsxPsN5stQwklX+D8iYfc1lvV4IOyousL0+RxIzEW2JtpH45M4m4vmEU+SJgCNU2vt6bCcugiLnkXghOOtuyw0uVGurXf24QZ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbkms3ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbkms3ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB9C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731064553;
	bh=HiqJZrLMrIy32tm8L5LS1bKgFSpnzM+aBjQ+6Xi/3NU=;
	h=To:Subject:From:Date:From;
	b=fbkms3kaUhOzxUcSqvYJw/JXuOmvmutAN1jZMrZj/7Id+4zY5aqjk+2fxy3VUW5OP
	 G7tfBhLDoqmdftaim60q/v5QtI7BQR9vYOXkT0q1mn0RTY5b8wD1UJkao5cSRY0nPY
	 vuMa6C8aUtwXQD+/ItkZ6/TL1PWd/H2bb7Lmyg6je3iM5eogqOXFginr3y2rHYCUwu
	 uU0Hn8VcxowiLqyL2bHmtD5X+fqWz8zN+d24eN+LF/aR7NwK0r44P3/Tfxzw553qSS
	 fw1KlrHwStpBSf4ZNqRMR5o+GS/6Kves2JOIeiw85kqViy8BCN3N4LVbGJIlJGF1dK
	 pKYCfz04Td4SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F776D5E15A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106455357.5790.6822733482129606654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79827559f5d9393e6935bdea22b9d76a865fe8c8d4147203f97276c802e6cdc
Date: Fri, 08 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731064553
