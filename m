Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296636FA7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707715697; cv=none; b=qLWg5E8F+fbgkqLCEJDv5XFPpYajr/t1K46USsp1Xtr2wj5XTVyoGdVb3gIJuuPNjU8t4W/PRJTAtMS/XxBEhel/Te+nIoA1wSW1glzldE9X5Ru72HwYlZSIfS5iM0/hAln+NWbLN+i2gITNYH/poapihsfSXtQifdAmVJjK7DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707715697; c=relaxed/simple;
	bh=fZdX7W/ryQIjpWSCHlh3BZCyvCBhNJUODJEFzcmLqpo=;
	h=To:Subject:From:Message-Id:Date; b=uOQXAIhq/HI0kBEiRFC0wcN5vjxgaurxCnde/JVXVZrzBYFoQo40sslVPQXUz3Dx8IJiIQxfrlR6ZVBCokWk+cM6nfEItLdrVumCFUSiTzvzYytRk1Run+XuZlyV8OF30QqBuPQyM9r5mffyDcPS40vxuwwCKI72cbCrFUjbu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3uAdI0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3uAdI0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80664C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707715696;
	bh=fZdX7W/ryQIjpWSCHlh3BZCyvCBhNJUODJEFzcmLqpo=;
	h=To:Subject:From:Date:From;
	b=i3uAdI0lUa1dasImt+inpHnL2xTqPlEyJ5UyI0NxqhTkQYaBh7BS40SeWuCNZJsyl
	 20imtgz+bmWx8mm8euo6JSMmYJo4580xxB86LDr/TTytccYsGcTIhvYTSN4jb53wHl
	 s/pq2WiCuyeBtLNe9ty98wqVt8SttlwaIAE9Ic1nTOnP1QQHqSpEb3PdI2BTg86TZ6
	 y9zpAwvOyt655+2I1CWwBVWPzywyKv9+0xiKgyQoD9uuyarp3CuKX/D86DqPDNiUjI
	 wlCTdKAeTHfOyfo8xEkxnBsp/lJ5UCds2lYBnuNEnPFdY+Wq6m19fQOj6MAl84j6t+
	 PqYuHBfmmVzxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A51C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170771569638.30795.10110070348749403827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f419882ea0aba46c6c455a2ce1b913b756ad2f57ebf487405de6bfb2b97185
Date: Mon, 12 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707715696
