Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188463368BE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772708694; cv=none; b=LZCLrETYbXkVizDAWqzhIojr7cL4a/ndzbntgJwD9O2Q1fghiEHFmWT+OD8apICCNOgsAA2KGYiu5NHeyZBGF950yLJyxO+B+6ttQ3Jt7TpQuuu/75RLEJ3t5rGBMP+s31mhVO2bnF/KA6GjxtKWC6dCUquT9uhI0zbo2uouIac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772708694; c=relaxed/simple;
	bh=vlIe0+T6sT/XQ57Yc8iti1J6eMFPUP4F54S4YDhENfc=;
	h=To:Subject:From:Message-Id:Date; b=DHfWv3aXjxtWSp88JF1OnLWt1bS68zGHFP7JJM+1lB8J0cQJeZdXvtEAqrmxdk36O8N//f7woxl6ga1F3aa9Ovon6OKpJOaSMQ11SYzxqKaY52uxzF6vNOop2nWbq+QMDU90HEUrUSLPTG1K8JDBh810gLjYlrEyWSYznwc5vKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCsC7Efi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCsC7Efi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABA1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772708693;
	bh=vlIe0+T6sT/XQ57Yc8iti1J6eMFPUP4F54S4YDhENfc=;
	h=To:Subject:From:Date:From;
	b=FCsC7EfiaBvSbD5j41xKrXkMg/6wxGdHYE/SCp8/O5s8yvQlCFAx7/pMC5jwVCWCp
	 KOt6z7dJM+mPm+Dw1v+viEVdAcLUjNsQJOAmbahxbyrLbYVpQ3yWWExGyXgVdcxfV2
	 68Uagg4+pMowEdX+hEewu0/5b/5kOQmZ+u3PeZu5xw+AvrSVi7yfR3IEm9xY1np7bZ
	 nWvRSUssQmbh3akIIstIeg5jaSBi8XwNXw/BAm7ghHSFBC4jeU7sk7YolUW2lxOjU+
	 vxyDdCASCIGiyZpOdZcEKv2DeRV3yfpEIp/bmw3j2139kWhFifIEbTMyS8uZO4l8NA
	 Vdi+nJbUVUfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9983AF30939
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270869362.2012.17567061735361350542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a906af677b084c709d4fb91218e0f0aa4594b7a361bac4f97395b3144432e6
Date: Thu, 05 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772708693
