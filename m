Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE47664C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751338794; cv=none; b=QcFyVZVkY0XEvq123vdOsQzcev+YV8zTbwXARrC1krc7ohMMAcLL5V230OpaHa9tNxZus4BR7qAgCoBI4K60cs/VG99oJDIsUUpWryrH3/FCOtwmlV3Qzw/QcUHoq8gu8hLvCL8WAH1CjOzT6HvRBb5SCM2pL3ZtVV4CC0VuvTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751338794; c=relaxed/simple;
	bh=inshAs5QgM4xLXgRD6nO/RKtuq6qt/YfUz9DkZh8gSo=;
	h=To:Subject:From:Message-Id:Date; b=jFsRCORKWEnzEk9a9xxEKpy4PMGheH08O7XKBMAdy519nNIB72ZBz/G5tXczk9ws91vKL6ykQ9DLlZ/yU86t+oSnIb71YdZAjUrmXrZc1v4lXnjZtAQuanvok2sO9mUUcMHdR9Egfb6EV8YTgpOUU/71rCekcSjC0gKYSk/m4rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYrd7NMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYrd7NMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0753C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751338793;
	bh=inshAs5QgM4xLXgRD6nO/RKtuq6qt/YfUz9DkZh8gSo=;
	h=To:Subject:From:Date:From;
	b=EYrd7NMcoEmiA+/syX+pGKz+Tc1tlG5/BP96YoEtbdzZWkoSNsJLkFyagybc/1X8Y
	 dPs5gbElJqCg4r/EIVs4A1WIHIj5q4Ri55U6GhQeIvFLa7B9XoLnaNkz9uephpZbU6
	 VLWOMyQ5ipl2VOUTR+GNAPiJ8tvH89XpcNjjF+nQ/Hp7I2oSkF5FeXFWkRPQy1LAhc
	 MutnVv+fgXxcGICJv5klavgbg2cHhZxcaMgp1RjG64oxgmo9y+HWdEErFCTTSkoZ5t
	 S9gJOh1Gf6h4w0p7NVK4SxlXtuNuGNRoc21rW5e6SflZqFGQs9GcMUCuia1kCCJsSl
	 c+eLh5OBteFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A6C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133879357.13435.13327916834889436273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf80879c58cc63e6cdd07307b6a1f00a164b58740f287092115d5c8332e6e2fc
Date: Tue, 01 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751338793
