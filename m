Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC7339A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764368574; cv=none; b=icdjtsfM9klLDIJWSxnJxh3dSFvdEtyaqo2pSZXgXrBLHHJCVEEEx04/XOwIx2iO6+twPXhKJv0Eq1TDTyf64Ke1veY8i/kVItl+qB3JVa+Nl1xweDLCxcmNNS7+3NZKCF0TK/ubjRKhWgnFr44HxKdwtL9bZorsa0JXtdoejUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764368574; c=relaxed/simple;
	bh=B8DZh/m96GUtVJ4fWjSWGiBWOnIjlpHdp9YgZTmvT8A=;
	h=To:Subject:From:Message-Id:Date; b=FyDynOVNuyx6xbFdZ65TmZNmyMfa8A2LJvxAUmnvV1/Trhv3Pc1o4EeaeZ89aFqiWvx6lp+XjOCCDdfysc82ngq+lrmeCBDk9FQboLDiVsYpMmKhB6VhZcfe4gw4G+3UEutu7EwcsfaTNJNHY4fmFYS3K33tIs6T90h2UjOm2hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFbajuB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFbajuB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764368573;
	bh=B8DZh/m96GUtVJ4fWjSWGiBWOnIjlpHdp9YgZTmvT8A=;
	h=To:Subject:From:Date:From;
	b=rFbajuB7jyEHoFJdcgZ/kGNexOCg6+MXkkID+BowoNL1P9eP6sd6Z5x6EzVgxE3RA
	 jctSuUQE7OFgCzWd23DJLjA7S26cGMQ9yqpnBKQ/ly8Wqgo4gtVF7g3ewt8ULr1Y0R
	 hvj+HNQuMW2gra6WIsz+HzjQugZWAbWEyMQA5VjqY7qGwR1OPWR9qMuw5v0qybUQCo
	 WYZ46KoqdNATWjMJ8FU780I2TJDZ8pl2XDpUolM3CHfYgRGlQJJ8HA+Rq+x5yG6cPe
	 DTJk2u0bwFIS7skjUCm0iYP/fQXB7GPfHHFbBVBdascDvHzzzded98o3MXiGa2FMGY
	 V4GxkiVQ57eCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256DD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436857358.2934.10826636852525344924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0162198d27ab02d17b0bfd6aec9a9b0e82ac64744d147be95d30ce638d51db
Date: Fri, 28 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764368573
