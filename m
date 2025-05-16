Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86E1DFE8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747367994; cv=none; b=TjQsdCDRLNRP1zU34MIkECuLzQka0AGULgH3+Ok913rrkBspDfeQ2ljin00valx+A6aRKTtDcni8FacACI9li0Um45hvSAJSpUpqR29HgVMOO7bhy0dgRwuTrEIJL3Sz6ivze2aOAWp2utAyeMcHQ8a/rdnZgzqNcAldZ9LjRyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747367994; c=relaxed/simple;
	bh=X+4ibUroMRXMaF9yct6EF6mcGO8Aw8iPlmVrQF03j3I=;
	h=To:Subject:From:Message-Id:Date; b=XOXYhOyoD/zrNV0a+BAvroYOPheJ/rqix+9MAC9RtqRyAQ6QvPWY2O2rLQmWbIp3oHhF0ndjm0rqfoEdXiwR+WiK1weJGJXtlTdU0vsPL4k4lPz/IrbdGOns4OaHxAUFPACWHnrNeki7DGC6PH/WGX3mXdiHXcDhdBvh5WeyVc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OelOpYHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OelOpYHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F8CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747367993;
	bh=X+4ibUroMRXMaF9yct6EF6mcGO8Aw8iPlmVrQF03j3I=;
	h=To:Subject:From:Date:From;
	b=OelOpYHXIEzMvsFpa8S5QJM/GJQfjwc78rQj8T0wjkJstZ+2hLU5yESbygWw6BgQh
	 pbFlzWOPjqV6hvj7OVh5jqjxna1YC+68lRO5oiSb0EQilrNblozLkY4BpCgu5JhLcA
	 cVZZk8XaEuPbZcXD04RPuWhnUlxAnO3gg0gN4XOfSmJPPoOirgCfvLYeSs8x17xp53
	 cxCJqrLcm5FyFIQTn1m1A6cgnHcXQCOnkcoIHROyrdQ0TEmgmbapPyF/oF01yn8lFG
	 miR6+OS7iEm/jLWeMC2LSGIZNIjAGbrbUkRj2Jrplf0PvtEckBKx1uVfIYCZ/U7MH+
	 bYtYCMVd3oOaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB8C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736799358.614.6853071176927510213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735b62f02f6dea7ee89bf3e30143e13cd3bb23c89856367a6adc5d2ed33972e5
Date: Fri, 16 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747367993
