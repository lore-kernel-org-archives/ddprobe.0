Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E00CA5A
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740196734; cv=none; b=KgAOo6memHzSP4EUg0zDwcX4OUgOREFJ400/E2l/Vwkb7SQjbJSNZyPzuU8FfbpoBtWMQePYv/4Vi0J2i2rDxT2I8c0fxKj9A3tQP/2WrdRsh7bHap4lmKcoDS5KhQK3mQEteD7wU9jIxWRBO1hv8HvmqVVaPTjYVmZxOueSeLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740196734; c=relaxed/simple;
	bh=qSWCVro7JF9RB4qjxS6xUXbJCYo6SKjYdxZmzg9DbUQ=;
	h=To:Subject:From:Message-Id:Date; b=H0jKkpqVXc66jROKc/eI7CCuri42ynZaaTJ/9IccMBi0HppNNyHSn3soiddyMDk0tNcWKS7hHXYLHa4ynyYGzkkEqeI0Cc54mbSEMioTmH26nqySibhcVKv4gQvRJrx60p1jtsE0ehuGtcu1AZRzHH3nsvhVHvr4DPUBsGn517k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FarMj55A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FarMj55A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD44C4CEE6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740196733;
	bh=qSWCVro7JF9RB4qjxS6xUXbJCYo6SKjYdxZmzg9DbUQ=;
	h=To:Subject:From:Date:From;
	b=FarMj55AwtfW7z+dCPT9S8gKj8ye2wYPZ00bXO8/T9TlOmv2qjVZFV2L+25xAbd+h
	 JXnhFtH3bMXTlW+eXDsE5Nm6pjbzbsGK2U2cJr8bGuLtROdsS/Yup4DsDK5GrmJ4gL
	 Djk+OkjxHxnQRqsRuCCWvDyjvx0Z7+25LuoiO9XH+NjXle3lsT2jk7QDuW/H48jv/o
	 oS6/mloByU2gxUMlGY6F29QrH5AHnNVIiim2848SMmiQspijIz9MB9KlXcdCI6d2sZ
	 kwIlUKGKj3OMlkyXT7vBz6mvEWODVtVZNQ524jddnVxKhz+FSZJ4ojs2e6VRgyttTi
	 1mpbwvh1ZJS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99086C021B6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019673358.23505.4287423559527848344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7f11588cf3e37bd7340194a11aab364ab0d964ad7372373d6442f832e2881f
Date: Sat, 22 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740196733
