Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88CB3FD131
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774538694; cv=none; b=pjbgWcoU+/SCoFa4x4sMbJuxJd6nwBJV3/CtPBHR0H73n9L/Pb0HHuvZ/J188ow6IIfHwweE7XMg4i0OZiZtLuy8cgFRQup44qjpkM4yj9yspxt5N86xVibhCdpugku0zg62ZrxyaBui4g+duTK7EFKpGEfZ+LDENcE0TvYC1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774538694; c=relaxed/simple;
	bh=H3XQKq1PNN+77ar0mNRBV9cQ58CcpCiqK9SiFWkuqFU=;
	h=To:Subject:From:Message-Id:Date; b=fOSeU6yegA0IapEZZ7xeLVjH3y+Jt4dwJP0rjVh97Jt4aTk9dbb3/PwUhD2kH7FR/AFQYZYb6QHBSiccqaZRDaJYK77Os3vaUF5dk8a0HctS0O/eKhmsKSn0eycPTScCW/Hvbs91mDAgcu2dyjEbwWsIAnyrND79hbSOJ7C97M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBWgdanR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBWgdanR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C11C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774538693;
	bh=H3XQKq1PNN+77ar0mNRBV9cQ58CcpCiqK9SiFWkuqFU=;
	h=To:Subject:From:Date:From;
	b=RBWgdanRHd3QPy2h/cXdctutM81cSYpsKRcimGIATmt3acTCA0bHnA/AEB8AvunSJ
	 bs69q4jtIHwzn2FM9LrEUBj6+eWR5mhski4VMr+V0UZCvadQGsb87nEg0bRi/A4kRD
	 xSg1iLhuouxY7LC7G/eYdW+4336TVBBLQVuAR2i2PyFKsFP5d1Q57XN+1QcVgQYJV4
	 j2T1GTTkvJdqfGDv6I2wf2vGS3FEZd2Iw6eGvpIqC6eUPlIJw/o7x05hEDonI6CQbY
	 RQf38dECZTunakNmM6lFOFmJcSTkjBJ6NpOcMTROF13FAosR7fdNSYqxkieTZDBJIO
	 uTS8j5H0zhGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197510A88D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453869358.15426.13028389560750813534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e8527af6354200c746adeda4a5ce1d1c3a7dd50c9e777aae63cfe57f2823bf
Date: Thu, 26 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774538693
