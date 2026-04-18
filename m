Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43632BF42
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776544054; cv=none; b=k0RSMkZyRbcwg2nSxU7AQvgHVhjYYclyKghomZfINXsEdJMde/n/3MHSzy+Zt91Re7iDJ+xYmEP8286yocdNVdEBf4D91msm/iTli2Pcp81lcCOTDUnaUmsVviPBuVc71Nlz2YgoAEdBiPLwCIGwVppLBOqY/VVfl163E1pjO4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776544054; c=relaxed/simple;
	bh=k5KxNkAt5WLLVCdNSA+DYR01NUrtmzTspB+75jUkv7k=;
	h=To:Subject:From:Message-Id:Date; b=m2zfaotcIZXq1m/hEjCR6uUgpQESmQ0oghNdfywBDosS+Ktvr0YxOd2SerG8vjpqiODaAhqxH+yPa/45J18Qc09e+KVdzx39Qan1o6jGX3fRdTKTFkuOkD1ny34hmkqKmMRAwp84YIe5dtup8kz9uKZxaY61ifa6UNvnBg3RXzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSRsKOD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSRsKOD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C9BC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776544053;
	bh=k5KxNkAt5WLLVCdNSA+DYR01NUrtmzTspB+75jUkv7k=;
	h=To:Subject:From:Date:From;
	b=iSRsKOD077ay33KFJHj7IO4IR7oM9pvpPtQx3efYN7Xd94+T8yPJarkTHQs2LHWar
	 jK7fif3th1kR7zHeSWzKoVdk6fcoWPFJVMRukd+iWxe+zcAyJonV2ErzACEp+3q1xE
	 QYaIotr3AEJt4haaMu3ECwclcU6GOX5wG8nx8P1M7COkxR52YDsPw+yOLE/hXICaJv
	 JtCWBDG2j0VZ7+bb6Jr9R8fPfiYcrNIrXuf7iDS5rXSPwXK489Se7Fqh/ffDjZxO8y
	 FKYiyq0XsSoDnmU5sbPPsMK6lx+ymMtMei2QLZ24El6DZhA4kUZFEvkTo+qpnYJf5z
	 KxvCtyiAFTunQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BAF99C8E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654405368.31183.2829597503325888836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdaf045f4e94107370a695c94e4d402c22c5eb0dda5bc08572f834726f957e6
Date: Sat, 18 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776544053
