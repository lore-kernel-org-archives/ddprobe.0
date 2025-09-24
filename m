Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7BC329F3C
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758745794; cv=none; b=bAODbgdoRnxg8T2n2/zs+JtSUXX3tusbhra++Q5zl3eWtbNMkMILFSBn4K0OpKTbEG0pWuUk0HperYyrfLhUrnZGGeztgyvr5QlIgVvZsMrCLofUW3LH/3JqA1qa+mFuNwk99B4Hrq1Z1nZDssMLCLKHDh39nNkRzu7UPTM+Le0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758745794; c=relaxed/simple;
	bh=egk9d8rasnDJFrP/CYH87uFmLD83JluS67aV9DtLoDY=;
	h=To:Subject:From:Message-Id:Date; b=WDMpSw84z47nonHRgA2TA7kxz+gDHxZDByTzKRgmo4AEpO+iCCaS4BDyVRx28pFd197sR0AxhH1Yp+kSrYnvc4CRkUNKHxMH1StUYTrunlrGI+xs2RY7pMgwl+a4qRB5kIaTu1Lp6xv7wvpDObO63Jl2HI616nI+yLM1l29Z+F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxQ/+RbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxQ/+RbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECC8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758745793;
	bh=egk9d8rasnDJFrP/CYH87uFmLD83JluS67aV9DtLoDY=;
	h=To:Subject:From:Date:From;
	b=sxQ/+RbAnQzoYVUV61QNA8MjgnsGgCAXl8uC+wmH+fm1dfCzF8acYiS2ASwk4z3IO
	 FiJ6fwFu9fyYlwoxZ4hhUgfDPa7LLbetjZVFgAEGmtqo0Kz1UXtkyPHgZ9L0j14TYF
	 njriPpq92t6H0KpF+4fXzE/3/WDb5VST1FY6Tbu6Op8Kk+rRWI4/2E1XbUm7MXBboP
	 zs3IlN4Ux0PSfSkcmLutEWfNBrIn8k8x0hmK0iKSlK11lfFruonqhUldvuxvTUcIk3
	 krLw8EYit1r76hWONnxoJHA3jgkbcppYtyo/cep9LjyFZUzNv47NyiSrjQ4aDp4k9Q
	 ILEzTQJVnVQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524BCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874579360.6267.10307789343983288270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a462638c3d1431338da94827a6c4215183378fa0ade0f31c06de1e9a3c8b1348
Date: Wed, 24 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758745793
