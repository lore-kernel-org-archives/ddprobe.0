Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6092F3C0A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775486133; cv=none; b=JxFgy9ip4k1weVhYi69jX9Mv+J2cGuI7wJAtj8V9ptWWqwbpxbn5MpwSNBHjs/Q2WUGXCaGCCxs3sbB8TS77uUYK3dmoo0Y+1D6u3VGQpmfY20tcZw1ayvRFvz3/U4fZXS+rDXFj9FjGRm+96x+Dw+DqMLXDZFdobn5Vv/CQdkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775486133; c=relaxed/simple;
	bh=o02ZnuGvhvoGY7pC4ohr8sJtNh9ZtsxFUCgk7VuiwA4=;
	h=To:Subject:From:Message-Id:Date; b=f0mYT4+1UJwPUi7uLT8HuH3fH+INWuQFhPdqYRS95HcG93qCV9rVF6k+jm46lMDDExcVwm6JX6z4rOcE2tue6kbokHfvOJJGBCVMaGvg38XUptBorBHfOu4Z1FYCtyuhdEBdLiT2/cXHAZqcCrIgiZJHGs3ZvWpC0CHl1V6inOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVlgvUzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVlgvUzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD4FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775486133;
	bh=o02ZnuGvhvoGY7pC4ohr8sJtNh9ZtsxFUCgk7VuiwA4=;
	h=To:Subject:From:Date:From;
	b=CVlgvUzumfiBA5c3oTACUnTqah0Dm0bWScZlOs1DumWVpurxKDhmoh2c7SWKz2eZ4
	 BjL10SbGNtx1tZ21ctVaxlx+0/jb+T0Y2Dj3LhK8fep8SK5FvLvSNXYM+xEqhsVVD7
	 1ELbPZDhKMnAhMIwspvmxwjiFAs3U3iobCvISnthCjAAOJPh/UKGWFRXKxRqOrLfqJ
	 E7fmVmZwx1y8EmmqWflbOCI5z3XodRqGL9YR9wIr5R+xiVtxQDNjKmyf4uOwrNBCIl
	 r07DBFh0XuWYCoSw5W/okAFwEi74Z+GSJvtzyEm20qScQfx1+B1AgAe0d4AZSKtAPC
	 /ug09Fbn+g9QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A6F46C44
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548613369.12574.2899671978775342433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e66d5d3a5949315d8b0078078c8b9bd5bd8db44e3dcf957bb4ca56ce6f50cf9
Date: Mon, 06 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775486133
