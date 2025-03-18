Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1E01DF743
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742338796; cv=none; b=ibxfJ77kwQkxYLrkzuZVIpT6CdstQ9E19JjxfOrqbHf9yD5DKGR0le6a+YRyIXGSY16X/HdlfChcoItnCrwFp1YKsNUAuH5SXRURes/DnMV6nlWl1ThZuEkCxkpSfY4lRGS2yPX43xkH8BeDVEIfb7Z1XPklBl7N7llDIArQV+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742338796; c=relaxed/simple;
	bh=pQ5zEoHYf8q/enBi0CGFYSA3ZW7T6HV/WB0SLuhdKn4=;
	h=To:Subject:From:Message-Id:Date; b=p9R6RyTYj13xnmxQIFTo8xSVV03V5T6No6KuVr502wkh7kIFW9BdrR0xBcokiAiScUg2cYzjci7Rtqe3HPajq7hLeDTObnSUySrcAH1EYbDbZt5rtTVmUAFJ2Ka13eX1GUmHXU3ooIRswvZV0EqkcwDNBOSaA8qhVyJbQpOKKeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/n2rlwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/n2rlwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6D1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742338793;
	bh=pQ5zEoHYf8q/enBi0CGFYSA3ZW7T6HV/WB0SLuhdKn4=;
	h=To:Subject:From:Date:From;
	b=T/n2rlwlRaUkuxOUQrB28vyoNF/mjmZGfmcdSiJALfd+AJFu8bC9oTl8QXjktg+3b
	 Vyt6skWE4fa8NxF94+ZPICFbMkuCaQ3w6xl/ZBhq272LHrs+kV2xpuC4IVcOQ6zOTA
	 hQUHK+/c/V3QBxC6QbLKH0Jyay5cJ36eRfBGinoPK7Ivd6vuXRSubD/VpwxW7otGE2
	 TuDjDA6rV6bH3A//WK18TaYgE6U6MBJJGXUCF/HJ3CS+dWYk6Edslg/sNIqZS4ARyk
	 5iXO/m4VfWjyOq+Yk5umKAKRJy63kXIbp8pWbZ+obpcunoKjJ4/rmzHzk2ojZ+gR6B
	 mgauMVD2d8feQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431CC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233879359.918.18198499447893510387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc084df066a13fcaff86a93b7f522d78eedb5fa7c30c7dd158fee9fbdcef37b
Date: Tue, 18 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742338793
