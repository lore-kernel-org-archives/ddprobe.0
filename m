Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFD421D596
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781795194; cv=none; b=Y1s4LNCbcL7jUFJW0cFxODuPEvEl3gKBSNTYM/8sf95xaZpJ4tUaiSbhsC3PJSlCsNKURSl6iVpldYIzgJPYlRBCb3STlSW0E/1Zc/NrNMDwec9tkORagsgKtb0s+p6Rfh4adQ4lbR70rngY/68qXO51fxXXV4OPjExTJ1wPpHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781795194; c=relaxed/simple;
	bh=7x1Oi3qhy21C1u2nuBGAiL4aaDDBGz6I/Pn/SREexqQ=;
	h=To:Subject:From:Message-Id:Date; b=bQ+pchPWsX4W4DH4xiPqYDMUk1vegfxtixIVw+9usKcn1xj2xVQVVPlbpesQoLvc3bqU03+Dk+Xx3Wdd0pRIJd+KTI3N2dCUEZx9gbMkNjj0m3s0cX/iSD1U12CKUNRQ8K101tT3LUZxfx7dKR3H0s0GX6Z8VZBvUDZLPMLtqPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlhWJulL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlhWJulL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F2FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781795193;
	bh=7x1Oi3qhy21C1u2nuBGAiL4aaDDBGz6I/Pn/SREexqQ=;
	h=To:Subject:From:Date:From;
	b=mlhWJulLqp3oNxSQ/+DEzrzgJu4rsXAnlRefusgWJ7NRCE0ooMYkQ/XePuBdVlFmg
	 EvxnKOKPeH43QwOjIBuLrKpi+JyfGbQ59LM+7C4sln2Xeqc7suuy5GFP4ImOmITW24
	 iqzZmwFZMiRQag3kFFW+fLE02zbJeopJZ6jOQCJt4QxybDVBqJCH54jnkpmqaGYSIB
	 5nrV0Gnybty4DiRoLCOTNV017+AesEyqZ7B4Ev2nR+vBEarZra23GUNNS1dAgjjEXb
	 QtvcipQIJSkZ86IMXQLL2rFwNkosXGNBqWLVc3ufKHLBX26MuGnP2MpxJKYpyVEh+T
	 WebVUBfTyK1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEDACD98F8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179519370.10075.16501889912453779297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4375fc33adee425f326edcd02ad5eb6fdd0b40dd61d32113852195914b418b62
Date: Thu, 18 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781795193
