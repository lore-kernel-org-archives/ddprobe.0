Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D4375ADD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776373654; cv=none; b=DIXVGKM+dI0kqAp9abj6Q/tDDQnntarQ6OmlCLLJqNrxthCEAd724mu8PkRK7knT2pbaC73XImm8NNstGnoO2aH/LlfSnUKEakLtz7Rku29E/n9Hhk9CmHr3qRQWLOH1ep4t8Um0yXTr0dpjWEuyubM2vXH5Q6mprsXIYqQLqFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776373654; c=relaxed/simple;
	bh=y8yA1aP25n0KRBoUmQuXSAphqP/0qTjp+GZJ1lZQZo0=;
	h=To:Subject:From:Message-Id:Date; b=NAepkS0qs9vD0efEgTTULqzDMHLdHYCslKqpBVMHMk2Vo9K4WOJywjAuw4FOUWfCSsZCnMkhUDVnr4xNk6I55eueq0O92WhtUbCJQB6E3dFNZQrgY5RMS/IsPNHruTVYOUx/1r7P6RlwEungGDhkBzUp6qIMxI8WY7CV5kPBv9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en0yYPsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en0yYPsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC68CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776373653;
	bh=y8yA1aP25n0KRBoUmQuXSAphqP/0qTjp+GZJ1lZQZo0=;
	h=To:Subject:From:Date:From;
	b=en0yYPsdqgWQIHXOQxoSgauowO2ugee2sS/Sv8ZEqiS7hrbegKAEIOLUxVnQmjXPn
	 5DhXtiX+V9sUM8Rbp64U4OuzxOlXvWpyPgLQU/LtQYWoualTfRmBz44yER1pYR02qf
	 vdzO3YG+GbAfw1hPjAdxfkqrRzKwPuuJYHh62jDWSHDTHdHhVdQfO8Hhw9mqobc+Su
	 WAVJ17HJcTaTN7Nl1XJnsa4AaQYq1wo0IAY5FXhwd8dmo1TXsN8SwcfYvBbFTajOrO
	 +NdOWae+iB5Nk4BYCK7typZ49yqRYCPNE8GGr3kcmb+jQLP4CsdQDos43IaPE0fmfZ
	 ftttsIDQ2CtDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4AF433D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637365369.8766.14524522110120986856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4f0dfcb1f2f629600ee35775a153d8c0ff959a8e2513b7895331c92790dbe2
Date: Thu, 16 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776373653
