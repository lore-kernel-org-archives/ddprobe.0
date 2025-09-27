Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327DA2222AC
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758961794; cv=none; b=sLyoewLhCTFJnJZ9q96qfjCMYGVwocsxucbSme+lQHdL8JKjlYtRI7AUgNZFmwgz1+LFKNMRP8jYd+rVssul0nWnbS9XE86vzCZZi2d+mrpQO/2IeearDLT22a8KeMGrMMInnp++kLOWgJOHgXwQsIZRriVeYbyRC6hqyMYAaNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758961794; c=relaxed/simple;
	bh=bkC+IXzz8OxzABP2Ki5c9zs5/EalGKCNY0aZgK6BR7o=;
	h=To:Subject:From:Message-Id:Date; b=PmLxPzw4PUWKpooOgoz4nuJj7m7NHBMNajdqNM5a8LPrHgkH9o4A0GOyMJlTJ5XxoRHBp0ynhOIkUAArUhf/KwjUN/203RwhJ4rWWO5+BoGI81Mbc/bLouXPnQ5vTxGq+mwwLls0Ihkrg7Qqwq2lOUhLYlFJvDyG5D/ZXFmEkKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMYL8d3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMYL8d3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD84CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758961793;
	bh=bkC+IXzz8OxzABP2Ki5c9zs5/EalGKCNY0aZgK6BR7o=;
	h=To:Subject:From:Date:From;
	b=mMYL8d3Gz8Yb7j+7ORrhJhR8n5xHOcpMlFdaBrTEotl6l5dxH7C8Kzw6U+zAQ9BLJ
	 vdzFqsqaaIQwNPe+xrICDFuq2I6fsSQPNC3ncL9vwkLap8ZIqnqiYnPhM0ARRyGfiJ
	 I0QIB0PdJTNqN52Rt1RrQ0LarDrLCHzTSzB48u4QkJI25HND5uib+A0p7GEEA0yGAj
	 V9Dm+j+wjZOD7EyXOfFxrtEHk3QCu+4SaWO/7xsPE6XessqRXO+1AotwT0Sm5cLmk0
	 7FqQUA5+hD8rvfJlKf+bMQtu95Qv8SHsP0UM2sFwQrgGQWLt3ClbWtUbXxTpj7Vkt9
	 jVldKXh6SHMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DD5CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896179361.15167.962580917973361420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1220c77b83366b77fe092235322703aef213d21451a69a9c56ffa0307e9abd34
Date: Sat, 27 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758961793
