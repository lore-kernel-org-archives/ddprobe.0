Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9F517C77
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761871794; cv=none; b=uqB+tlSCHOTRg81RhynCS0AG3NqWcmGmQ5TR5JnSFpCq8TLaXBT2Rtnuk68TSkHUNcWjcF/9XnfG+1AjFJyVlExHn9R+PHpMr4i9RVqSHL+AQeycUydDNwZvGqDN4L8E6RA7NFJbrGIRIcX/Af0GD3chBrXzT+DZMfxNPmziuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761871794; c=relaxed/simple;
	bh=244xme5vYDCEQDlkkdzDeLRN98zDQ72NAskNkAXOkrg=;
	h=To:Subject:From:Message-Id:Date; b=rqvd6d3FcD2hDT8GOkAQUuGWzJobzx+TeAGZzHXXG7VH8RIX7Xrq3tkMp/OPDeMy+B9R3WN1mVOzN8hakzfGUjz0ZVJ/HtYejkI+uJy2Fyfj/BU1peANI8v/VqU9yS+uxbnlIYw3P1quQekPkLgGnV9WzmHhXqvIyXIhlydtMNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtcl91Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtcl91Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F69FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761871793;
	bh=244xme5vYDCEQDlkkdzDeLRN98zDQ72NAskNkAXOkrg=;
	h=To:Subject:From:Date:From;
	b=Wtcl91Z8T6WTXNQHn8Y5QXjAoA5LzWgH09Zi55dXc1B49jpsy/WXwEtNRCRDJlhTU
	 7LkPRxHYMWdJd0/5b2tSAM3K7p56H4LUtpaJF82qfbnBtIrO6YlAxUpigxuU8el/mH
	 MnRDY5PH0Ffga1TsLKep4ijAYwMrGFoVyH7BuTnSHFod5U4hhzczEjvEUTRJWXpOi/
	 j09HbkdloPmbTXVGpMZcDFEvmyjDzHx5FhV8OmlVHGEhRtPAVFc0Dr+SUINgeSWl33
	 CmOYn5cO+zIPdCplPkpO4gNISAm0q7NIHZgldH3K0xB9M2j1V+iYMrb8/ODYTXfu1w
	 9/802HtuLDX7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91292CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187179358.32699.15205285876819628231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ac7b09b6f1002040a99cbca0870fe65ef3749a35bb3af26fba4883ed68cf36
Date: Fri, 31 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761871793
