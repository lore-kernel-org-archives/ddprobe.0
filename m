Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E46233723
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771137294; cv=none; b=Krjs7rCJ9I4u/5JisO06dIG5wMz4Ec1shtv+OWOIvSrhhLujjgQZRVfiX41uqNnD8zMBZwVmxAoodDiV2b1DYuCD5fA51pOQQmyskH6+gJTnelSmbcwsLGN+QCuArLejIcmaBSpeqL2ANxgyviekAlmIwG4bBToImnRo3YPg2qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771137294; c=relaxed/simple;
	bh=TuwsC7xV10ThEuVJLCtJtFtH8/9mqqBhfBZc3vagFl4=;
	h=To:Subject:From:Message-Id:Date; b=oFz5XZbPWI+JIEdMfpUCaVH4z8uj5V+5sOcWL+6xSXVnlVCgBA3ateC82x7qf9e86agFIbBC+SnrDTwi++C40n3tUHy00gUIlpiMHrRKc+M89Wvm6NpTNd0gHlUIKqmFnzoKDQwf5easTIqmY3OFVS6gi0fRT3iqBMeEpKTXwKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMJXhZUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMJXhZUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771137293;
	bh=TuwsC7xV10ThEuVJLCtJtFtH8/9mqqBhfBZc3vagFl4=;
	h=To:Subject:From:Date:From;
	b=BMJXhZUpJdC0m+oMvGkkLPNYUOLhobM0n/aOluL09pcfFhgk8WLwfJ5pFG35mzGEG
	 fc2nUGZKROVKoeMiusynBO+1q1rMmUlUmKDVtCb6zE6iE5zSI8PsNjrRDZzMFm/BKf
	 toEeTQLtn9oMEoFsPDNM/QenRtpa9V0pMSl3jyS7DpHLWKjismaoT+oIy6d5mWw5Rm
	 md3qPzoP3H7qqQyubserQhHY34SST1Z1EHixwfs60r350CcKFZVN+b7TQk4Akt1QTF
	 oht41EyA/wh42OyeZrtnWFqpXeTprapGXEQZQYmqUcHOZpcfNFxVtihmeupzd5Os1R
	 mSCuisHD/CN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2EFEF586B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113729360.16671.7695268322111380135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efec775bbf76df91baa8548bd644ba078b8890ccf996d5621f8a45c9a59582fb
Date: Sun, 15 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771137293
