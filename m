Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1653063CB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762663794; cv=none; b=arhkhxIkYGBwNaoRoVAYr4V7+X9rLkKmmv7EzJp5JPmbkJZTgaAvX9yNRZbSbv+1KKDdpG4KSUTEuSF61QKs9mszrV2CDSgh8bAoiJqKZ+SgnrDCm9b786RwIybLJp/TgCUBxcKU+1jiXuNne+66pptm1rHWlEgoP3MgEQawtnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762663794; c=relaxed/simple;
	bh=3YYAdrAR7aVnrvtLzbMhDF7U51Z+HziRpg0ElRK6UT0=;
	h=To:Subject:From:Message-Id:Date; b=LmiSeDg6Hhk3EIcJ+iYQvx5V6XboKu2C+T2sq7XehsC7gfnb98p5I0I8F95nSMTVMNwxzpM8248ByI5X7mUFDzGpOdDfTHjkw/KlI0v+yf/M7RDgYFzy+/M3oxmWM5kqq3sdOmYlEpDjdsyT1Ni0naEV+bSw4fjvRVgZBb0ZOoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkoYGZw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkoYGZw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1EFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762663793;
	bh=3YYAdrAR7aVnrvtLzbMhDF7U51Z+HziRpg0ElRK6UT0=;
	h=To:Subject:From:Date:From;
	b=gkoYGZw4EeOK/Sw8At6lHK3x4eHyMAn1tzqdOVdTRpAo9nl4af1hF9FuE2KB7Rv7K
	 L/hOxZndWOCsR53SXutXBJ14wtbZ9O/+uIXZj9aGVB43b5+hzp5Y23IoerdQz/XNWa
	 dV74baeCc8+wFhTn2nFgwjiezEZsx0YSTJ+uBjD6osvoNDbYDhpyKQblZIAxEo6efk
	 24krafEBdfcBNgeXsMTozGIfjL2H6OLanmg8wGYtjlN/2C4v7F16buVCfGgPQAUNi7
	 mVhRFxoKXhnc5uT9mQ2mTnNkjwJ79KvC7JmYXWU2XiyaH0oHO2QiMLI0ad9MwDAiKW
	 XtEWFume8xB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE6CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266379358.14824.14155869496339307350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805ef216c6fe44aee535fb361b590b7724db7f6d3f2193574f1ca275d8a29768
Date: Sun, 09 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762663793
