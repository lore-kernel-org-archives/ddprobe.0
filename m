Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60D04C98
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759067393; cv=none; b=ZoCN2UMrkkdkldbA1k1xY1epk4jfLT96tG+saIONIVVkFjbHKkwT7nIPDdYFGhqfNkR49Z95ttfz/QeNr92jBbc3ynf7g2SIvfcSE3YpieIEAhQD8svoD6xog9gRfGPHQqD7wiMvDaw164SretD20r5ITcsXpQQQTM2PCghXB44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759067393; c=relaxed/simple;
	bh=/4yFcrfVZb8grRR6143xu4jngyxS1xXeYK8qgNXhf3I=;
	h=To:Subject:From:Message-Id:Date; b=jKZynrcI+feKuNcIg6uje9VrU+Ae3YTrSSDkOG5sAWbG/uXjbHmTd1INkHJYXlvlrxJlkR6J6bwSF6ZKb3Xrb6XWg5fIlbbQOtVqajHJrfnAjdGpf0M8/gcu4Y9OrHui0I8LjwbYoQFu4j8hof06blde8dQtYitcD9E2kTL/v80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHCJ7Suj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHCJ7Suj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9918C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759067393;
	bh=/4yFcrfVZb8grRR6143xu4jngyxS1xXeYK8qgNXhf3I=;
	h=To:Subject:From:Date:From;
	b=rHCJ7Suj99+LGrL8zWgKIGvfxi7sgXsn7aYQKx+teR/lleGZA/jVCrTmpnsfQUNdu
	 KZozf6GK91jJkRo94M/gt/VeSUAAUuuCPEmT2hzR69WUaot0Dmeb8epiF6G7r8U0GE
	 IxmmvmUHR1rv9Z4r6sKeTsLc/bL7vhNWmwH7Yb62fpYX1JcOi0oGrT5nnGxCS24E3d
	 eXF9hARbJQ4G7jeaIWNPa0jGMBOqHsXrwGVPzFnqx7vIz98xtzCNwFlKqdd9hrRRRS
	 tiwWNyz+o+AyWULS3YvXP5r3i/yx0+AHS6+5xUeIqUfvBCAsSTELU4M6jgBoqibjdV
	 nwm1V3JLx5NzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96976CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906739358.29419.1589275076922157221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5653609f00ab1a8f989a3b9e7a20cc483c31e58ac773e7b6e5b59a3d23b59a94
Date: Sun, 28 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759067393
