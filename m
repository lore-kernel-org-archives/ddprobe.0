Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18098290F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754627994; cv=none; b=tCaM37FTCwPa8O0gP2sKaTSoTcKy1XDZSpbxuWdT39uARB+HTsBHvNJm3pomgcgOBCIzLqL5El++NunVhroZf9mQYkAockPYYCHZp6DiEhex/KfkKGDnq+YcqPqMWUqO79imLawGmdMj10jVPiPQchCQ47+o0IGrEfQxi2fucxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754627994; c=relaxed/simple;
	bh=ucic/45Trr+K0hH5YUMxeaIl5/7rYrIEI8hVszW1Fkk=;
	h=To:Subject:From:Message-Id:Date; b=F1OIeub0o3p1jb6BBmRqsIVNFoKqd4SYTW8y3Dy/T4agjo6oXiXP6Lyih8yUvbjttgpoYpBNV72kO4wJYC0B5ou0SLuI0/opVOppchpaoRSKMl4RB3Cp0+07mGRe9NeFQaStqhRWl0wXdkiANG/2BHjUdAjX3b6K/mpJSaoykbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKIjWx0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKIjWx0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754627993;
	bh=ucic/45Trr+K0hH5YUMxeaIl5/7rYrIEI8hVszW1Fkk=;
	h=To:Subject:From:Date:From;
	b=CKIjWx0UIgZi54+L8Rw3Ch01HMDlTnVwFcyjO+Xt5LCgue07dvpn/8TzR3gImKkRj
	 IUewY0+WFhyNqr9/fHrJkQ+lIBT6/UD1g8JiSAyq12INFjhG+KVdAq50j+Y2x1Z/A9
	 jXx35DTtWlP1c7cxbWo5iL+ncMwyR6in1AiFc5XECBp6nc/sfZqHkCJfdl8DBZh/Py
	 jW1nA9Nxx58W+GW3HdGDXBHkN048VZM7K5fcyfmZOcIUP0oyBVy3BdvPCY83Ztjv5B
	 Z4hn+psyiozIGaxFNWXPpt0FAD1J2hmNo3to3dwmrw22zwlMXwAolRpBkzkPGtyAiK
	 d4FDfDDhkg8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F46C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462799357.16022.3230916812895575644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a951f9bfcb4c819f44b8442719f76095a738ffe83541cd5434b212407e624c7
Date: Fri, 08 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754627993
