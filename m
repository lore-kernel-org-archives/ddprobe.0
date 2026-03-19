Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2983002C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929094; cv=none; b=N+762LLXlTxxQUGzqdz2t+1UymM73hFD46ov7PBv3D3ksBigmiUGUIJlD4mxkXRDJa/uUAjkhLlR1U6aCG7IeFyLAr+zVEJZN++mS+WG8uLWbT5cU9ySCUJhRDY07kVBVt2y99pHMDw0MVKenIEeBMfMH2X9kGr3kFvkzs64sw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929094; c=relaxed/simple;
	bh=M5uBJI/LrY3QT4JDZ+pJB8zsfVGLFE+nPtSgWwrm0LA=;
	h=To:Subject:From:Message-Id:Date; b=N+gEtkCLSqBHeCIkVnEozT38c3cRv6UGxAtIsU9fiUedaunFSwIae+nXIWw29gyx/alWdr7nqKOGeh6SiAh7tStfO6zDo6om/HFhaQFWDM+VA2bEmKUb/mTN0EIwf4CCG7l4tBSPZF3w9Khp6hD2ZHxQ0yo2fEnnGGYTvR7E9uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuBstzxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuBstzxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF12C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773929093;
	bh=M5uBJI/LrY3QT4JDZ+pJB8zsfVGLFE+nPtSgWwrm0LA=;
	h=To:Subject:From:Date:From;
	b=uuBstzxdsJbXEB11BIUuXo7tqMnlKQpRKZxp4NroePVdXTWUbkpbBsJGz6/Uy0Yma
	 ctaervzbklCcp6dFOgTvqJ6aKh6YZLvhofvU+1fK8CVdcrFQQ+K1IR6vKVOsLKPLen
	 VysDROKu2kBawYvam/OMWu3Ak4cXv4E8lgpwN5YHd+4pyfFHGVFg/dk6oqQFMPLhzy
	 cQHfTxHXTwGt8E2Az0kHlWNc5xjqsxV35yNnFjA4fT7Nxw9SmCj4hidU6j1O5LHmYW
	 b0U415wfLG1kRjmT7dVl0TWHao1Ir8LaMHfqRoY8WG18AWU3fI1/dzdUiuA13quXu5
	 8bpYg9jKYz21w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C6109022A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392909357.10942.3082540837995151708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1705368035b18ac01f70f4935ded959b08a30b0cb7d3f7e5d766acb142fec811
Date: Thu, 19 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773929093
