Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7059C28F1
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717476923; cv=none; b=DYIgHNbahGvXg7iWXx0VkNXCxaJoAgeRZ9sVVlt82lHemZlxlh30AWcpZtf9n1eEOQQ1fYOf2rCoryG4yaGYOWZYKlC4qO+qZFrbl90ZBbF6pibRnsbUhimZtwaxB/dXhTnJ6QE6dgHwY6r5NIGcve0n1Jp9Oa4CKHkenIGFj8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717476923; c=relaxed/simple;
	bh=6gMsbm08vaI59UvKlfd+rzFNAU1mOVhGcALoC/lVVts=;
	h=To:Subject:From:Message-Id:Date; b=rEtditU7g3isf+ov+rQMIFoNHtexFHWU/Zka6D3sAeaw44L/BmuFrcVbZFPkgG082YKUO1E8AoIG59+nvuiTMCoofXG21sDC7dlGONs1spdaK7528i1CT/g5Jus5zu8iUW3y9m+LlVZJpAzwi0FepZRIPOGYq9HSVSLIKZiTHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OA+JqLzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OA+JqLzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6DAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717476922;
	bh=6gMsbm08vaI59UvKlfd+rzFNAU1mOVhGcALoC/lVVts=;
	h=To:Subject:From:Date:From;
	b=OA+JqLzcVNyabGYeEjf6SoEOaxoZrdmtAwhU4PDz73Ym/vM1MZ+X03oPz/5PTE0/9
	 ix6AoUL/lQS1yeynjSoht62VL1B7Ej9YPQZr1l7Q9H7CINy2WuuACMvLLffr94Rt5I
	 tYdx8nSa67H/WRi4EDmHVSJca6SnCtxVMhuLoz0pSBz5DqCQ9HmhZDvyUA7vaFGsTf
	 Q1vQUncbthPhVwGSULi1LEtFaxmjwKf/s7iCBfJSi9OVt7BGgBXdWZNK4mMb+iHdkx
	 ttXyTexxMt81COgLvQbFIi72FOThtllw9e00RE7pjnNJK9Smet5IGToG2F7lWCG6BW
	 rBkXRFsh4RLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E64C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747692280.26598.8305367800292919853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11812a6e1c4e0aa68bf0de181ae06781de3b4f6ce128e9a58b32f04d0b876a2
Date: Tue, 04 Jun 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717476922
