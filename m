Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F0D304984
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755281394; cv=none; b=WhObvFw/CL0C+UATmuaPcE362+TWj+RiRWuHnuJsX0pwr+weDoI5Rq/QiMFpEjdSM7SQpsk2rihWKNSRFWpcdrbHQY8bU6As2LmAcNi8yAh886WfJwgOd6eskMk2P9euUtdngAyn3aMDfgKlMrf9MIAzPdzRTf1hLO7CmQpbbpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755281394; c=relaxed/simple;
	bh=tk9Lm3KbkRm58MHKdEn+2+uJp+qfZyTEMugTYehE0qM=;
	h=To:Subject:From:Message-Id:Date; b=U/jJ5++TC/C4jr8O81REd/sD2uIKItH7RPE7uL3yFYlWjXIeLEJ8Xno5vuJsZNW4kpr+gjzl7cY9S9n+0ieZUE1jCFXEZtUAiTLPqeN3e2tCvvYvb88I3GwtlOmuULa8ytt9aBWQFocwUAXSM35J2s6il4U5imt2YRvj/N5vux8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIUS2OEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIUS2OEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBEBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755281393;
	bh=tk9Lm3KbkRm58MHKdEn+2+uJp+qfZyTEMugTYehE0qM=;
	h=To:Subject:From:Date:From;
	b=mIUS2OEGtb8hMpiQOht16pWaPYPy9TTFo/eHpemZnFpO1EWi75118ieuB+LhwckXR
	 ncIT60M8kY2QSwto0rwR+OGRVcqGYCkjltmX9ja/ly+g5RpP/9aXvcFTDjxgYo82yc
	 BM3ZNup7CZa9Bxut08+ouNLOVxFqA4swrnt4jQt2N/7Rq8ljCF/WQNP4AnYLUc2/v9
	 BSF42gMPBkJ6jGbh7moSGS3WGBFsucRrwr1hA3kC4o/QLgjR8iG6rgt01i8tLioaAt
	 hGaM9A6orVjiNA9RYu7I0RSSuokdtSAQvERptw3PEcLUiWuiQCtsnb5ELgDWmsrFiF
	 qkqykeRJjjeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E686CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528139357.29593.8205233939842899308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d0ef7ade1160f7665081388ab7bbca7eb8e3dab4cf9b1fa8459d78e27864ea
Date: Fri, 15 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755281393
