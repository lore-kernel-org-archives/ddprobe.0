Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0859C987
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788891634; cv=none; b=nxr5QMprubKRDSU1/aX6Hh5PO2pfx973Iqoc4zKAKxrL/vijxhTwiHY3wXUj3/cBYp2Yxir++kx1RGa2EVf7NL9kpIDzCDM5tw2+q2XTG4oGSJfOPoUIGBArmYsKiXpEieFPepl99oDrwSPVusmfaT9/4GM3weKe6mBCuPp9BhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788891634; c=relaxed/simple;
	bh=FOZV/k/ZSWgpCuK9XaD/WXgfVb14AKIkCewLthnZ5/0=;
	h=To:Subject:From:Message-Id:Date; b=PXBWanPEOYczdk7P7+TH/vCO5b32E39Hq7DOlVqb/pYCjydXVEIoJeVG8MDzSZ91WJc8Fign0HoT6JTzcDfytYPqfCW0uWZCSO63ksjmMcMpibmgr+FeTnltUJkyu3mwFB31/2LBcwusHlVlLfQ8Sy0CvAHrVpyHOfE2ki1EgJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeCUCtj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeCUCtj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F95C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788891633;
	bh=FOZV/k/ZSWgpCuK9XaD/WXgfVb14AKIkCewLthnZ5/0=;
	h=To:Subject:From:Date:From;
	b=MeCUCtj3cegJErjSkF4f/ArwGKDSkO9rKsPpY+A5V7ZzSzdoIEajetuVxCepYFQhe
	 aUOL7x5IpkNO352b3WidrRMXOtcZgwJdpEceZ0QFfMuBLvbMu3yozabOAtmObEyzdn
	 sfalQlBjF9jtMTg8lBfI67fnR9QCvQmFkT836L0ixa7Fn8yDDJ6AenbHHW1xgBPlL2
	 rlt67YsnIuhi6Yo/rsyozbae1e2buUfnP+H/369pNaJooDR1jYh52cLDdDBrFvOnnK
	 /SluaM0YRJqboARH+DXlEryC6vtW2tEValwb6Xfrno4M3FuxXm3MQ5MjtBjlzIMkz6
	 iaoGq3j8sbK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3821C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889163372.7871.14555771992095704149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c704b9211e30bf4358e12e96867d55cd4d3b8961282af81685ae297f0e51d6
Date: Tue, 08 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788891633
