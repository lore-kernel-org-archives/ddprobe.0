Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F462F50
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736348754; cv=none; b=ukEPrdg43CDtTWCrCVKPi8UjbWEUPOmjzPfRIKQ0r3M4MKEA2uLyXtZSg3UlCbeZL9n2cDxF13D2VJ0orVWbAPty0eY4pBnV/BJuuQjwjugrPFKDvmIhFJc10UVt1O7yNFOFKpwVfmMomI7auRJjINN37MB/vYKHX5uWSS6PnV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736348754; c=relaxed/simple;
	bh=FRNie7i4YtJreq9sD+X+eT0K1SZrxmovsrBXCo599dE=;
	h=To:Subject:From:Message-Id:Date; b=GUJVNkyAa2JK9uTsaTPBmVpDoU3AVIlM59UeQcgKUaBIAazzg1vb5EvazLfwuD5UKUoHP9quCdwS+CAi8e3J3acgKOJgliRb5LS4HdOmpw1QoYkt4ptDd6rhe1h4OklGGAMCbdNMHDXPgeYd4+h2Rm1pSUVaMmwDsFkpfhY/a1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdMdW/25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdMdW/25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F34C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736348753;
	bh=FRNie7i4YtJreq9sD+X+eT0K1SZrxmovsrBXCo599dE=;
	h=To:Subject:From:Date:From;
	b=HdMdW/253WfWK26GhhsToSMMegMYuhFK67O1UTs1ezg3+CfS+r7jcZjtdGEYZ3WRp
	 TuKkYy1V4ITcoZzyYaKSKFSl4QoRrXbnmjLiVB/3qXUQpFalUUl539wfvPeTJONIgi
	 vwIwmqL332QLdVLwIgS/ETYFZoIAcG72XLGjMHvsD72ycIQ/LfHM8K/jD36o3zMiz/
	 LjCeWLfA4LKBO6qQvqA/ApVSOKBIW6ieJCG1Dw/yMj6QsyF/PQY7MVQcDBDHtLAwjX
	 wqEI1/8FNtH1OwEMiDCqf8e1l3DlkkhnQ8wVzHbp7JbQ8ZP19GWn6bAdhRftSATv8T
	 gJEOGPRqOFcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A618E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634875362.1333.1624723091146747476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4722a50a18cf58d3b3a30bdcebfec68f2f4a10a72e32c3f42f1d8b1c196cd808
Date: Wed, 08 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736348753
