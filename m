Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2584F3F9FB
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774735494; cv=none; b=q6X9ZKvYhimSUOmqXemHnk4NAdiCB9B3/0EiXgTijmi/JkRRGqbSYugXIZt0GkIC4ezVtlNVcKYLrl5ExvY/Gnr5OkEz1Z3luQyd5ma2Mm2IrTtGXecV+mMS48Grk/CCibU1ihrc90aqlmoHoWmNHY/iqjZfDG3YCz0N7eN2XrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774735494; c=relaxed/simple;
	bh=iDBxCmMPIUWtZnZWbAsbT4cYgSaDIi6chKY30+ogYzI=;
	h=To:Subject:From:Message-Id:Date; b=bbR2K65m8hjhZNAX/lZi3CO0gBDZ6Mt7zGpPUIwYcihfcwxjRvpcuWgGz+WvTQ8hezU92nj0e3GM0QQwr+iHQ/1s91IcTBxFur8gSnRuWUnAs5izoRBkcYSwaBVXUZoufArC72gl92rwne/ydGEE5xQm2AtQDQOwKbck6RKvr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2khN1tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2khN1tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9782C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774735493;
	bh=iDBxCmMPIUWtZnZWbAsbT4cYgSaDIi6chKY30+ogYzI=;
	h=To:Subject:From:Date:From;
	b=m2khN1tZ1tRuAgXDMPNjKQjymf0pNGJUcSGIu74ExW8OxHAVIvVOKEJaVszGUct+F
	 B38qIY+Pkpb4i1KqrM1RCevfv3/Qb3lHCBnZoK4yT29ZqfBSY/pQIAFdUXtgRKWwmq
	 md3ghdFTvdU+sLlyyLPocZTkYHCktITJ39x7oSf6WNykFYqiGtC0TBxKWMs/MXeFHu
	 JDcfkZC/ueYY4EGx2QOUYUoW3XsvmvVUAfTJbFG6ApJOBny6hycp6CkhsG83QpH+A9
	 PzCSJWB9Na54rw1Nrl5a5V/DtajNZIMxf0AWlGmP6Zx2cQFgFYesUOoGZqfEY4rdYA
	 f4Pip6e6O+Qng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667D10D1489
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473549358.13201.9845697494304035122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0185e9a62e4c7a2e7a3489f7d41033d13e5abbc9973e61135be108be2ab8c3d
Date: Sat, 28 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774735493
