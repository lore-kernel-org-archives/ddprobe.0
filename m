Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5612929992A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785732034; cv=none; b=vFw0mya3f6JzQeKNam/m6fFbGyw7f8c30WhAB9vzMsqrOS+KUguBL12XGcD+J1u5db/DKn2tmgNhQhIGd4VGZ0OArUjOjqZlVmrF1mBMlD54X22ZhLHOtjEgTOWqJfe9ycGas5simWb3c5GGvi1Pn0mKje3v+zPxSFBor68Z1GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785732034; c=relaxed/simple;
	bh=6P50SXXpRkegjw1WIlRcIt72DV+mkNc3xnDyWYFVzCU=;
	h=To:Subject:From:Message-Id:Date; b=jcAlbJWeTPT/vrMEnVWGQGf2DKhEUgG4Y0Ggq3JOkt98wNQhDw8uh3LkQUy8Gx+uFRZbUbP4Tdl3FyEl0Xciex4W2oOW5TA463dTH0jwoKR2UDNJQhnKHUVrw4+ZPlV58Ps3WuDINoA3qLC80nWCoZDjztqUpiuP8pvV3h+/dDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ9DofqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ9DofqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE557C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785732033;
	bh=6P50SXXpRkegjw1WIlRcIt72DV+mkNc3xnDyWYFVzCU=;
	h=To:Subject:From:Date:From;
	b=RZ9DofqI1i4WSItOynmfJ9pRPbiSC77G97mlR2AQzCQ8sm9GrKbcoqxy4y3fpHb56
	 zpkaiyTXkCHEQgo67FHq5H0Grb/7qwipjIIQdUuSa8HTO17Q408PS5hXGGK7x11Qkb
	 TW8mOInAX0HVS33mQEtRNImnf/LSgUedNc1UP3cxIqFq8+eRq1/MIdBspN/g7HE7uF
	 KYrnwzz27iLPfg5fnmQahTCO31/x+qhBMyUAQSagp+0aXyBITsLUtNkQpaAAf8VIWX
	 tj1hK0kgZpGg0XXEQjmbtq6hFMgeKkL+l8Crdlk9bdhDJg0Ug5QMkWnnOwNfUXuYhf
	 Y0gaEj5FAKX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B577BC5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573203372.28851.15930758960176732206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85d375320e31eba86842bedd7d05cada950d9f23a85f6610c29eb2c72d6cea0
Date: Mon, 03 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785732033
