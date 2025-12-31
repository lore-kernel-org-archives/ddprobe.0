Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1625D26E719
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767153834; cv=none; b=BlrbMB6vCjzLGHzRcccG412xVutll/IRJWddkpFugdb7NYF6Xm0Yotn97oS/rfrl0/vRRKkOtpsPgVVWhxqW7Rxs2z6iPS8upmpu47iCS9P4cvX9JQPqIQqd7942iTHdVxBg5oqXShSAIvgeiETIfGTnRnJ5vP1o6HIR8rcxX2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767153834; c=relaxed/simple;
	bh=G40U/jm5TZpAXk9od2+RtZvA2ieiql1LAlaRVYs7dQ8=;
	h=To:Subject:From:Message-Id:Date; b=X7a8+STp9iLHl5N1k9DlT1NoulE67/7N2McqgU4yk2X5M60ETh47ZPv+bAdmsXyQ7yjBcr5tN18YiY9yV5QzyGFXU+WB6HVTLyOD2dwLYsOPQSGbgdFoab4WbmpzQ3ljOpC2a7Ippw1yA+qViV2vmlg+7wvIkcI/TRskww2uTs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJABdzLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJABdzLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FBEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767153833;
	bh=G40U/jm5TZpAXk9od2+RtZvA2ieiql1LAlaRVYs7dQ8=;
	h=To:Subject:From:Date:From;
	b=PJABdzLZOVPyPmalpZ9+1FKVKknfTziS0ViZiSdpcf2Nrwyw/8nxC691KPCzP0I4D
	 lR3n08gGLCBfOgzyuY9mnv96WpdEHrSRNyYcf6WCfF7MAg2XG93BAbDrC87vX2lrnt
	 Sx5oVo5sHhFLIuHtWjObvMvWI1fWM8gX5dKwrCd8r9QZji552JD9/koSxfA9BhxZ9Z
	 gJOjBs0URY22RfxSonv38pzSOCqcojJuAEltxEBc89k0XVkFKg1MqHvSkY4fxNv6KZ
	 zbrfqGUo6T9gR/awGLgiFZbIAqjzNQ6AWYQXh/G0GdEwmxduytj8W6ff4NbyRkyxWp
	 nWu9zQUSxIH6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95576EE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715383358.23764.5225900518715386086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52ae87628b72e98b0e829604effa8ffbd566052af9ace0f78eec0ba87686c3b
Date: Wed, 31 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767153833
