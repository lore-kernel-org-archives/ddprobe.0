Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EA431E824
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791064834; cv=none; b=H9JArnFgbEW2YEf+DXru6+Oq1OQefwG5hQBOFcaOGKii5jeRzffu5IPGxUCLAXRicKfd0vbkgaZQvBiuaDiCyeB5kRJ2BPM/2GvjopnSv1hrUcGwY4NX8Sq3lP4U6MtPqUJi7e94U0V7+AASOWg0X5bXhgOjqgogVdcSIVUVbCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791064834; c=relaxed/simple;
	bh=wn23lAe54dOruYew1UL+PgEUHrq9lphPhl/UiPXsnQ8=;
	h=To:Subject:From:Message-Id:Date; b=KccXl04Mw89naTSLF9SQlK0Ab+mGSb84KBHY8X152QnRGzyaXkXU4iiMMyF4hiYwj6+BqKJPYQU21nWFRcJ0hxNhIp2MOcigPm7mXZORpuMXBU86W77bN8Yfyh3RP3T/WbGew7DBIZt+7cFvveFltg9Iar/8MJeQW+lym+8ArHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+nZcjvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+nZcjvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CFCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791064833;
	bh=wn23lAe54dOruYew1UL+PgEUHrq9lphPhl/UiPXsnQ8=;
	h=To:Subject:From:Date:From;
	b=P+nZcjvKu/eYQixe8xhZSsSn4bvxpNWfgw1eoMF+5q88vAhTLVdEkbz/HslZeRxry
	 B2L3sTd8JOUPf71kZjBfkRcBR4SS7vNt4JovX/VxhngfIEjS7tIsl91RDZcB7/ks06
	 ocAeeRUfadUxGCEI7k1x1NTSnAxFCgo0MH42ObA74VY2gkAdnpq9DzCR+meYY5kIlM
	 RHM2s5HA1ROR6mudpyLbO2etm1npv+acmC8xp/U1AcCl5FOo+oCizbELcbeuA600Ri
	 AAiLSDh5XnxouFdPzT35TpRz1bzevHSt6uKqhtlfaCDmAVPuhiTL0ijgKtU4NvUbCS
	 waAFIxlfh5EmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71FACA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106483372.29366.1425670319630219040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb7fd87d2d4aa67b2565e50e9596333fd240be71344087d72c364d232cd165e
Date: Sat, 03 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791064833
