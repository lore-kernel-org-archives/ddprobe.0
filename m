Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6342A2E630
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752457194; cv=none; b=My0wFD5uxKOuy+817ZJwH2QA33AVnvCIQrvfrkXvsoDlne9bskK23hKcqPLZ2KEJ5KyFUqWgcHd5Q9y0rGJF3u0AxFkqvGsR/j/vdneGW7zv72vVCortXq4bPhXaIqKbh+7ZCBXW3B6k2jtdBnrLBEa0BoKS/94FFkTYxD6ijoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752457194; c=relaxed/simple;
	bh=pI1+d58vP8WadjSyHyVdx1s33/bMkOeXMZS2vmfL9Ug=;
	h=To:Subject:From:Message-Id:Date; b=a/bMfZ9OSLJqQn8kLtLsfMNs+8GkMLv0DZmteWhjqLaMfFoxUZnsyrNzGoV0lW5V5/da9UKMCpUPRYU+7BMRyNRCsbojncwHagXBRLbHq/99ugYjY5M5J4J28bLuCrJk6UwLew5FcK+Pz9D69vh9HZquFjF5pE7gfk3ZWBqjqdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtnaRM7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtnaRM7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E26C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752457193;
	bh=pI1+d58vP8WadjSyHyVdx1s33/bMkOeXMZS2vmfL9Ug=;
	h=To:Subject:From:Date:From;
	b=QtnaRM7pcpEdBndopuFyt2WBnxD9ABXTtIWuzrc3RzCShMkOGpGgOTgGK9803AhrH
	 cpmK/eU4K4vWWn62XN15RM7PgK7TbimW0sDwn5e695AcF28Ly3HjmgqkC9eqi9JxHD
	 iYWH5hiNW5+jJdHaUjZH2eol+pc1VvrGKgf/LHCSdX3lvZZzkENZvJ/S04dFBdtFUh
	 8l2CQdkiSTF7mNvYs+Fu85P4jjq04pusPI+LA0aB8Yek4ELbAEK3qxMIv9W3ycNPDJ
	 SGwkEx3dpM/IMoT4QB23IWJqDgEbLXNGU+1OLZCpoC7y0SAW+MzKCgzhBCw382LwOf
	 9hNOKMbtC1CWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3EC83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245719357.710.513427315918911588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc94d3d2bb271bb7afafd1d084fe1a8b9ad85d190dbf3d205efc0cdae206811
Date: Mon, 14 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752457193
