Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3375B19E7F7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777011454; cv=none; b=WEktq8ZIgUkoNpvSi6mg/C2yau14LOr97rtMpvYA/dWVP3p5ryxtNzC/WZv0whHttCdEr174l5KyT37ANTqDwLWuGI3Dk6pEyrEhUnjTdhhgnsiVb5sbiBnPzntf/beDIAaSei62xzZ97C2peCSWyDrWJfUlU0zPlW1wZFVD9Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777011454; c=relaxed/simple;
	bh=Kz8DbMlmoA10nmnYooXc4IOJcOqFPLtG+tTqO608+kE=;
	h=To:Subject:From:Message-Id:Date; b=dYQ/6o6szZJ+9nWiPiiFkRvfEQNOpIiVWExiLjTdhESsQVCcKhpyPK534AcmQOsUZnqAKTc6PCIBDK6BRIAWz1SOsEk+gWCd3ZfbXP1qoJvm0+IYnWYrlqqFjSXDAmPT0cDU0/l0VMTK9gJPaDF0+cFU4LGFAPqa8lLO0qghBPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rs6srTlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rs6srTlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C7AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777011453;
	bh=Kz8DbMlmoA10nmnYooXc4IOJcOqFPLtG+tTqO608+kE=;
	h=To:Subject:From:Date:From;
	b=rs6srTlt046yqqDaVrbpVGJn8SssHt+zbzl8AGtNJMcQerKA5nfrCYZsNpGaWrwYR
	 WqXIt0zf2ysEhFxzZeUtbeXwrxjnItbI0WcLo1Cp8cwnlh7Nh7M4RRJUmNXlfzA+xD
	 AZPHQncYrBkEz0pGMkARB8xtxFiaMMoYAY12wzHOyIEcQJQX9/W8h+eKYDpZsUHh09
	 sWdzEuoUjypjQGNXoa7KtHPPx4tTtAr6nQchsJHqhVz9eZMYBAIxHSQ86/NnicUUtf
	 C0VXFFfRs3wb09IaMeeRRaYPm92khdZZVRie1A11ykAC6CpXAel+PSZz/v1JJXQRn9
	 Pl3vMwDv+rVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA20BFB44B3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701145368.12001.11047095261459541917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad04d02e2d79159fb73ab2bfcfd8bdcfeb02bcbdec22637d16679570fa3dfcb
Date: Fri, 24 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777011453
