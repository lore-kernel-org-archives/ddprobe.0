Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB93AC0C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776070654; cv=none; b=ZTQ7RTAHzpDqJmINXZLHXw/sFLef1avuj59ypaTf6BSrsfY5FA5MxO9Kldd1thVosMZf6B5toksb+FOkKsSHQrfEQ3u7By7xxdGvTjsLkHqN8K3RNwZtnmmRhOc9AEne/DL5p451FL311KyGlsSzrKBGmSjnHEUAYdf8x4lnT64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776070654; c=relaxed/simple;
	bh=s9LZEpLkm1OqUJBhQloq4t/k8dcjAv1OqJWgevUSSgk=;
	h=To:Subject:From:Message-Id:Date; b=n/c5ktnjjy9LB6jvsADXaf9Z8xdM2BLhxNJ1/FiqKY1ipkjMjqlfMz/7bXL+ZmN64kxY3yc5ZLrPRyruh59QpN/3VFH9XbRziD9F69WBv3bh3k97wgQ5CieCWZ1qQN3oiYUfueucmAAivJCOxriRqAuDitcVlMxHns83P+q7bCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB/axyfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB/axyfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81B2C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776070653;
	bh=s9LZEpLkm1OqUJBhQloq4t/k8dcjAv1OqJWgevUSSgk=;
	h=To:Subject:From:Date:From;
	b=iB/axyfU0SETWVEgIUqUIVs7ydmzrcj5fgz+eAq+VKl+5EjB8HYbMfJU+JCAoNldE
	 X1MURC0Kur7Sl4Dh1dp4fP2rHhIRS1pQP3GUAuXjodagZntNqFnSjPmTna8mX2vdcl
	 FXAj6/xVVg/L+nb1hbmFmQ3/bbZs9Oc3Xb4iquFO0e0zhkm5NwLzJhVTrj1W1T7Gx1
	 l+uevAySW+PQY3b9m0HyUQ+zP6XL268JKNwooTQH2tMhEveDMh7yLyyrB8NOtc1Pia
	 JwkqQE2O3wIGoVPRSqF3UxBlgD1h+lHOrg/stiQUaVV7QuQQaoiEBN0b9O1bmB09sn
	 DzIlnfh8TzG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD3EBFD16
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607065368.23619.6916697050423374802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3119729b5d181ef80869c5d4c7f5f1b30c703512c2665642a59503b11048f7e
Date: Mon, 13 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776070653
