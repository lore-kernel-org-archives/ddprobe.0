Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44FD2D9EE3
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759054193; cv=none; b=Xq1kou/X5zxB+Na2D9izsgvsSUPbc19J1vwCQOd1qtWGyjyEx35wTxnCTKnABswocoKOOxLfq794TtpAiBlMOFDEourDkhgXgDBoxLkBaVlMXUlOTY0GupRwOubza/NJIPF/QPx+JLp4nbelcP84d1z1T0pCjZHvLQqzH7SI91w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759054193; c=relaxed/simple;
	bh=hstaQjVh/A53GPOoxj74BqsX34jUrZZEWgH+vaSfIOw=;
	h=To:Subject:From:Message-Id:Date; b=TGj4+LI0ohH9ARclfzCzSmOoG78quTGFakZwNXMtFuB8+N9KmPRzV2XhPwbtjTzpCGwPZdiqIPggRKpwDClDleRWfgjeTUfrxxyWROVbz6wA+9y/FrudjS23TEqUZl/YS8T1sgF9c+ROI4ZAU/Gd8t4B3jNNWyQcGKydSePLP08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZr0sMjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZr0sMjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B71C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759054193;
	bh=hstaQjVh/A53GPOoxj74BqsX34jUrZZEWgH+vaSfIOw=;
	h=To:Subject:From:Date:From;
	b=bZr0sMjvpbV0q0Mg/a7qpi0YmBnPaXzNC2MPkE3R80RPeaEyMbM4xEh5GWb3EbIhA
	 knl6knEi/bQz+XgTIGJ0o1IdU+XjM4b1ZrCcFgifGKDfS+R/QjD/uyfb/uX6/T4Ezu
	 VmaRkJ7TrzMQIQyvFLNZ4g+ddNpKowMGtGddOGrchuOdG8aWGWpwSqRC8xTD8gVi6e
	 HhBz6pOniH8klV3NgC5i78wqCDYeKdgvMelc37saOZxayZsWS6BVecg32qf8sKCZtO
	 CnQbqO2Is1mDO8+odVrg1JvsPIK59LBvFJUuPZk9NkM0bTMjztgR1RrRbuBNKyNpgl
	 1ZABCIyrbVkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91352CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905419358.30257.6653888174715235022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728e41471c74e06c7a3728d5c4e79e80726c35a298c4ebe45a430c5673121b98
Date: Sun, 28 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759054193
