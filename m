Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2474D2868B
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742629194; cv=none; b=n/slHFTMy857ThIZa+Cx5B/I8XJca/oDRow+LVAMet3oNAf/8C97ckD3ZGkGGfYBPRnCSQbDuVbHaYBv0iXmZSp6EWTS0NgAFEC4SrfVCPSPHQlg+V0xx9wKu1Qxjb/H9rjeIOWOPws1R8prqzPFVWkRW6Ek4Xv/zOdevhNwsSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742629194; c=relaxed/simple;
	bh=KU5QHyEtjh1KPF64OuA9e4cMRrwCNB7dbsEa6nN/avM=;
	h=To:Subject:From:Message-Id:Date; b=qkVxhL0sSoI70QntBE01zBvyFSp75b6lr7IQVQwM7m321c1jcL51UbRSXXZOMy0eGkgl+/YaEyYGDCOOalCtYaN3CniJndztgzcO/OEgC2i/UkmqZHaB5DpXJPkTME2lOQx1o0VfRr8mxb6GA/V0Mau2DXOzfLYAM/3Y4Ommk6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf7f0OSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf7f0OSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D3C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742629193;
	bh=KU5QHyEtjh1KPF64OuA9e4cMRrwCNB7dbsEa6nN/avM=;
	h=To:Subject:From:Date:From;
	b=gf7f0OSFuoI9RHE3pAG3vpzoS16vC1g4z3RHaGK6FVHOPhC6yW7wYi9cJWdKSiX+/
	 vBnK+03tRu8tNpjWppg87+whcEW1TW7PBQaR0MFm0JgMIXrwFlTfzZx5jc/cmXi6Cb
	 dzClQ1cWXyOFiHS3CdYqcYCylrmzRtULxj9NtRiSg2pZuT4ZBhq7uC3UO8XPTGfco3
	 pa0KJNPlkTBUM6CbhOELT831+GvQDYfbZ315ZxVXmr5jrOUwg8aV+w1C4QnJp2zQvG
	 OAWWqJqz1zYKcE32yOKsFA+mujmgTPXSTv8YbBYIGHGtTYii1+mwe2xtZ/C+k74gbr
	 r/WpA+6bw0buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945EAC36008
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262919359.582.17940326479957964937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd01c5f7cbbc7c0ffae7ea19e946c488dc6e357de2308129ca8e38a1a3ff3262
Date: Sat, 22 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742629193
