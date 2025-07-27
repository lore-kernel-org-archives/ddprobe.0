Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E45626281
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753624194; cv=none; b=o+vq5EOF5LqlQLmgiw9qY+yg441UpOfQ9jCUYNGt3qWMDcSD2ihbG/S8uVIwUhUIVRQvXT/DQnwGBHUVCtMgl9PKguODWbivALp8HP39ABZrvXmbLDCBxy/PNbXml7WwWeZfVFOz6+UZ7apw2xHWaIT8newimkbm5U3Z1FE2i7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753624194; c=relaxed/simple;
	bh=Rbzjvueo3gUxco+GcRggFwlOwgEH70BRoPXpIlB3bKQ=;
	h=To:Subject:From:Message-Id:Date; b=q1UjCxHaWk+aFEJvJRv8xL6FYC0EV9CRNE2ieUEFZLKl2q9lc31wTWi1oTx/gCppqG3YE0c9S8NHWFafQKhk+UX7UyTDeGZ9amWw/atxtylAUmJVHcMJB3jl+Xf/yrtD8MwJlQWCWOgoGHNpv0jhq9aKVj8KOjNzZpfrhL8z+y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or3u7qci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or3u7qci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A391BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753624193;
	bh=Rbzjvueo3gUxco+GcRggFwlOwgEH70BRoPXpIlB3bKQ=;
	h=To:Subject:From:Date:From;
	b=Or3u7qciC5vjGQywE0Mh31rdwUNbPcz8ZG61ukVifsx3e0gbogSB6ATJNcVfTIPwD
	 Nlp30iMAUaKm5zfekqcb3c/i+lsjr26E7LV6ZQCQACGYr91pkK45x9FCuA02DFMU7F
	 xcxeBeQi4ri5ZHs7fZD42Fks0LI8wrHqRg45zjT6VgSqqoIEKFvI9bsBV/rM7NNn4e
	 adS7JT0/NQ5WpD7n5GlN1eNHhZBl9ijYBo4vpxyC0oG+AYGnu/MZOSdSwn7xG1z5cE
	 WAMO5LTqAJHZxoQNG7WaEoCgR6tst7cHkLdEjzQ01oRYbj6RIqIM5V9ZD4nQ044Y70
	 tUexF8ZCK+uzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91634C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362419357.5318.3687416065189054485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f4aa2710aa3755567ce87bcbee9431b5ad2ffc8942d49bb2785a3d4476b88a
Date: Sun, 27 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753624193
