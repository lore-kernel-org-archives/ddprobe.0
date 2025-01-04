Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880641B87EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736005554; cv=none; b=iQQOWb74yrpnGwacB4R4Pw6GhfMeMmrdAeo4sUfAK1hS6lwG7q65JndS8Pri0s1+nLGJ/OJRODJzL4QkznCSAVLoIj/hJEGA1r6YitdBgWjbtI2XXeaCFX6/T5w/Vighr1P1nZ1CcjVtGl+oxXeUzwjIscmhBEAnmKkH+pwhWSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736005554; c=relaxed/simple;
	bh=RCClLPJu1ollwruvhiAjeEwi9/Sw1jDKZcoFUuQcl2o=;
	h=To:Subject:From:Message-Id:Date; b=r92zQhBuGHrF25qp+Y5OZvNwX05I0WeJF2lpaowk+iByRAaTzhevJdCRb96nV4CGlMw/YTO3aTMkGQ9qk8UY5K5MBX1xETKJH0U0bkq56sERu+9a4WscOml5M9NAnk8/JYZgjDt89+gCHqK2TfaAjbTe16HwWeHN42apBdiL65o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUq5PWna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUq5PWna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB031C4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736005553;
	bh=RCClLPJu1ollwruvhiAjeEwi9/Sw1jDKZcoFUuQcl2o=;
	h=To:Subject:From:Date:From;
	b=mUq5PWnaRv+EoslOUsCpT3FbEE9WEEg8qijd1Bi/+y5pCLcj7hacHefn3M7k1+CaB
	 70lL4i5nOvC7gXuVY424oec22va5/VUNfCoSL/E3NeYBSbEUM028p7x4mR0cXdnuml
	 s9wRUILoIdX5vWLtSDkZwctv0LEbttQCeYp8yRr17OVWZ8vLQab/gdtMX5/NDHCz9Q
	 zzv06z5dt/Tcf0SB1thfkbjHOIb9wvkBgmaxcygUDgi5/Srdoo5bw9TVKzkf1fMeLT
	 zwqIrVnAVYaQl8BEiUg5FmpKxbOZvvJncTXsnXkhwhPx+ag1FL44RGx5mwzzG/noVx
	 Ob6xV6iypJZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EDE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600555360.26242.8374870583276794100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7519a17caa2003c7a23d2ea8d73698679eab7e61ac6b3a9aea5a898a676930
Date: Sat, 04 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736005553
