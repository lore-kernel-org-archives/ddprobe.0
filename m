Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1472018C930
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731615954; cv=none; b=c1IuePFVnZUivumYnfffPZ4o35/uV86Q7ID1vQTi1XFKZD+M2neIWmXdXBnuFj25/a7Pnm4Zbi1yfH3onHBTau8Yv83rhNyGG3IavUZc3WD50JJCFtk+/WzEuzRLYw01c4plQdX7wbh2oyBeufC6G0RhDbUDaHpFMcOqzloIO1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731615954; c=relaxed/simple;
	bh=u0eCVLwBz9/eKK4KDhkMseXbRDuQaZmNuVPyatLOMxs=;
	h=To:Subject:From:Message-Id:Date; b=qk35ao5xj1tXxEy4kQKARa/nyGNYtpPFG6ZsIljbOi6PdGWUOIgHuHoh65bRT99yLHRXNhbRDqUQKJQxL5IJ3YYaKDVIEHU89JChsANPbHjvQgiwLGeyf5PC0SdSvHltPKF6WlhMW6fS0uz8Fcn9V3uLaNdC+tQA3eBg5gKHTuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG4OdEwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG4OdEwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DECC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731615953;
	bh=u0eCVLwBz9/eKK4KDhkMseXbRDuQaZmNuVPyatLOMxs=;
	h=To:Subject:From:Date:From;
	b=sG4OdEwxELQZ/UEOzPaWlDpxRN4ud/OSkzwQcwoAEuFxtaeHTNY+cgF1SWQ1Q15/0
	 nJLTOrFZ5HpsmzTJi44a1ggUcscZ/DqK43UbllPSyTVGjr33KKrihVZX877i7xu+0J
	 VuqRwoGZ93To2MVXYQhJjxcSoPPJOP8sI3z3eoyPSQwghiN6tlvolRFULFyttBk9hb
	 P4iIJSqRU1k6E8YiqJcnf2O+4V2lVFMRlwyf8oMlS7UEk6+IpwQIuxNBy8K5G0axU3
	 lqV5T6tr+BsXRZ2/+6EHYplMeqclAN7iUeK7DcSqUEcdGpZ896rkJWDt+NAwmtGgjN
	 /qMkoyU2tRmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFFD6A221
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173161595360.11837.14272946843294702217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d69568ae0b1cff1aa1ca62f9b28a02640a9ea57c806ad3cfbac8c62c5a89f7
Date: Thu, 14 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731615953
