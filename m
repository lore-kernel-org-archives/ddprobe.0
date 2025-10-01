Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112BC1EDA0B
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759336194; cv=none; b=fGLCyQF+Szjeo5XClpA0JAA5NNa6HprRwM4BhjXDt1rbq6CDYKfFcpTNEBL5SFxp3LTtdtB1SD1u4qRaXtLDUjqBgzbOIDD9/V/AwX/MzMTosgg2dhuUFpfVhfegcAietoNNMH8hrK8MFWdPaSx3oIiU5YljXfrL5RmhT5Y0cW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759336194; c=relaxed/simple;
	bh=7YGb9Qhvk0jwOvx8uMcZssbwWTP64yycpqqzVY9Iulo=;
	h=To:Subject:From:Message-Id:Date; b=LgDFFT126uUApritvayZqjKenwv95xa6/sx7Twb/cS6DN5nSak2ip9vS3vWixNEyKfDhRdgYK4f8GyD3Lr5GHEkfBfexRzUuIsKZQGcQFSk18eg6Y77d8IUE22XttBGfEtv2jkjAUOiwVgRz9hIq8c8hXKmiu+oQwjNkQMgYMzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VetxxuCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VetxxuCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759336193;
	bh=7YGb9Qhvk0jwOvx8uMcZssbwWTP64yycpqqzVY9Iulo=;
	h=To:Subject:From:Date:From;
	b=VetxxuCyJ1vHWrhXOMSBsGZ8WRePdsWiLdY4eDis96zhGMwSgyE6emycFDwjrA8ij
	 WzHFSC6so4e/0cB5cHawCYZ0+nx0iO8G1tcxy9uf8FuVhm2UPhDOz32hwQXZVldmiY
	 Fux2LakOT3/u713QykQlm3pGB3nk+lfmPg95xFv/Bq1vE2sPEJi6Ck8LMYaY/MHuZ2
	 9sGoOUCc7lgu4imvOcx02e1AKrDIilicpETN6P+azaLia3++HSyHFkVkhMhSVU8RCx
	 zTZjgvaNIxbbG4Ll5ZvFyKrwuojgtbdb6AXlF8lDLfumvSfVkbfKV9xPFe2wkp6PwF
	 N7bZHQeA4VG6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91940CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933619358.18834.14296967548269908328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1659882d2f73f6efd297bf5ec52f78c592bd42af558c70fe234789b6c3444ee8
Date: Wed, 01 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759336193
