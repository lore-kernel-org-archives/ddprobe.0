Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B449F4A43E9
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788552638; cv=none; b=W34s5Fibl5CvvoCVYT/hbvGzct4GhQaBURUtJrxeIO2VX1YJrH8ZBzWF0GE5ojlFhETUWbKCuRUlwINjkODK1kKQCL8BszH2CgN52uD1O9cOjvsrGawnyu5Tb59L13ZDmv00IkOgsgk3SWmQHOk206jNcio15t5f7YM6NoS7PLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788552638; c=relaxed/simple;
	bh=acLdFe8c08z/I2OGpVKd6hXBkAsjbDPimsHiUzy4BFc=;
	h=To:Subject:From:Message-Id:Date; b=nccXVTmUYOcJcgWryjpc21PKm5DPRN5fRtK1RktnAhv9Y5jC7CyJCRJSVd17sbGS4EDca8wcgD3gDfPFl3LazvlGmciJu9hqgu9CnvIEJX7GHlEnk1Fe4ABQH1T74MUl3QgAzwJX+FkYRZuha4dxnbssNqntw2CdMCvRUBT4OX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtTh8HWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtTh8HWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788552633;
	bh=acLdFe8c08z/I2OGpVKd6hXBkAsjbDPimsHiUzy4BFc=;
	h=To:Subject:From:Date:From;
	b=UtTh8HWrbdVuJpg273Id3C3sIEeyY5+1ZRnyjRgqtnDKIzdALZpRatONvzA/Sy+BL
	 rYCTl4IV+jqraOAEEsMvjuCSq4NSpyP29GOqUQ1NgqTSwUtt5bQdUq6ontJ6vlNWaN
	 YYeCrGzewBv8EVdkKHZ8MegbxxFzsgwWF3Scrfde19CbFZMVja+y9GObF4lOGFW1Cm
	 faM6A9DrksWz+4WiGpAD6c6b8oldeKHB80bJq1r2lVONtWllSRfBizt1xFTEQ62Fnq
	 paM1H6P0BFyRrwFijTe00LvdAYMduXZ0QqQg9UOMM4fI64l++eY3Db1Tt4cMV9cM01
	 T2cODBirNrkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76A5C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855263371.11026.1426859952763059057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c2390b275a1131b8eebced2c34afbd95583f4cddae4b9f336e2216325a149b
Date: Fri, 04 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788552633
