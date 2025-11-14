Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22705311967
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763126394; cv=none; b=SZuR7AVANRRc/aZGdRKv/OlvbfLrC39kjcLbaapYhQmDeAF2dyST7ICtOjYK8ag67X44dMDmyahvdjVxrmIdNxCSfIBkpq85g5yYRODJlkPjLRIOrRpZzaqVoO1xlM+ckJFKuPAMuff8yQTRdbwDJ/ilCCXo/n1uninQOxlfrlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763126394; c=relaxed/simple;
	bh=OPe3oZh+HTpy+uDbpSY9ZZifxik/xoqIeypEdFzeD5o=;
	h=To:Subject:From:Message-Id:Date; b=iUADNr+WCSAdmYRcrx9yFKXILVTgWDdSGoHI6g3qXuRNF8FacmdonpNV3NQD0s88YIOOAJXXkWJ5PA2gSjNVDVv+kCmaXVJ55Gd2yZ7OzCEYrS9ujVFubVAP+wqi3r3VQ8hKckogSvE3cW77QHyO/Znk3v2+bpXPNuGWUFDAwko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITpj2gcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITpj2gcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9919C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763126393;
	bh=OPe3oZh+HTpy+uDbpSY9ZZifxik/xoqIeypEdFzeD5o=;
	h=To:Subject:From:Date:From;
	b=ITpj2gcDZRC/50+90LjG+ALR7sQluQjyZ0qOxzKEePksFrUzFepoZOyaXxSkTmRYh
	 v+4BNzglMODE7PeZdBTOif4u0Fv0j/+F86XQBdgRP1RTM89wLcGzoVXjO3qkzV967t
	 FTiLUUypltMuOExGrDsU9CSgr75kOo6iDi/gUJH6fU2s5Cez3WRQ0lkhKI03etUKCw
	 BhvBDxULXAdfHfQG8tdL85iqqccKz5yW3WXIjdkj0YXW9CkExyF0UeFmPLJm3T1sTX
	 AQucB1pmehoAXZwp+sgKM++/7DVbU0FOqYOUQCPm8R0/ZYaoPNfA6t/ggy54tvaOAN
	 +so0JHslmDVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A786CE7B08
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312639362.29782.13749229480356322518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a9f7c1f2304bbb49d3e40f92150d94a5df82af7f5a1ee40886d44e7bdee6bc
Date: Fri, 14 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763126393
