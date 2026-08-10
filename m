Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7320D42C4F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786380634; cv=none; b=s+HSKE4ARXnmmhnf/bcKRl5WRgIQSi1IXgjBoBKQ5rZiTogB+GujBqlKYKNQnzdu4piY9TU6msZ8mV8viZnYTeVmhWR/iBAWKokHjSQyAf2SaNKFtnB09vh2q5X0jyInhPTvMpTwsLOUxpOMP5oHbxHZMXr4nPsRAQYfWFYgQCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786380634; c=relaxed/simple;
	bh=pOAMvMkbWcec4sKNY5rTuMhRcQ+kWya3B4LJZxCJYRs=;
	h=To:Subject:From:Message-Id:Date; b=W/riO+JYKYaqvHEnoFxuwValLsDL5F1PdKPGQzGuWx0aSh751q8licV43Un4UJMe/iSjMlOLBM7ABbpJ1ivyswU5xgPW2wQOG3VZBquqE7wAloTn2dM8LQhbPM7qGg0xrOcT1+s6ksvKBbYcrBbk4CECBgcwXgA6HaARWjsYagM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc6+jtav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc6+jtav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5ABC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786380633;
	bh=pOAMvMkbWcec4sKNY5rTuMhRcQ+kWya3B4LJZxCJYRs=;
	h=To:Subject:From:Date:From;
	b=Sc6+jtavZ5pgDqDCVtuQRbLlwYjJgMX+ZVys1jg3vxmD19xWLWTOCOc1KjtfkNC8P
	 hQtSGNi3+x9L/KdHXzrZrBonfNRW1F6Bo0fAmYm1LRtLGKo/7MFZ7CVhwIB++0gnBp
	 m0fBSD3JKJIAKmnl1YN9fpIYj+lvzFWVCB5Wyr1wQzkI5iWa9+nqtp0bRREle+5VyO
	 WWW/9N0fq2BozP1/tzEG3H9FOGD8H2zCw8VlZo01fFlMvEayHukM6ELBycLMgAUYRL
	 9Jvhw0hY3cuENi+KZwaNzg6fbomvJ5b7bfepAmcrCoA4M54/d7rUljS+mGYL5dCEhd
	 1A0c7u1MRs40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7034C5B56A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638063374.16176.17234679233723090924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc046e9ea2ae7c62721436bb95fd3aeb0c619320e3c2aa607917ad2a792f4d1
Date: Mon, 10 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786380633
