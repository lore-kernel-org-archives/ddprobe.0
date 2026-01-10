Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F4127472
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768006434; cv=none; b=lqAOu7vaANhG8bjSZN5i9bvIDgvCVK6eCWYxSjcEr10stS6ijKM3d1FPmbyYBQq3/kanjf/uhmUgcWTWygufchSRGlguUIt1f/VF4eds0vRlhYlyMHQYAjY6s2wXRBqnfJ1wM3qvvCcLjQ6WS1UG1XkvLNgI2JpnKzcN3i5uUgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768006434; c=relaxed/simple;
	bh=rxzl1kq7OR8bGgGrQFyUlbn1sJizY/7MgoDR2rrrSTY=;
	h=To:Subject:From:Message-Id:Date; b=iKUV4oUkBWeImNzUCOGlFJFVBOLaTfGEMwGwfuw7VozTfWZ+h1kx+lgwJ2MtLMdvdMoN6cmId9iJgqkLpAVaFbIZ/DX5TcW0HaWS+VSWvfWfGTZoQIAonBqFHon3WGpLqyurQS0Wu6z0sqAbFClSrbtZE8Bb6qg8/nb2G94fNqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj1SQnY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj1SQnY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768006433;
	bh=rxzl1kq7OR8bGgGrQFyUlbn1sJizY/7MgoDR2rrrSTY=;
	h=To:Subject:From:Date:From;
	b=lj1SQnY7nMtShCLsUsYLbgAW7SGUkCiAiDsQDL68kCkATERHWheMkD64GMX2vZRm4
	 mDJyZ4u5C7JJKUwuvXYbiFjSURyYqxzhtxv41mNeLC9V6tpIqCKVjmLUfKNgvk+YB/
	 ZmoOdShYOoeLm/fXIETkGIlKiDwjTPhItVs4cjqwMK6dZWeAY82GNuwPe9btlbFxiX
	 PYagoTQtbJ+q86eAzvoOr6w07qrEkB4riAh+QP+W+lYdzQDhUr/ECnvdSdlOiL98sd
	 k7GjMdn2Z2yl5XxUOQ351iIq8cVsiV6gAdlaDSN+du5pKEVAKbbLR37tZFqGOZTR/n
	 ub+U8UuP5lHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90819D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800643358.8391.6739883662257112369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fbec0ce156204e889b9ebd4fb4df15887ee2060a9e1d967098a466837d914d
Date: Sat, 10 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768006433
