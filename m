Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3C1E515
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762235994; cv=none; b=e9oanuMggo+Ma5liZVwY9EaltkoKlIHisBwg2vy1nGvwr5Y3OJJj00nbOP8VwPWm1iFNF/HWjyAlgTtLAYCTA5rU0ETSA4LqrdinjocXYf86VM4J4ZrWY+LWJhf1jyK+gnRzGOgLT2ogNubCO7z1MgBA9EamAWCUHJ8T+qy2E7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762235994; c=relaxed/simple;
	bh=Fxgj/If4UvoPL7lZflW5F1udriI3A2FTkvCQ85SPjlA=;
	h=To:Subject:From:Message-Id:Date; b=h2TVGHrVNNegTrjiYNMm/bKEhPb20HNk0eNK+NN2MGcGxAufLsnIahWDchFAk1MAGYJrhVaLSDMFAmbhMDFNpcdSJ/SX3dCPG2hPP37sV/7AE3Z5g8HccQ0pE5jhus8gcr2TWP6fRVEA4w7YS0quWAqQKsv73UQQLTZxksYACXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6zxHDKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6zxHDKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B020EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762235993;
	bh=Fxgj/If4UvoPL7lZflW5F1udriI3A2FTkvCQ85SPjlA=;
	h=To:Subject:From:Date:From;
	b=J6zxHDKj0/BHLpssrYAfvrsFq/uQlmIP3DYC88eTtuAf3Z6e++pPLIR3mpcn6Djs0
	 KNdgxpHysEUVl2JE3j5VenWbXHbiNxeL/zamKcqFSoCLw9pvrIEB4GwptY9X0/AuKm
	 41QpKHGMyXQ8IoVPYLR8W4Tm9EaWK7TEJwAJbT9hM/WjAFTQAuvZ9g1E9UvFP9B3vL
	 OM9hKm4muM5qwFOePltUABp1QrSgwCqvwzqou5jneZseNSIB6CupEKFHDyeDQASyG6
	 5d0zYPdTijGeIXjMpKLH2O1oWGsvCeZQxxSM4og2KyjIk5tioh73GOtzBZ5f7jB3ty
	 EJdDBBH29YWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A011BCCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223599363.15104.805311803662721452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37aeb991ccadfe787aaa02eef510a6413dac7b3a1d45acd38813af6a39b63e46
Date: Tue, 04 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762235993
