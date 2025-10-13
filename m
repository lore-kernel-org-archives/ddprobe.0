Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095402E8E14
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760340594; cv=none; b=SvXZDvyxDmxgGQ9hLJKzBkU28/sThrzqq6Jp0SeydwmczymV1xlu+R517TgOabG+7JRqQPhcVWgu3tipmDG4sMAHGzQZAj8UCyAB1kVvn7Ege5qEBfmjGkpmiGHbkGnhUcJlE1ZUmNHykt/ioUGE12GDLqli3+KXjDXkWbym4zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760340594; c=relaxed/simple;
	bh=L/NYLic0lofGCEbhXVULdmPx/0s5gUDx+Jqqplvnetc=;
	h=To:Subject:From:Message-Id:Date; b=KOhsVn6xsSmlmTBcnDzoVkvT3fYsuHspbTy4ey3UUYd/UO/CZQtZcUsg3TNM31vnNfGVy+Lf6fY4cDf80r6QRSleHWgA8cKMIhy+Oc87ohmaE2rAEWWu1E3k750EI/dEa+27fZn5i7yvZv9T2UFZN7AhP5o3YHR18kZd4LDtP+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joSGaSPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joSGaSPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760340593;
	bh=L/NYLic0lofGCEbhXVULdmPx/0s5gUDx+Jqqplvnetc=;
	h=To:Subject:From:Date:From;
	b=joSGaSPdRx8MLZjcyNaZ/UyTNxPa62N34ZiYv91ncr9dw2F7hXVw2bmoT9F0qxrA6
	 48PXAiwG8r9mR5lA2jV4TnuC4KxDdFft9nLe02j/o7nm7Fj0seoZjwohtXIBciDzVJ
	 LRwVqms7hgroRuzkuk4YMokze+aawcUkxQOnfo85coZ+Urbo+277hX3ABjrImfWX+6
	 ta2d1wKQjyvsUmjAoGA2mXkwDWm4SK7pL0BJxw8ja3S8JgyOFDel8b94b92wvxYZgu
	 FBAIZxQGsL0LgWACl8yq/gWV/CII3CJ3DCTi/+02FKqzSorxfCSTASbIjcxyOWP5JR
	 D1NL8vSK2erIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A7CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034059359.23864.18261903736752030751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c8089e160b5a42e47f4e716c5efa268cec0413484bfd0fd4fd3e261d60e390
Date: Mon, 13 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760340593
