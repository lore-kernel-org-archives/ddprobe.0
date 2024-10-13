Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D03613D508
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728838554; cv=none; b=oOjPmKfN2AJKYlOoD/Jbywzx5mPIcO8lNOKHG+3JMgjJCU6xB+K3+Bj1o7FJsCi9R/V8Cxa7JKelVU6HuIHkRd1zS4/rnnS7nsrjfwGziqiPl3/CmQqK7pRyvZVRHyADISFx9SxwOxo7/Jy2j7MAkJ3+LPCh1GINv33C8IOecQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728838554; c=relaxed/simple;
	bh=1tg3iq+AJ6zUwRjpXuuji6wTu3L5nFLVaLX6qfV9i2o=;
	h=To:Subject:From:Message-Id:Date; b=rlyVtOWKcSVkX1n1lhJh9tXMFm8edsQczEpaqB9vX57d0nMfSuu2T2dZ9jt43g3MzpUAJ+roZFUGH7zYajXBTmFhc0HKuCLgeEB/wVADAV4eSKLSsj6inL2b3ZieQu4JlzdTS9NCfRtoJpbj4doyg/NNiYjvsnCanN6lo/oKWl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvgwVpPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvgwVpPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB2C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728838553;
	bh=1tg3iq+AJ6zUwRjpXuuji6wTu3L5nFLVaLX6qfV9i2o=;
	h=To:Subject:From:Date:From;
	b=QvgwVpPIHhA8j8WzePt1cQMeD4/TP65Nlt+n6h2L5A9LzuFuy7MUiHgKoeM6RNUko
	 zV+wYFfmVv1bkqg6PWKfBsplWHCXSVOgWo66AYt0srV8d9Ktt/+gTeUslB1n5iozNU
	 ht0fN+Pizn2Pas93Lmp6cdhAh7KhVgUFU87fKL+YkjpEAeAjUvDSEPwLoLBxNC6Qsa
	 t93oY0QDpFdxzPKzFqnJx5ujdqPRPhMoFeUTwD8g9wTXvJDcgPI7LWt5vmdMo6Xldj
	 PfLGJfbEa+zusdF/BkGFv47MO74k/8tdbIf/DhvI09WgZIkj9A65cbSjnDjvc7FY2K
	 gZbViVVr0ZyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF8CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883855358.20787.11250007143984910219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be38a605aa6c90cff5cb2e5e5120c65e076de622e162580af76a7da08d9b2111
Date: Sun, 13 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728838553
