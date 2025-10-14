Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B8724468D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760485194; cv=none; b=Afite1mcWrSWVgKOEGYZZPiC0LXRmGh+1roscLJgLIb8KNcYIb4sAzKZy6v/N/B0ngDIDRywXaVd2bzZPwd9OdN9eFKV184RtS5bIk/ftU/IHv0HHbnQcGlNXYDjXwWmHqY+fCwApeOJeomazdnOyJKoxVJA7th1NS8n+m84oU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760485194; c=relaxed/simple;
	bh=q3BB/vPyEdemnOv544N2i1a+ETVnCskkvdY0gJKACMI=;
	h=To:Subject:From:Message-Id:Date; b=d1870gwSjRfEDnG3tIQYZQ5r7Ii0jkwZRR1qhnL/IpOOgpeBWq45OulpKtqJ4T5pFRE6h89eGjiu7ETOhj0CGKndcJlWiVnnxl1n/S/Lfb+Lif4glPAko+40mF+eXUwMAwQxoq9CFHixxYCF3PEozUXNd7QIdz2FvMMcS2OIS+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp6se1UX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp6se1UX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A980EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760485193;
	bh=q3BB/vPyEdemnOv544N2i1a+ETVnCskkvdY0gJKACMI=;
	h=To:Subject:From:Date:From;
	b=qp6se1UXKbDNIJ6fya1sdGFDf0OF5KCRqO5JNJSUc0MFea+AMuQTVNItauOtPbZw8
	 x0U2uPyY+Azp9T1QQcAHLqjS8+gmy/ieMnmQFi6Xhp1UbWdaCCouSR9kWE2TGE52Z0
	 N/PFwb6ou+WNMquzC2TOMTI9CqavzDooeMlgVlJ5A3WdrV5DUwGrPFvpMzKDWPToDR
	 CGlmz+tLaTC/XCg4lFdzIyXF1fXJncjgCEHpw9Fp7+/p6ZivYl9m6+yWxNV4oWXVM+
	 B2EsjBM6tVhPlUuD5GmZAIJzbogH+15GTBt1O4B4ccVtSNtk+ZG9bc4n+DEpc0H7fQ
	 r84FgNIvYJ6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CCCCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048519358.21881.11646322844426174121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa35fe55751f99154bbe8765eda50e200705527f50dfca8ffc21ffe37ab99547
Date: Tue, 14 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760485193
