Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D0F4ED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749990594; cv=none; b=hlLRUzxlCrueFzRjUZQn995VjzbzOadz5pS2OCXvd9ZhGGyukPNnJyJKE/jygqkbzPXHuNPmUUpZaQsbNetHIjitNdfVCXvZr07uB5/C1UBAeaNwdzvzfDS9i8NcEh9is183Hg+F0dmtkYWhfFNlXYeCLw2uWbZGG2o1CIi6tiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749990594; c=relaxed/simple;
	bh=3Ixgl69+hhqeVFJDnxMy4TUqCztNv5lXHEK1190glkk=;
	h=To:Subject:From:Message-Id:Date; b=uxv5d2pM/V89vdTNeeVJGx5OWoI/rbUfPnXdW9VKL5nJWdq9b1HKKJpCZKzFzU2YA8m/5B3g90HZ/ic8lMNoEctsn7QxQVfjaL1G0YCdFtxpUjzqscfgDURxYJxp4HmQgvyOskq374XLvAXrqsqR6mxJCkKUbh1C7Vu5bvGJ2aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa4gTcWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa4gTcWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC50FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749990593;
	bh=3Ixgl69+hhqeVFJDnxMy4TUqCztNv5lXHEK1190glkk=;
	h=To:Subject:From:Date:From;
	b=pa4gTcWM+OqC2kBnNy5KQ2otVHy/WefGm0E1AcUPvalM0PA8tGx4zNLGFJfrGPgSb
	 MXleK2EwjhAzIqVcvKF3VazEQCLh8NW7mzC/E/3xzSaaYYjzhzzEfXhZndG6fDZB+U
	 pQGqN9WZfTrtXCi0Ctau4V8o7fb4YmjIsXVWFfixQZZwSWmG5lz1DUfhPgZ9Jeuscu
	 mvPo/cqutwmOckEu7FJud6qghbrs465a0OV5+OzVX052hhgfHvT4eRjbM6PnZ5ovGE
	 AdT5hmH2+WwbgTukqcUtWAFBhclgs8bI4n7lS63gLVGGjjX8/tsVAvzw+dd+y9TRbi
	 prgoakgoSMe+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A1C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999059358.14736.8147814840687473252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31eccd7d43f5f28568d8b6fbf5649d2ecd514ff589a91004973e864856d34f3
Date: Sun, 15 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749990593
