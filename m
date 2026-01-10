Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D589136672
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768021434; cv=none; b=cpXqnJaGUgNcDvkpJIKtvU2bDFhBffjxNc9dvfbT/dyft7AD4UfbeEQo5nAWsZQK9+1GjFv8wpg7llfaOEslDxNv3y9zLNFyJMlNtom5b9PBJqA1xotF7sNgKRvsmQblHEZy3SUov4XjFqeEm9EvhQ5OedN7Fi8B9IzUjS3M/IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768021434; c=relaxed/simple;
	bh=xwoPwQKpVHrDgSZNJtF2H/vYOzyD4srwqodU2Ou0Iqg=;
	h=To:Subject:From:Message-Id:Date; b=E4pqrIKq9YxrGTKv/i2BuufgZz+uzMaFHLeJGjgaPBwOav7sOIu1EDoqZzLnk9MntwPREdo5awvpMp4BmEOMeK1kv4TkfZz0bcXqYq+vcnUQnzdyM9y116Dhchq69Il32qUeOvkIP1DUgDUrl3X5zMk6OPH0yQFmXRIuTqq18ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHK4JFLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHK4JFLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8717C116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768021433;
	bh=xwoPwQKpVHrDgSZNJtF2H/vYOzyD4srwqodU2Ou0Iqg=;
	h=To:Subject:From:Date:From;
	b=PHK4JFLjSFb3P0uUGQy7QevaacquLh109/eYv8BleBGMESLUFYqLflgvia3gEETK6
	 AiOZIi94yEhtn0OgC4YCTUjXPFqP7z6YGKYUJVHGi/gXRUqPCqfsV+wYZpnSed3fPh
	 6morX1mQJ/EFdOhZdi/ksyo9vRRKMO7hKKPKE8jH9iHv6ErIMBMbgt87BrR/416Dy7
	 XUNDo7ukq25CSHEjfNxTYIIAWnoAgDf1ASgvg2jay+iGpHSRLwbbled68vE5lXvewK
	 pfQkY4WxbLUWl7+BEioSc9PLquSLYnatM/fncO2YJnLahfRjKZEHCOXu6OBq82pFm5
	 rjf8tGRzam6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E30D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802143358.32447.5032253838777853071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15fdb9b72f59eb9ddbb2389af5e3ee2d97d852fafbe8b5e1ad00159f6ef4387
Date: Sat, 10 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768021433
