Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46B101F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729050354; cv=none; b=uFp3EYa1wG7dmOhSE7g6V25C4+08KSn4qjhHdXsIzQQOaqtmXvjNzBe83xsyA/KzCYCe1Pkb5LFVLekXcEJIGP4SupcGHe8dM2w6dZxp+pltSU6rmDMEiq5Y8Z5P5WAnjI6ifDh84wN9LomDEpeyqsqE3ULDAidOjmE1EnE2nQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729050354; c=relaxed/simple;
	bh=JfVxwwDg0ORmp1bd+d9sNQqtpUD/yMjvN+wBH8lx1SU=;
	h=To:Subject:From:Message-Id:Date; b=odVz/oWfvmNf/ZMQCWQx7H3Z5XD0w4yIBKuo5g+hnQCWlaDA1FdkiEWxqtueEYcukXPhVIN2zuMeVc8iMHxudnt7iKbU0H70WQriuBfbYSsWjlyXlz19NptVlWavWF0HJUOuJyfIGMvW4jLHT/7mieffLcovHRYDlZlTrDs2gOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHDndhsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHDndhsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FAAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729050353;
	bh=JfVxwwDg0ORmp1bd+d9sNQqtpUD/yMjvN+wBH8lx1SU=;
	h=To:Subject:From:Date:From;
	b=pHDndhsDFqDFBFq0JAHqnWKaJKXuTALvM3y7ZLxzq6rDOhSVkvHJUyFUkwb1Sq1a7
	 ujetJ5I13tCoeeg+HJLQh/wmg4sghLzWQ/pc+QwzPRcBriQjbyP1u4ZWYX6exRT5dH
	 63jcLbpZ4aOEsSG6ukQ9ECoD48EihALTGdfnMUHsWCGvKlfX5QYbTyafz/AIa1X7nk
	 wJPAGzOMjuUq2al89B553w/aio3rXtyXoLyvFq9yPuO0VKc3mj+F8ywN1AzLPsAt2N
	 L4mEfXDlCFoQwXUetSyOxEMna/W59X4taRNfXAx4kGHfgoryHJhStzp6hSzTehS7J4
	 Zg5BzG7AKA+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DB5D20698
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172905035364.31055.13782429905579142167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3fb9cc36f3e571613c4b69e103e7dcff7599ba4863b8e9985c6b072f5b2bc1
Date: Wed, 16 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729050353
