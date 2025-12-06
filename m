Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123B32F7444
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764981774; cv=none; b=uYHtjyiE/bFNHA6CzViXalhRxz+2S2NGjVJ8Z9OZEzqqyUEPQVl7Go7T5tz+Z8AsjeyeTg0asPfnwCR6R23A6eK4l5a9Bzum/tUkml6mJCp7SlQFoYB67msZwELLeItELkc/cEheBvLGzYtsltiAdEe7Qd/Y0WiHQWz3f+irF4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764981774; c=relaxed/simple;
	bh=eAy/GAyC9bqpswJ3ms9q3xzxl8zIqtQE+MMhueBOUI0=;
	h=To:Subject:From:Message-Id:Date; b=Fsa95VyvPH8v/edQU3SbQRIYzjc78MDjW9ae/cpTgSkEjAhuS4pPOZSaRuEzlqPBYfBMBh1UGzzdpI4O6RpK07G43Xi92ih9k2ezLmZLkUr4dNRicODtMtmtGLnjc+ny0x0xkUyMgF/Rx7efheP8P6uCvX6SwPFKm3YPpWdtMm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWZAgv7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWZAgv7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65EFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764981773;
	bh=eAy/GAyC9bqpswJ3ms9q3xzxl8zIqtQE+MMhueBOUI0=;
	h=To:Subject:From:Date:From;
	b=eWZAgv7wXJGAtTJjYpxwxZEoNHtiyDG6nn6vQjxbhUTsB0r7eju78lpotQ+pMOSQY
	 QnJNUuEnl627V6B332r83oBnDbI0qFZBsCPu3JE6dQELs47578nQRf/lXsTrypCQwF
	 WLXmNuaUnivuvIcy3ojZGmHDR/h4P+r3veMn5bifuNUHei73jhqIdYNNbly4+N3xMh
	 utwcjxNYVT4/o7hy8eFC5UTlS2FfdHlYx5id/E15XitOU4pgqJpelYrj76O7qCXH5Z
	 Nf5zLaigwSbyC1GM+Nqrz/trjfeI0yooZ3/jBwyRvOvsZOUH0TuTLFNrel1kK/Jkba
	 Xrw9Ie8jZtEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95887D3ABCD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498177358.11296.564723029500644153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34db55c30469e2d336de594f0b9a997d0cb43d4d39fcfc7bd5b4a679e126d9cc
Date: Sat, 06 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764981773
