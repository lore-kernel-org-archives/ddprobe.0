Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147873EBF31
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770885294; cv=none; b=GSBnk/uQaa5sg0yVzKoMpgT87Uz/2lLIYPfe+AfQ+ZadRMSe8zmQAnfJwOpUw0Ilsv2tJDZgb3XdcfC8TIv+gqdYWoFrPFvANn8VPFrPLtzqipOOs0X0o4CW1mkJ2vitFOfpyGG/DgfC5J/aXS00RZJJ4SA26riQATjacqTD6Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770885294; c=relaxed/simple;
	bh=lMtCjrVA5ZoK8T90hpMJuo8TK+qFw2jaHgnNN2er2EQ=;
	h=To:Subject:From:Message-Id:Date; b=A6fQjgvH49rz5Z8BcZQ9fKWlntADwEmhpMgTjccEfNl74tPfUDMzsF0o/pjNK4WOAScfJyYvWWM8hQtI0icswbfFo3PjUjACm9FJ9JDzfjN6KnQftTWyKxVJyon386yHDoWOM5GK6Mu/gnUSzj7eG/78xWVPV6gG52oSLYV7lms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRhLyNfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRhLyNfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FE8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770885293;
	bh=lMtCjrVA5ZoK8T90hpMJuo8TK+qFw2jaHgnNN2er2EQ=;
	h=To:Subject:From:Date:From;
	b=RRhLyNfd9hlRq2I0035yHPMoqdq4+PYFsXMyL6XRF57I1GZ6XNCI9in13Ch8XVrx4
	 lhx/6613//7xH+xcBy2/ikxPosrJ2IfIq8h63SwN5Ns4qro4TMNlk7lOjCqpC7eTJD
	 jT8uNgK6lujR7RpfN86krkICdrZz09NWm3E7AlH92qfieDp0BlVRBR45/Yn1C/HRhM
	 /55gfuF2fC+bMNH+OF92qMwghhi5KjgnFeebPsjEVz5WhSIey5McC7RPDJHogTCwjn
	 iLdGLxL3lvTzhAjbGZxuAB8J0FxSIshmwom/cKJU/BEqKekOvbvk/M0CehQHNhd3+s
	 mQ1HV80rf7USg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E695EDF05A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088529363.31257.8323282174608366819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9295853947ef9a86ea90011c4d220ad9a1a49dca68cd59fae64314a90b6810
Date: Thu, 12 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770885293
