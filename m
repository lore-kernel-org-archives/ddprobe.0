Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476C34CB4E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714548743; cv=none; b=BfqqB7Y+wUNaKXoVtMUaqc+IuwpOu+Y7DlmN+V4d+Fhil8PS61xUnUAknlxYG9YA7vRnXRfokF5Am7cdyZKZ9dasRunu/TEs/a00qY15bBVW44SzadkHJWBwXx3YWZo3pOazHWknRpo5Bqxqhf//jAB5b4+mqBjd4N3rIw4Jfj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714548743; c=relaxed/simple;
	bh=F7LGfAxWz89QvLD1bmPT22T73L82BjmR9q7711jbcHY=;
	h=To:Subject:From:Message-Id:Date; b=cTATcGVcCFWaj2022p0nmf1MOJVCXHmA8bGzpFKIfNhqqo0MkyTXqsSNAeElnRQ35D/eZf+xHk5sXNC93cVmCdpVIZofStgXkZPDpj3YSs1hc5naLjDg8LkosJvahLEJlq4pQfESrItFYesyD/CLS8lOGQBgxdKqxVyHamUV+MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpYFwsIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpYFwsIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD9C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714548742;
	bh=F7LGfAxWz89QvLD1bmPT22T73L82BjmR9q7711jbcHY=;
	h=To:Subject:From:Date:From;
	b=MpYFwsIeTpE9wQpPkME711/D2kjAHDatfF/Pm9PHkWK21LEc30+x20Iv8WIiGpCCg
	 9o7sQUM0cyu83SJQE5sZYZ0VskJpD4F5d1FZ7XiwFDXWW4zjRUh6CSoOVh3Fs9KVIK
	 MwYupkwhKS6cRXWLvZC/dZso0Ppk1rgqvLX8ZkwKJFEcocw4Bz53fSjyuEijTBLjn3
	 ZxI8t72SaGB6Lzck6ahdp6D0qytqj9VOj1GWGWuxpzmha0bUaRszlq57TSbbvZLTm0
	 t06qkNchdB6++SCTPxnd44aWAPCyGV4RE7vm2axi/F5a0xiW24frnXIe6poAogh5PL
	 zoUpNkNI5a6Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9CCC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454874276.7472.7823163863377448033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c77af9df2c601861f98e367c7402e28523535d5cc12c3844fd8daf7ab2389b1
Date: Wed, 01 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714548742
