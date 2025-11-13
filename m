Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B02C158F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061594; cv=none; b=Ue62rAyd4+sYVIxJXCJROTPrLt9o6oNqi1/M4dg49BRk8x67NfaijAxPYvMM+iFyWh3Gfb7/jPtvMxNf39zAjSEwzC2ZZTYZv4QqJRFTl5oUSzEeY5mYbS23SWqZYOhDl/hLPWvjWGRP2hPI8lI9pbBMNcR8zF3NK4NXcGWp268=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061594; c=relaxed/simple;
	bh=hlSFaX97ZSmMzpocdFvzDNpN+H5b2Ypiz7X7BeXDnK0=;
	h=To:Subject:From:Message-Id:Date; b=OTlJIG0w2bc+6BBb5WFs2Tz7qu5+TcbILg0w+/qeh7e65jO0CloKGv8meaexmcKJELHrJxlI/LjNwew1mP34hk0TGAlX/D5mjG88XsqS/8KZEyxGoce3eSbW9U2TinjLk3/vup+0ivKz5oWSGTYyASu3rgk4ShDfqvuVm23HAy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO55WN++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO55WN++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C7C2BC86
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061593;
	bh=hlSFaX97ZSmMzpocdFvzDNpN+H5b2Ypiz7X7BeXDnK0=;
	h=To:Subject:From:Date:From;
	b=IO55WN++M1s/ANXAoMqqmGrQ8Q+2l/nSmCc3udvhbyzDo7NKNmwPx/x86jv4Wku21
	 Nic0VcKWhZ2h5ZP4hcjwjBjMa/tzmE/jug1JpzB9YHIQ+7/zpLj6D+2lTZGZHuJas5
	 q3yNEll5xIX5TvQMEdquUXiO8DkDZofBMqk5exX8sX+NJf2XwJItNulSV8ueoIZxa+
	 a1cXn55nsUHcqcH514z57wOSvNnzjMj8JXMIaRY8GGInCy4+lVxxmLZPNZE+2Q4osY
	 bRB9kROm0lMHrqsuHIfHE+PIA4m/u7TaH6hf7c8cpX8bI/hz00elzOgr3eJmG2CSHY
	 KbuC5EEMgCMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29F9CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306159365.25560.9641250003145380227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e7554b4eab182dfeabb8e022edb087d8338f4cf76d9b4c37a4c3db2fe69bb0
Date: Thu, 13 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763061593
