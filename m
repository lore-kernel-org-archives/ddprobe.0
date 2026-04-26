Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1A01F16B
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777213654; cv=none; b=rdA3hVbWL69S5SjTtrz8F3UouYaK0VB+i4nzyoZOjjxvlyNxcgCt9ZyNXz+hzLlQRqUceEq/duaITOK4ajGLuSQkWoY2ZBGpuMQPnr4+jyeaTZtqVMyuxYZxSBC41hJYFt9RBR5Q6Eli/r7xOZd1OxiLT9k3CZygPy2RK6mRW9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777213654; c=relaxed/simple;
	bh=4EhXk/RWIVZ4MGNqcQu4C/RuG8RaRtoEvSeBNODW6WY=;
	h=To:Subject:From:Message-Id:Date; b=hqHhV6gRD8+xUI++Cv/RD/8QzyIfMHNcy3uvVe2JZKNCEv0Hi+9KJwcGP8ecb3MSi44KbtbEvKU671P0iZvX0wm5paIl0yOwE0GgAjJDQ4ASrPRoaP9pFWerPg3Uyhwx5KuA98SrnuuwuUatrvM1U0PY0V8EGJdOcPrYTxG6dzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es0QeIfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es0QeIfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC60C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777213653;
	bh=4EhXk/RWIVZ4MGNqcQu4C/RuG8RaRtoEvSeBNODW6WY=;
	h=To:Subject:From:Date:From;
	b=es0QeIfX8ixyztYy4MkoMHU4oHEMcxEulOl5tHCM191BzSLbpG1MWXiOdwA/tI558
	 CpFDMgCr21TV7yAY63D7XQgmHtlRmLaEqu7WPAnW2VQzr6YRSOBtBY1wy5m0+DeTy/
	 66mvMAlV6AGJV4FX9q7eVksPLxVXHqPjZHRFKPfnLKi4l1t//QB126cncLChMeJSAM
	 cO4ico51ZJcjMf9oClwDuWYjgZpXfNnxaiw1IUZ/xYAXdjD49eEZ3+3W4LyKR2NMKJ
	 NjvKK+PNHa3GYJzbLzEnUvR7BR0vHT3q3ujVbSssva4EdrFAFWlCvENsanOEzr2801
	 fyVkFkeG0vuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC62FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721365368.20507.14352903681388824654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959b315bc6db993ce59fc0d81f8f2881ccec2d3e04b8c747b5fb24dae67aa6cf
Date: Sun, 26 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777213653
