Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5417315EA2
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716327203; cv=none; b=eNotd3ZT5UwOJWWdBUvf0yUbLc/AzW2cw8IEtvWN5hm0GuVgvAgeO8DNnSIIQ3YMSZIOBBrwEYS8hJFSXQcYF1O7NBQI+Nsw2O5lgKhDbq4IaBt1mNmkXrOCT3lUQ+ICoG/h7jPtbO3g3tCXzh5iuY73u9HbDLrrM1K+18IsqxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716327203; c=relaxed/simple;
	bh=tn2GEINYTJnbe93+ZdZqo6zNc/pC6GaBGky5Fdsfjgc=;
	h=To:Subject:From:Message-Id:Date; b=eAh+dL7eD5LTObqkG5EYIy9UgyITqshu+fW1sxhtSKXeNklagWTj+OuUfUNehnNdpr3CZu8BlPB6ykmd96DWTD6kolyfxIVOfj+A/U0ZW6UpYwY2q92UBZ3ncXIAryr7kTsJ48p4Wp6vWKkI+1wqJ0zKejtaBf9K5zJQirC8s00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uONINyma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uONINyma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3000C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716327202;
	bh=tn2GEINYTJnbe93+ZdZqo6zNc/pC6GaBGky5Fdsfjgc=;
	h=To:Subject:From:Date:From;
	b=uONINymarj3OdkTZfMRZHqLLGwFXqTp1xSYaOxy+OMkwptde5RoYF2U1B+KREQAqb
	 z8GUXmDaaSXWnLsIeHxVjFSAIB14k9rMa1oIv/ASrfMucAxg5S1x4/MmGvGGMh5gZw
	 0+ChY1ZZUZh7wx/3ZfajjIbB42Fm7xMeqUScpUNDrqcFfnf/BvTFw1SxI3AvkNf41j
	 +tOlLsz0GWxf8+C1MINSX1GQJV9jrwXvasB4dHYtaU/Nkm3W9svd6rypcoNSeZomLS
	 W/3juflXZEqWZbLK6gVxMFczKaZ/CaRJEaN/GYc657AmdchqMF9BaKe05Qg70RLr9r
	 yXU2FwF9Rg6Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0451C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632720277.9213.4914112517004179411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b510d7a9440b936a15096d05022796d3a3b382faa12b0c022b14876422d9b5
Date: Tue, 21 May 2024 21:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716327202
