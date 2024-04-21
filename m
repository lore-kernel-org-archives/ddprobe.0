Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66618625
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713693623; cv=none; b=FPAML42tZ7/xH2ZmWqHr4KAgbg0Y0jKhLNoLkVkLdXwTEtbjqFyIl6dape9zxIKGQvkTFyibnWyN8Ju9KvjCIMk5dHE/2/M9fzmQi3a/erHpJVx6RQlJA/fqmb2MoOLhal3HUOBMVJGpL2XFi5nkIRP714CmjZije9wUJFYg8T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713693623; c=relaxed/simple;
	bh=2beYx+9ugW68y/+xVdYF2YrfcXgiWxgHtYYRB2JsE/8=;
	h=To:Subject:From:Message-Id:Date; b=V+8yL3SKf32L5SXN+WlD5T3EhqweHc23qWf1cPmPlS50VuSBKJDuhFfSbmhGv9+j4FUGrAeiFp+xkxi/xG3LaD+PZjQ9l2E9A6Vc/34+RyJDKRl7t04dOEunTt2JeTkFCPkKxGDyIEBz/ERxf08LWEkXLw3NxLv0AQDUMdVdEbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYOxvb6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYOxvb6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B8CC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713693622;
	bh=2beYx+9ugW68y/+xVdYF2YrfcXgiWxgHtYYRB2JsE/8=;
	h=To:Subject:From:Date:From;
	b=XYOxvb6tRylee5ebAUDk/p0BZggxd3WlFRXOO5KyRVO12voZc/fTcXpq88KcWA7hF
	 I3nPQb/ewsbhILzJ1C3lKsiWOdlFsl4zY9Pjy4lwd7Kff7ix4ofsHCEf7GejYQOHqe
	 m+2+S7aeBWUaljZioQ+b3Y2wmew1nesDTjOJhKJuNRWf7rJ2iXUWJwrJWDbRTMRRkf
	 QEEbz89oX7XfMm/MBltSPDiOS8gxAjilEARWREjwLJxJt/Pz223ka4a8NhQOWaeioY
	 OlpkE45F/fAdBVf5J7aEFGmSrV3pPrMxFRSdo19j9Fn/Ik7MO9Br6EPBmIWqy+Tr3M
	 BEtGCWPT5lJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93BAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369362280.19738.10442789871293070469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543ff489abb4b348b2ee654c5097f2174299857d8ef7af98cf46b141b4b4398a
Date: Sun, 21 Apr 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713693622
