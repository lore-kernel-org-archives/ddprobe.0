Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E234BA41
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760255994; cv=none; b=pLqkTGpUWIv5r91RnR75hjI8CgZ9LRugrbcG4CYM5+tmTK2sw2wx/GBAgxdJ4O3KTr1RMnY/JEpC23TQcZD4VTrP9Yi2/a6xCHFmK5t3Yh5+03rHai1crJPpstU3ho5yrosDmvIyehVNv2Gxi9xN5PITTn4/gvvG2hIUT+1JoM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760255994; c=relaxed/simple;
	bh=MoG9EC/Bz/twW3mA0wtCWHYEFoZzOCdlJzxdcwQi8KM=;
	h=To:Subject:From:Message-Id:Date; b=AjUH0fiywm10M22Wh76d/x1enylmVyx0QutGEfGHYJn3oioyDwXUJ/HlyQgmNrkz3lKmPDqKGPw/7yJC/QRokj6jhodPp2HyERH03BxhEvDso/wi5kiYFH8glYiUgYREFMgEHywlVQnYuF41CJXAjes16J5xHh/Gmxrn2pC5VcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drh1swah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drh1swah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760255993;
	bh=MoG9EC/Bz/twW3mA0wtCWHYEFoZzOCdlJzxdcwQi8KM=;
	h=To:Subject:From:Date:From;
	b=drh1swah03OgEAlxWBwzE935PSrtzFbOTzwL/xbDSPpOQpHttaK4ThRvjiAhsgGT9
	 HoL0snixa0JdEhyee+clp61c7shsGfVRxzmagASIEUpzmdD9KYxnywK/2/HXaFQsgG
	 zXJw81LjgCreWlpjg59rwUUHN44XtcyGmO47aJf+NhbZNQK2LbZYc5pAjxOzBZMBAT
	 YEpQhaCRmF92J4ASZ3xCYaNtbmd7a2Rv6rTR1LOVPz7w5sCU44mri6ObeJNwP2nE7U
	 wKQBRfvuQJe07EdqY4D/O+bWtJPfzZR2ZMOrQM6XsZtyt02i3Mov4DzdEW4T1QvZQr
	 qUEvJIhvkyekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901AFCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025599358.17984.11145579276572098173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3d7fa9fae5f5de606f2739adb63ecd2a299faf88a8c6ccdd52541a8760b508
Date: Sun, 12 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760255993
