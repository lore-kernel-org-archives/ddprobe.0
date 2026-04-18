Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2DB56472
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776478654; cv=none; b=LyUE562BCDQlUnGoj3yfNvAO6fwvY1Bd/K6NGmJ71klQyfJNeFyF6ii806fWiy2jwcqkYVAsTRxayeRYM36g3j+blu2hDIMdN1Yem8Kp8diuLxqJtzRBqHlh7/VuenzE0cDEyn1dc3KCXgSHDk6sKrtSVp0EgQeVqzYQfL5/QG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776478654; c=relaxed/simple;
	bh=7gvzc/bgYZs0moAmNlG05GyZClgqQu/Ny/WECVmuvFA=;
	h=To:Subject:From:Message-Id:Date; b=p+DRiI9R0o88AOOKW1lBdsw9ETnHYBjQJjrKl2BuNUQW0M4VB+tgZf/99KwWoCqYjhTQZqqGY5D5H7Wng2myx/gq1tUX6b73Zo82cmzevM7rn9M+i6+bGBxikFjje3inLqlnSv7WPauOj6svo2oQHZevHYx2TfIzsSAlFbywTso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fShdeo2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fShdeo2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6397C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776478653;
	bh=7gvzc/bgYZs0moAmNlG05GyZClgqQu/Ny/WECVmuvFA=;
	h=To:Subject:From:Date:From;
	b=fShdeo2WK4JthCAPZNvi1M/hMAO6S3qgQhub0/QzdwZnCCL5qKQj5kdT7JGKcvst0
	 D/5zfiz6RuOmlEeVdGZxYnCTX+i+T1GkWBfI0NPYYsJJYm3loQ7EC5GZoS+wV3DWRy
	 fCCn7vj22EN28fd/11j2k3yxMSpBH8ZnpyajJBXb9ZQxZjnzhAxgCPrNoSFosK99g/
	 OO1rCF2xpqrX4EF0Bm3OGFkYOnUtSO7lqUjxf+ctZwQm6QshvAXeNIoYfBXMEpyF/4
	 FwzTTHuEWn21bDUTpeHJriJEJkUXTy2B3EDbUK64tmnG/02H3bb1IznZpdvq21yazy
	 +xoIzLXHtkLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF47EF99C72
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647865368.20792.9970039231668420265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dff76b083890523efbc57843a307319fe95c56dcb595d514897e10a07146e3f
Date: Sat, 18 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776478653
