Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365741F75B2
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734448554; cv=none; b=adlNueJ21cm0anHa5UtB3wNIzXO+t2eFyDuXWjIvbCSXF8ZFSJ9gRoNiVJEqrnqJmbldcLwTMxoIsx7i4RE0zNUdS0kWabqYosNCrd8iR2DuwT+Vc89ZA2Ma3au5PRHqeeqmtvEbI6/QfTdvGuJdJalrko7NII4GQ6HSc8OrHas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734448554; c=relaxed/simple;
	bh=6bseMaIhY2SO2+XE1jPlJr8wVu5IO4dF14GKImpcPzM=;
	h=To:Subject:From:Message-Id:Date; b=ovgqCYwmH/3uvnYlwPC+Wlyi2qCI0GVGNic6tNJL5nX9goS6rLjfOVN1+9goZKH3VOyWtPkgV4vH5Hbg8aUWfTNg4HKgC4xk98euXATv8ruaTOtffgewlY04oKDCAB9sln6w/E7t/ndKcmSdaFDSlEevde+28auNadIpqb7dldM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWe5PCGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWe5PCGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C41C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734448553;
	bh=6bseMaIhY2SO2+XE1jPlJr8wVu5IO4dF14GKImpcPzM=;
	h=To:Subject:From:Date:From;
	b=fWe5PCGzTpoiWXPcrOBKt3YFdfZ0v389PVVVS2ClLij37JjXjZFHCObH7y6kq8wxA
	 3Kgi/fP56Y5SvyFbMcHrTWyryjfgeO/ro5bEA+Gvi76bc6soTj1iHZrUKfqkR2lbH5
	 opI3hxQdzqqrZsAs2ZTaP6JK7PIAovPjQOYNCrhRLdICSYTq+uthQ7g08EkNRjIRM5
	 kcs+A5tw/ds5VHTnuMvPU1bGWq/dJzkOr/EAw9LxkPBZLvWnetAhlKzlMoncg0VUsF
	 eBpMcHkOUSlRJ0wHSALyBSUCh/J0W/qMOL8/3k7WqruxpVAmqP8zcLnDY1QUmvThdK
	 8a3S1CZco5+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD1E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444855360.20601.15028421718624862081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75559cf60fe497955db609a535b61e6b415c0143838eb4cdb2c34983f346a51
Date: Tue, 17 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734448553
