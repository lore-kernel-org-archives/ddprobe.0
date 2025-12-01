Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139E721A447
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764620574; cv=none; b=Gv2/zgVPWVTJbqLrX5DKqR5V3VhLkiJqk8vMgEDM5Icz8UdxFvD0doZ2bB82XYO+zUBPVBl9aTOA7R4Iz+0+hUWFGzcRJouSn8yQoVdR6fLepLz1ELsnatbNjljgNdKMQSUnsQ93kecqDZJXHa06XhdHhanVo0uhfB4jIuu/A7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764620574; c=relaxed/simple;
	bh=dQzkcoW4Epvjazm6ubi3ka6YI/jQjVeClzSWKe6GUZA=;
	h=To:Subject:From:Message-Id:Date; b=PDnF8CQNUtSfOvOujrBfO4jqrbSi4ilE2e+qRgu0QRl/Rw4bhI6sYoCNdUrkTB9HLf4VNddaQsvgzJ0gfH2NnN5/x9MwZHaqpkq95/XNhAx/688g4slf/pRL95hgDcGFEi2JaGc3qpdV/Xe7d48OG5QWVeQ00o1QCh02bSMvyY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXzLpBs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXzLpBs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764620573;
	bh=dQzkcoW4Epvjazm6ubi3ka6YI/jQjVeClzSWKe6GUZA=;
	h=To:Subject:From:Date:From;
	b=YXzLpBs2GSIxJk5hFRmybDUn51aqhpLYboRODzhvLAQyrZIjWV6qYSCgG6rf2hIvr
	 VZb3xYjcHjXRa0imjcXmSx3Fu6eTf2DFgWPrNHYZ3j9nynQUvPliUAjaY0/Fpph5MC
	 YQci73a6kLzWjoFlqnwUCvcrR/k40pMMdjpqDFouQJbSP6Fc4uIwp+TSTfvDnfls8K
	 KepQ+OKkT4gZ4wPCSBOVjpw/Q2XZscw1/MsPRVhXnzTKSKX6COJIwMjON9VexI0nBa
	 gh5QIS0pApatzRqWaY0/WprDHvpsn5pd5EpoieBkTnXZgdAVaIcETMLp4iKLS0K4B/
	 M3L9EbrmtihKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9352AD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462057359.882.3029797680458867630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0ce2d0cb88fdb06d1d12912be3d4c4474edf941e8b14fb3b8e1d210548ea38
Date: Mon, 01 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764620573
