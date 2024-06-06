Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5028B1798C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717638443; cv=none; b=pu4bYVKNnQE2MvFiYvyaJXj40WDb8ht3Agz3qGcVVnekTLwnJkSuMaQp4RIMh43Us+KyjDkrDbBPS+UT6CESknULjkfVU0p78evg7vhEPfU6bxGriseIqd0103ufLm4+I2EJ7BnMKiTW8BhFYyB5Obi61pzeDAmj/hkuAypzSys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717638443; c=relaxed/simple;
	bh=HKpJjEP+TJ/+SjFfZoXa9pbckpwuNUge7vS6WfiHC5E=;
	h=To:Subject:From:Message-Id:Date; b=jU1XcJKLtcEYwSQa0Ez3lrbK9cYGF6r9H8wPFDrhQZD+57EJc/IOAxIyyYOHMsTW08t8XS4VJoEUh7ZeKueOM5tqsBTwNCtGCROvRg0+8nlq9YtqiVI0eWnhWUGxYOT3JUoEnVlynaxUIoCm/dOYqm0esMr/j5f2PCG0jLCQ1E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLpZXjwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLpZXjwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80F9C4AF08
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717638442;
	bh=HKpJjEP+TJ/+SjFfZoXa9pbckpwuNUge7vS6WfiHC5E=;
	h=To:Subject:From:Date:From;
	b=VLpZXjwFCw1rD2YSRVwD9eHWytUjkDRFEDiA6OPLELmHli+P7ampjUQzSTwAuzzkd
	 x1Dldr3BnKauu5QKIOtTzW7CZ+pxRp45Z03sFjJIUgxwY9CPiurbQJqwEJMbN2qlPs
	 TJx207yTzCv1RcFIOmYU12uBpyfYn0JKkzJmZriM7Qb8TzBgaBUN3TnITAk3qEZKIo
	 Z4ANjgvdezqbycHmkgXXbsygqNu8J+x6TLfS02B3UsOks5gFH1itmIQR1h2voj7y0w
	 dskN+6cYSqRXH/njnH5iwDhfBWxvJYyD32ilfM9OaxabXTScu+vTpTKOFqQl5XTKeq
	 ogSQ8PbjPVSpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53E3C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763844277.32669.7339835524000356382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8aa828aca971522a504ed91d29aa7e9704beae9c637773f02641ccb2ac901c9
Date: Thu, 06 Jun 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717638442
