Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E0017BCA
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736626554; cv=none; b=QeCpYN4hqyntfs/qeAqkzoURqIcx448oTIiPsvYiYNW5kqLpfBYWFQVuJfa+ku9zNa2yeL4QMf3Fizk7xIV6ZMGITf3RDLjW/S4wkjqmBKhkI1uZaKa+CsaJse124s9ePYKhuK5cS84qLSAE/Yoy07vn57p1OSxBx8gP4GztRBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736626554; c=relaxed/simple;
	bh=a6uc8t3NNRfodvLn2GQC9jd3oKYt6CokKg5wvEpJOV0=;
	h=To:Subject:From:Message-Id:Date; b=b5kt6oD3Y9OYkF7GMvuepXFpEJS8ZcXDXaVhtS8C2369B83suDiRYGtYBpbIUESh3r2Hkp4a5Z+uOHJyexfTnlZzKTkHYUPJgTuLsL0Mida7kYFsNFRkK7X+R2ZMUHoDiw4Nlf9IwOdnuPmCbHZEyWcBdVTNHZ6VIvLSaXtdc7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+KpOclT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+KpOclT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956EC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736626553;
	bh=a6uc8t3NNRfodvLn2GQC9jd3oKYt6CokKg5wvEpJOV0=;
	h=To:Subject:From:Date:From;
	b=D+KpOclT+rFFWYIqj1z17GfIa3e/1+Vy+A7mybY40IfNH3UqcHHYrxt4bpHjwZ32u
	 lYo0XtvmO7QuC5T9QKqvWa1K4slWupMGW0osJA6VFUf/vhNk0CC6mg9kOZQBXj9YCv
	 cP6bofEBTLKmQ1aqhVFWMegpwh6VXA7x5rY8qf9uq9C6CzzsGP7s1HCjtum5KpiWqc
	 3GT7d8n55qO2/rRZ+C7EuihpIvCTOS8LFKF1F660bEYDF4Y+XKP0ybWyiV4vusD8yP
	 Y1eCL9xgMD2PjSrOSnXdnH2Ee4KgLxcMBP1IELtSmsdpqRueslT5Ear72jLRAyUMNq
	 qjgbFmJh7xCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD1E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662655359.4083.951872716518745954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12d6ba19e6fe9b2ab333a4ec08123a3ce0e3a7b9727dac1de07446b71b0245c
Date: Sat, 11 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736626553
