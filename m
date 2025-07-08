Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A858221FDC
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751957394; cv=none; b=SmEB02t46KvlfA5Fd6IJm2isS6xVrw5JX+TYHi9GSGSoBbCWA+9B+DEtHlkduxkZhrqIg/fqLTHXnbaldWMQrkCY1o9uzVkxDcJlLdtchpfnxyhZhcHsIWtOm4TOzT/j7eFV62R3PSUuXOjVQjqMgY7jbjjs0uvzlO/hdrjk7ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751957394; c=relaxed/simple;
	bh=1iRQ7TJYeuWQ+afQ8dOG9CutiSyIsc0EJzykUeoNfPM=;
	h=To:Subject:From:Message-Id:Date; b=Hk/GlVNFyOFsHydRRBcrYTWCa5ZlNvrlj6C2KhrM0R8eFo5bgq5TQL30HWpTr32w9kyYw8Is93OTuzb6EspuB+WKp2rpjAn5atX1UB7TkJp7PMd9bg24Z8mGg6yIF8/VKsZlVq8uhitKK/OOlvX25WKkBu7SZCmNX0kkROA96Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da2/Axu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da2/Axu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751957393;
	bh=1iRQ7TJYeuWQ+afQ8dOG9CutiSyIsc0EJzykUeoNfPM=;
	h=To:Subject:From:Date:From;
	b=da2/Axu1pilZnefivJVLul/NTFfLSqK0/hP44tNprYkHTfGLeDNbu8666IDfJxZVj
	 sSOIn0fxZLNfk1NKArC7UtK8HXSSAFznl5kXUw041AY6J2MZHJadHtMgNIFjbSp6gf
	 a++4nfHVk7HOwPisSqx201uFawZz11YNiEU+dpStlmXarUEq6ITHeaWRZfy+0ehFDO
	 biRS51dBAng+bJd2RmA5v0iAbyHdTlgsZTjqN2QzPtKZ811s79bJ+zEPonycFkddm6
	 DGcG4WB88ewN/PeuKEMgeoGRG/dKKONXuWdEMhre0jIKxrtAdt1GrlY7gSUuYtxtCQ
	 s/zUBvPziDd5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195739358.21847.7730886910669957478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496b36fa423c6d610c8b8d100b05efa38888f2cf6f182db4abdd7eed853b53c2
Date: Tue, 08 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751957393
