Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F742F12D6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766049234; cv=none; b=sGIKBw69OGGtwvSFO8LwxPYQX8/xNz7TWYmiA1pCa7C8j3Q4cW+y4IfudpdnHw7g37H86WoAISmmGdiV7pAQyz58ifltuM3JlvlyMSwEWMWaYSRICtcKCiDgX8GZDj+OCh6Tv0Ghg08ej8+nP3lOXJJxcDvcXvWkYBj3sf6GBGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766049234; c=relaxed/simple;
	bh=fJDkdMagtqvReIAZIYARqnzSZT5b0xQBDVcEYTcygKs=;
	h=To:Subject:From:Message-Id:Date; b=sP0ZjOYEN4aPnF070segup8dKJbr679CF1rujT+6oXJpF/wbQGWql1FeorOkwW8oiLOtj3dxr1C7axuV9ZveKP/ITx9lJNSTAMkpipCargfCqliC0WyFNG5Dfl1x1TpoEp6MybJ1xl8USDgFmZwnLBP3xWJXWKoPYr6c3Ali1Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkjgv+OG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkjgv+OG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2220C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766049233;
	bh=fJDkdMagtqvReIAZIYARqnzSZT5b0xQBDVcEYTcygKs=;
	h=To:Subject:From:Date:From;
	b=nkjgv+OG86CbBqE4SgxRuSuuB3MY9jhDQctzQzCPvKyDmih0XQi7oWUCvCbQgla5C
	 eOwk5isujgdOzaDDtOsLlSuGED0AZdFZj8/GWBIzf8rYQGc3uAqWq+xNr2brrfKS/X
	 k0q+YUUbTzPQMVm1reRkwhnDdNIV0c0hCD2nN4eTdXk3GL9C+O6GMpk+8sz6936xMx
	 6A4b7JC8khNDKve1PMcSDonnNJoi70bCk3UpVqS9DUPPCgP/drhuVMOEWhcV3weYbb
	 KbtYUb6dYuqa+bf3BH70RhXjhCnZy6UGKXYDd0GqtZr7+1LcRchCvciPFv2AcJbc5M
	 TVRTbkkLL0Q5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D094D6ACD4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604923363.23237.7267740715124333072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb98cf5fee708ef1be4104d6073ad335f9b98e0dc56a3a22c1a7c124b7c67f3b
Date: Thu, 18 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766049233
