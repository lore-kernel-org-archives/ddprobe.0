Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200051A3174
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746214794; cv=none; b=HGkWHtLcNyUouJql1XyBlievxdyiq9hI9fol98N5yIoMpKzXPnGeDTqQgrHahlN7Z1BWAqiFfAutb/HZIDuhg6yEMngXBBrOJC2yw8v1hTaD0O/YxCYl7ng/ubALHOTJBxpW0DU4bSWy4fIc7JrWmu0cl0MvA/i2hzj2qVqw9AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746214794; c=relaxed/simple;
	bh=FVjuObR7xeuuPckRkHbjJCzxmq3TDJtR9Yee742lSCs=;
	h=To:Subject:From:Message-Id:Date; b=c+AN61aXGbdY79cD7prSkhhelHGep6rqyEwFJ1i1fFxFIkZXty+ODXhJ0bIwvmAaE1hBK1eewX2LkIrP33lZESyi2R9L+4U4zVat9l54pKUqUyO0YUMBDAGwpYSEpZkXUU2732NSgnNywoUO26ihOSBaAfmggaiqoLU0/aHFbHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXg6pakA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXg6pakA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746214793;
	bh=FVjuObR7xeuuPckRkHbjJCzxmq3TDJtR9Yee742lSCs=;
	h=To:Subject:From:Date:From;
	b=OXg6pakARhbssqayhNNklpt0u+2bldWj+bSJtxdm1gCF9h9RuKH3lJCJaASQYycDL
	 2FVMkEa6RAYxxb3oUlEdd3qiFt+GmHYcOzTwf2d5cOrr+7Xw996njdd9745EQ6+yX2
	 hXzqL3VJUFXOdl7m/yGIG55hz4r7wBPvZQdBhz50mkck6PT8UDG4OrgFx0YNkluYiI
	 mcS2oYF3q1l1qoLuFT/1hswgKYJMNHzcd5DaM+YxrOV/Z1tS/9Zw7W3tmCQnsblLM3
	 DmdYJQeUO9hodDeOEI+GBM59UslQJRmx3qDyekoinw9azSovv5QKs1ZGtRkHy7dZHY
	 SvQW0KW6+4vYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6CC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621479357.29986.3311948213782901825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd24a88e57675f2c803280da4545b3e817c2d805871c24d0f6005bdd49b6baf
Date: Fri, 02 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746214793
