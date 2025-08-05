Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232FE13C8FF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754370595; cv=none; b=i3yY69XLhMDWneO5FwVuqfM2kNokcTXWqJRcikyT7r0RzN4WM3oyARID95ZbAroNPARLorySA/lKLoaI9tQFRpQpHbmb8RLU8z/5WVMSITr2kAPzUKIgxCuH+zSmWdaoPT0wX8q0+agQy7CMjw2ptgDottcH+nLVcoZG9HABixA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754370595; c=relaxed/simple;
	bh=xvmWFbMbIWvcX6lW61Hf7tQo8cCZcqTNybV++fhxy9w=;
	h=To:Subject:From:Message-Id:Date; b=prGBr9R/K99Vhr7fkaqhI1kk/aFa7uEzAEmQVs8b1U68tb4HfQKQDVsxDX/py60PBPgab4rlGcoySJWatw0rtdwbZkxhgKs+c6JKU/1RKRwTcaIVqeRQdDzJ6oF/jVkUiub1qhYj91AHRMvg7Vd47eANjZfBiix7IZKi+fxXipc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM5O5kmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM5O5kmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2558C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754370593;
	bh=xvmWFbMbIWvcX6lW61Hf7tQo8cCZcqTNybV++fhxy9w=;
	h=To:Subject:From:Date:From;
	b=mM5O5kmy/oCU+d8z6Izy/+N9C9WpD3RWJhXEVYirwiYVytT38indik9AfBduBTXLG
	 /yvNZMlKMckbX4Ak6pg6w+sNmSqXtFuzuvltdNfB+RhRbL8l8spz0EiARBYWKJIFcV
	 /2sGPspQWSR28M1h7UAZzR5nUWcY/fxUDLavfO8Q3PvQ8M2NgfVigh70+hKTwCN+Pi
	 JAeA3HEsMh3Ns5nGhENJvROxczi8clbm81skTFdPfXI3kImRgcckhwMsoNk2SNzLN/
	 IpW3WAnbPE7KrRWf7ddY13+MmvcC1ZTyTovrzcARVfRyfPQoYmajdA1QU6g0N3rNyX
	 3P2GepTCQe/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98DC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437059357.7126.16246198606989191964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a679692ed0e64663114a27be1131f4612bbb4e0e1693b0ae80fd85948eea27
Date: Tue, 05 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754370593
