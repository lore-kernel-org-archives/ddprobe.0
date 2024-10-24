Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2837B17D340
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729761354; cv=none; b=EB4tLtuod4Sb5Vu6rwnxrCZ4fyk7fA8p79U01lGaXy03qhGVY+QS7xeqXblTuCfviUx+o3IH8Is4hH1dmlMhpt2DeWHNvtGKLpcX5sfHlX4tPbedbYqbQG+AVQnhAAT5YUShn2fyEuqR7nFNYOUWFAczalNL3hj/5Q0cY/GB4hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729761354; c=relaxed/simple;
	bh=b1c1DPTzQDfMyihl5xbHMaYo0lWF8ML4pgB003v+ftY=;
	h=To:Subject:From:Message-Id:Date; b=WAj5+RurvMkUxYol3r4lw/DziktxRLOSDPqk2sMjTJeRWCIF8bDD3J3Nj7f58jEdzT2SaPhlHRpnqVIMlX3D+1BkZ7BAHsGujkiDigv9tR8mfqZ+R+5pYCvsN0eTrTCRiRX9fVa4NkdFt0JA6KOPsiRFILUKDJjLQ3u9ljRDSdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1q2+Chy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1q2+Chy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE80BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729761353;
	bh=b1c1DPTzQDfMyihl5xbHMaYo0lWF8ML4pgB003v+ftY=;
	h=To:Subject:From:Date:From;
	b=A1q2+Chyh8O440EpA25CTjtrnCqnSovcpK8Mj7cJFaDhiDYyv7a4qOB9cHc7tEuQ8
	 FirJ3S7s9t30FbwCmpForSO5ApW0HjJv1YlVkcDyejQMEvQYX3GXjRd7QxcxQSC5Ex
	 CFJfpmvdO1GOuKYp3xMkccdZ4BNm6CM6Jw2b1wYXBPmqRmxGJMVwRpAPk3QG6R1mtc
	 pnQld9pttT+Zv8f+FCgR/Af7nqNGkwmRRnmeV6rWP5GMigq8rNPOhe2C9ifOeV553d
	 szeBa0hgLyDXtPt2FE8GzWo+0CGYoq97eC6tyIr3FebXrKXY9z+NBmZeg9f/0AVUNX
	 jNQqeWIqWVnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971CD0BB7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172976135365.32346.13252152088023636429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298153327236f6cc999805ef5cde3d50270cfc56e1da6dc6e512300c8ae6f13d
Date: Thu, 24 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729761353
