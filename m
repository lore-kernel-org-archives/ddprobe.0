Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83443374C2
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719564863; cv=none; b=efrRsEUtrAsajD+yJIq7srYkCful1tPMkUyP3XPdXUYO6dYwhSDDHACE9+bEPNUTJV+lPSoew78oLNHeOCal4oJ1TaH72wUD85GQFFS7XEnN8nt4QOGyQVoe155YZUHeMas8Z+8w1MtcwA0JwFRMSs/PpNUyVYXoWENP+3yY7hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719564863; c=relaxed/simple;
	bh=ui2ZFdCEhJv6EJvTOvhN42jqDzEr3BYaQp9ML4MTOdk=;
	h=To:Subject:From:Message-Id:Date; b=lW/m0Waw5N12EFK9YREetrWaR7gFcNLYBHp/nRpN3DSLD8aaygSVE668S2nv4fwj6Pn6htr1hoN9G1AMUFXeXAmyb3vI9hrZdwt2ngVqV2Jp/yaNJkafaVzuribjsfaR9ZB4TLC2//wSc28Ew3XkEAKPgkBwCMAx0sQFttCqRDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV+Bi3yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV+Bi3yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE9EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719564863;
	bh=ui2ZFdCEhJv6EJvTOvhN42jqDzEr3BYaQp9ML4MTOdk=;
	h=To:Subject:From:Date:From;
	b=IV+Bi3ykOnhh/jORZrXBZmLeFpa6Qp9EpfllNSvS7K4hM9zsyXaJiHyhWbB5ppIVC
	 uxKHEPc/7RYTK4tD7j2Vd5AaZP3BPjX3DQ8LaS4Sh1TYa/8wULyuEnca1GhcMX00Pa
	 Nt3xBXjuhJKx9MDbQmEXycYhoVfDC8tPcrywyY3WlFBxgsRGKU0J40ZrtRxYqzwi0h
	 hHYCxEPsPUSYYHIIEMnl9/HDekAoaMbkgDTPs51UhB8/zrUo6VloddlE1rpwPCjEOE
	 u31nGRD11HsdOTCXAaBwmsiYmeEGVM6mSh6M8nvFh31V2Z/MTf/zfeTq+AY1VyugyM
	 d0nHrnA92bHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D81AFC3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956486287.4869.12603501621482510476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaa3284b516751d8bd13cff84e0f7717bfc6a9bffed9944351252ed1ce337f7
Date: Fri, 28 Jun 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719564862
