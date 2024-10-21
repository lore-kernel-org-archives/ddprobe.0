Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33722A41
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729480554; cv=none; b=FkFe6yD41XaCOc85vaCWwCiBX8LBRkqjOP7H/thmDvQymkzdJg3bFWgcPIRy5wn8QyZ+lGtayt+jvKbN96uVty6BrzL0LUOG4pkZrESgT4I8/unrUUAsb2KjZ30qKAmVN6W3IFrwem7h/E6EvBQAdAE29UQ6x66or3cBEU8hcDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729480554; c=relaxed/simple;
	bh=rHhiWRJH/tk12+cu7KNBJsnf2wqQmbUjNzZfwosjyDI=;
	h=To:Subject:From:Message-Id:Date; b=C+wknj7mzxzMc3nslneXCKPBR8m2v9fQZQ0v3BBONxbSRz5YwyRF0suvakh6MPkvTb0CafGi3TbEbsJYgSlyG7T+HJ5Ewx9deLOJDa9Nna0DBdeKclAn000dZn/4ssGh2Oc9p86CnVDtOK8crmZHGl1Y3rRnU2Q8xbUgfE0M87c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQorU1k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQorU1k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FA4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729480553;
	bh=rHhiWRJH/tk12+cu7KNBJsnf2wqQmbUjNzZfwosjyDI=;
	h=To:Subject:From:Date:From;
	b=KQorU1k9ojPtIJOsSSTjz103Zv1bMYQdbP+bl8r0DHSFB3vab+kylbewGRV6GoNtA
	 N0OFHDzFFfVK8L+66UfUZWl3lzfFiM8ek1mdopWJ8Y7n/GdruNan47HGyZlh2adW+W
	 joubUGws/bDxT0G7XSVnJuUioEbKIu1SNF2fr4vvJXbPSDWT8JWP/izUEi1PeAL2XT
	 ASDI3INEGGVABtZLEBDhwDN7O8bHXWcSjiqHYfoVNQHu83wypGE7dffKjNOamSEXq+
	 3vXEqgdeiyQRLOkdGyb3YEiHtKr5+k3R9dqN9Ua3V+GT338Fa2ALwonTr1xjANtMI3
	 xCaoEAsgdhZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C789D3C933
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948055360.4074.4925715289806580617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c8f209d62f6d2c130f1e70d091351204d810fb264a2097fd49a7f9fa3491fe
Date: Mon, 21 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729480553
