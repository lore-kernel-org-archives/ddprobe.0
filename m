Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335EFD304
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722797154; cv=none; b=IJRwu9VNg0Y9hpWZgvEe6R67GZo0uMDWWkf+a6deVG51/uhB/eyEsiuUdGO6hFrG3oTJ2qXVi2siSIzFJKqqHxxdvqXW7kltr5rp9uIOT1NDoF8lXd5JidL2r5C0vPEoXsuNRbNpA7Iec8fJLlGpVEY26YGLT77jwO2UZsUGVDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722797154; c=relaxed/simple;
	bh=Q1weW72rtQ1+sqISiAkXfhQe+h4OtxUCNppm9cZRk7s=;
	h=To:Subject:From:Message-Id:Date; b=nRDKMi2dAec6t1Trc+acEK5DMUY1ysPX3NPLpUpiNTdVafKJO5Kp+IyKFrV+8qXu5IOpPTBkVKz6N8T30c1CGT9k0s0qqtVaSH5dqtrROerG0nOuhk54B2zQcomtQIbJ8GQfCbdkMqBmVUvjXDcw1LxIVRYKzq5eV40F7hbC97A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5mgkoUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5mgkoUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B123EC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722797153;
	bh=Q1weW72rtQ1+sqISiAkXfhQe+h4OtxUCNppm9cZRk7s=;
	h=To:Subject:From:Date:From;
	b=E5mgkoUTM/3kcYqmRka2km1U+GNBZkVzaDyelTIgXvV+kDCDVldn11Lqi4c3L9GdK
	 sBztWmrq4nlWlrrStyuKFkdLuvjzBChfuk1EqF5+I0Zj4v+A4+JNIxxBePSPRQ2r90
	 j58lePSIHZibxZRtNftM6pCrxCHmPs1LsIF9oHV0PwgJh/Rl1u2TK1xOu0NhH7ZHvd
	 8df+8pM+sEIeB/kVWUrjNGamUV8nGm7YJHbrMqmKai66FarYujmbb1opCyL6MUGnE+
	 4nFuEbW8H9rT1x908qxLMoPCZ5JEoLMpnfGuNpNwFUSgsNvBrfvtJXJp9abfRfiYWi
	 awjs7oM3ah65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A347CC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279715362.6272.2061462111382089410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6df691446f759bb5d4feb3d448060bc717c2344dbf869408f4e49815a94eb98
Date: Sun, 04 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722797153
