Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C23A1F131A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775220934; cv=none; b=iKpZHdPIqxHdDe/VBiAxtm0yDOllk1H881SdELnHMb/GGVBAcQhjdsn5hgWMrfZgedPqsgeGQuwiv1YyUM5XhfV5f7/uRZGFD7yigqGysgvhhJjwbSO9gQXdQ8xBGFFFgOeZ9yd3cQPACoZmx3N/15mt1B9JXPCF4dgoNXt7R9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775220934; c=relaxed/simple;
	bh=ROYZwttYp4qdaVhd+T5XQOar3qmQhpr7lXfCe3Tmewg=;
	h=To:Subject:From:Message-Id:Date; b=YarGmmzXUS484Cq4MClAsvj7AOqzRkMv9zSa34mk2+cWOtEu4EPYIqPl9I/HmLOdIECVNM/fHJhf+Z8LG24MsJf7dDAPGfj7zu9Wp8iENJ9Av7yZa0/jcWEGEAYvY1Lr3ErctBPXiv9Tymymjo5FbbELxSPHneijsgf3Iwr/D94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At5Hpvut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At5Hpvut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CEEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775220933;
	bh=ROYZwttYp4qdaVhd+T5XQOar3qmQhpr7lXfCe3Tmewg=;
	h=To:Subject:From:Date:From;
	b=At5Hpvut0+GBPQM8ouDeMecT74mb3plmjEoZNuLb+bt48tuAoPOjB9/i+k4byF9QP
	 SRQrbOZTKq3psPCNNcFcs0iiPUS4XnB5eBd2pc9q4zOYjTcupkONozunVd82lTZVmw
	 sqFQmC4PR5Z6kQTgbc8JgXCwhha+PJd9XWb4HQVVqyNB55igZ2fznsmHHfxuS4YAB2
	 s+vAIPkAo37aVvixAoioEIVppS4iJXV12hds1dkC8EsEZrHI0xjdJ3p0ouEIoRR4UT
	 5r4fzFh5AyWduAHL9seSZ6GJMyemQTejCqC1SPQQ2O3I8PjhTl74l9z8okqGqizsqX
	 9SX7Lplc5GVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28CE85363
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522093368.23015.11622975509070066116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fe27d194a755fa6225d4fcf472d3c196514427a9eb87466b4edb979f8a6c14
Date: Fri, 03 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775220933
