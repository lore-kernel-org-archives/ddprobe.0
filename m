Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE7F3DBD70
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773342894; cv=none; b=rflME2SjuuPusAvvGytJsj+HFx0w3eEnRhy2skK7z2Z7eEoHBeZ9NJnidTlck5v3szjkdEUbx6R57RWO0UWBkth/61+1h4cwNYDDshPv7ACDkwTylrz/lNDrtAL7eVMrKVO6TjCrm0sZs63j35Df2tHSvK7FkFu8twfh84AB/G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773342894; c=relaxed/simple;
	bh=CUPdXl/ZC+385swmnzkcYmMeRBbAYRsgZ4astk3Bubg=;
	h=To:Subject:From:Message-Id:Date; b=rMXUbgkOy0tdOIUaCyvu1bVl/TAM2FIc0a64Z48JKh5LsBIgZUeuWnkaXKg35fivnnG19+Kwq33xONdFlF5DlrtLUItWgAzSfFADQu/AqgQv9z/viHc6w7SjJ5RIf3pOBxzgjuyCGGn/ea0A3iYBR9xfIoBhB150APKwxKF6lhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE+OG+Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE+OG+Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773342893;
	bh=CUPdXl/ZC+385swmnzkcYmMeRBbAYRsgZ4astk3Bubg=;
	h=To:Subject:From:Date:From;
	b=DE+OG+JfER5KvKXuKm4QOTatA/2/sWfJpe3yHX0VUJJuZP84F0V07LFUutfgM0E6n
	 MSzmwovxywtNunr9khve/pfKI6MHHeUuVcwU0wQ7o3wLawIh0ruzfEIbQ8jtmA4+hb
	 +EHh8k4LX0/A9hsuPwRBAaZF281gUYUNIsOYUii4IcigAbgPfDJHiCOl/Q8JL1aSBH
	 P8g7giLtYf20dEa0Qs8YR38tntRwzu3h5wE5hqKc6pEozPN9Cg/8LAr2Q/XZmcHvqF
	 DltMpLHVq2ZL/rq6F6MdXdNePDYkaxyP0ouiuomPKs2ATKvL2610nhTfA1JTq4HOPo
	 f7LqDucEiFzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3BC106ACDF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334289362.5582.10088426663961478072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf85b04c5356448f093e699d5a1e0d7cbac4c949c9f7afa62aeb418832aa763b
Date: Thu, 12 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773342893
