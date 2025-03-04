Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8F924DFE1
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741099134; cv=none; b=RLZTNzHbHbFHZHvE/0VGwN9v+APxu+L0hDwdkSH2IXHfDjuT7Aljrk9VQEhRDxrCLu5BVZzGAlJKzZRLOhHjRtEwW/MvkpHpwFbvu99QVAybnNTQfbMYsmrq5CVA5/Ehnqbggx9fhla9cXIWWGlVJx1SgPsIzDM5aDFG5LMml8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741099134; c=relaxed/simple;
	bh=5vFM87bMhtKVMAUc3vBdV+gvzHJx5VxuofS4ErUHoDc=;
	h=To:Subject:From:Message-Id:Date; b=Pbw7E8mOoFoIj9boRE5a3rgHoXQ0zFLEzTbNT/sj8CHKMZyxLp/mD184Qn/Vldbf2juJAILCrYUb02z8jaWrRvIZqOMKYRfL8QrTGJQhC08OMuh/F6foTbVykDLLLLSXkggBVbyvWoUmtJX9BJtT78wbvp0k6GjdIlh/aGEYj4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDpB6FkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDpB6FkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB084C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741099133;
	bh=5vFM87bMhtKVMAUc3vBdV+gvzHJx5VxuofS4ErUHoDc=;
	h=To:Subject:From:Date:From;
	b=WDpB6FkGM8bfcxYhMc5JHMob54h65CppAcCY7v22Bn6mGbIBLhB9eEJm0asaj5HQn
	 blbN6e86kM9FYibwfaYzZrisnHzXXZ5JkOz92BFdsvn7nng4x/5upEQHk5uRrvvGvA
	 9mVsQI+m1LOtg9JEnEU+omjXTqKw2rYmxeeymnwE5E/VicND9Jf7HRS/AkASDrl7c8
	 pDgK5S5z32dmNbTAbygJTBnPK7TokxholLk4HFBqo1bbh0oSXCIswT+HYAOuc6nPXI
	 Dhr9v5w8xI8acunMro8tSxrVPdToy3JxfZHrGa2wu/98IjFn2w86uCshItiKnNhaGY
	 qnMt4uwVdGyQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94199C282D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109913359.2878.5364338662876878417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e714f89b9325111579ad84edb4d8e349c44eec0e41d5d3d297d5b99c44fa7c
Date: Tue, 04 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741099133
