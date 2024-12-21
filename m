Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3FE3F9D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734755154; cv=none; b=lpm4dmHs+C8IV2JqEZsCh79gbmReIY1OTYTT2fN9j2Zs+dNppaM+npdnCPKMDlhEjXbfyWeaUwCgu66VqYVAPmqriCdxBw5miHGIXQrB+xqwBo4/qYRQknR470GuCQjaLWcrrXgkUkfC6/ddcHH3sEoL/EDvfdCR8Pb2flSkNWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734755154; c=relaxed/simple;
	bh=7TSiAX/4yuiVYnSY+8IkE1Ukil7JLcXItc27RdDqFWs=;
	h=To:Subject:From:Message-Id:Date; b=KPmO45TtFh99eseOWhx9qw4oaMjL2/CsivyO63BjSSrEcJ1oo6K4hQurFta5m4hprSjOIp+t6JSwbmh9PAD1q7w8CCemTdvI3Htptsn6VxkHiITAX1x8fWhKmGHX8+y5K2MPOWWoR2DPlHuIRtucWBf3T7c0vtoRslagYM5smnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDovhC/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDovhC/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8235C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734755153;
	bh=7TSiAX/4yuiVYnSY+8IkE1Ukil7JLcXItc27RdDqFWs=;
	h=To:Subject:From:Date:From;
	b=BDovhC/zTyxyQqyeScsJFxwoC6TxOfP+eEZomzjS0X0hCi0LH7NyLrEseUMWP32i2
	 eY6wm2YynWMRcqqhkjDg1AZhESyMA7wh+emEiYf5uevHyqmlxbru2el1vMOyzGRnCP
	 xCoUW+KIxwtD6+EVXnqMnSI/bf/xTTgl34An2EjYBznqtf6IlwO0WWvP008fjfpY+i
	 ToDcri6z7KlGnYvyOhBaGWnDKw4a22PHRP/zUTOu/P3NmU3IX1u8NDdosKTq0/olpB
	 2ZjH67SXPD2KscrTYEaMAMJFpn2k0u5dccihPCbADcjc0jAFlQb1ToVxvXsRgAuOCI
	 BjHgtG92E6RHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC862E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475515365.21284.5910616533388697767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32de65b9dd18bfbe2e568513b95a1e973c76fa42f7370590036c45a159eb803
Date: Sat, 21 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734755153
