Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF319E819
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761370794; cv=none; b=LPlh3oqkB4Tx4etgjJSgVd0vMLfZUPYiSp4EgeThzh7x7k7zW3U3Sz4th+Wrj5Zdg/TO6CXX0TlqZMyzfXalfBISWFOYrhbvsVMbczwvplYXfwvGsHoZd5HZ+MaO6mW6ESOe9bmS1hvLAhJsugZPyHXwybfZ/S6Ng1OZTiIks2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761370794; c=relaxed/simple;
	bh=Agd/2ws99nFPto4zOuNV3d1VT2ZE9Rh0CKKSjkl+PoY=;
	h=To:Subject:From:Message-Id:Date; b=NMKdconbWGgcD4VkZtX7ZkBk1v+FPKBNdPQbJ7VdK2VgAnHWLn6HSz31iIx+nIdmqhNEadlOHkZj2kjAJH1M5rpOJPCtLGPdB7kGII6clrrx5y2KzVSCrhy99B5GXDQotdUEHByolzz4aEu27SRWKVf7SaBEMs4JXCHwXhGcEyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDAVem7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDAVem7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761370793;
	bh=Agd/2ws99nFPto4zOuNV3d1VT2ZE9Rh0CKKSjkl+PoY=;
	h=To:Subject:From:Date:From;
	b=gDAVem7zjs8zOAv1H19xOhq9G53iXH6fKq+qMPeXGEYkC1WIfWrNJ3yIv+np4p+oA
	 xSb6e2m2UIpDw4T1WtkP7eIgbixuQCjLuVOq/O25xmb5QeH5dGry3D4m67Q6sWmrZI
	 7orDzE8280qk1lWje+o0QG24SUWXpgkOSvspdXcfplwqbtbSFQXxVGpsJJYoMZ/RHc
	 c+d/iWfTAMfOOEyi7iW2CsR6Ax8RKhQ7wwxENJzqMI7WNyyUjA15k0Ug9NcsvhANiC
	 fBEGFtyg9GgwzrvrvBNQiZeyZ8Ll3iyTHS3J4G/Q8a3apLzsi9gvioaLGiQ1QA7Ewj
	 jkuVMIsUcPBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9989ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137079359.6768.18175435982867894923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3125d1d2f3b2f22da8e9f9558268c41bcaeeb9872456c94b9934a4bcead5bd7
Date: Sat, 25 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761370793
