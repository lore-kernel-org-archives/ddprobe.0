Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5D3B0581
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785337834; cv=none; b=oyMMyJolLMkXeNqJg9926EgY8heCPNDvjZ7Psyp1o05/tz+1AZZOMtfAYfUisd/cpek0a2q/cpBcUf3iG3imqlxVYaW88TF+blY4TZuLRYiX6DP7KYDn6A1fS++z5wRWTjwatMGN8FWHY5PYGqA9DYTIO4u6V2DWSmVHObEHPMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785337834; c=relaxed/simple;
	bh=Nb3I8VMFIh7l7yli6UD/fORJiGSQH7ZKkm5vQIyIgYE=;
	h=To:Subject:From:Message-Id:Date; b=EjiZecjTG1FyZ8n4DaLcG/oA5tNFMSd6fARzeBdKwM/h3MKSM64VM7ZZf52ezTMzInGX/Y1AiwCnLYulwF8TfpGq/DTz/wHURcx0QOTeVu+6a/HseNvXwy0FctBN0YEY+MqsVD9Qf9TYWBrleqT2th08rr8Xg8wzKLkTQnnO6yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0WiwKIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0WiwKIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB64CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785337833;
	bh=Nb3I8VMFIh7l7yli6UD/fORJiGSQH7ZKkm5vQIyIgYE=;
	h=To:Subject:From:Date:From;
	b=X0WiwKIKUg6X2ruJcAsQ4Eq6pICUvtDVstgRA3w+BL620cu1rfBYjbVzcQsH1Ppol
	 rZH39OigbuN2Ez8nizL9WJfB6uk9xOFelxZeea//vteWoNGm+hRD0JnAHkOAl/zEHm
	 Adt+KTMbsKm+SsD2fj3njwT2hWy3iQrUNNNiUCJgF1d8BeEObxj8HfARVMSkxAhelV
	 4ZwYXElnCsmkvHX+HtGi4i4+BABLIS6eW5XBceaLwVkYNyeCyViQt0/LvCwOtgwz6v
	 sHcd70IT/q+POUWXbXEG5+zdBA0ODyHTMycE5zWMZLgvWx1dp2cMQNUPlwIKWm5rPd
	 WslrytIqS4zIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A05C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533783368.30392.1608187160459142211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b8e6d015536e8d902d0e7385ba9ab6a14f926d3ea1e25ff4ad39a404cd8a8f
Date: Wed, 29 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785337833
