Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255661D1753
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730888154; cv=none; b=auZZEZdz+fMGa/MnAbzqL/Mxy1T0E3T7T3OgZq62AB3v6vi58hC7aWzwMcigJQKPuQrOTTbtg1cTqGQOVAl0KjVz7L9YX6TbySyT3LP5JMfPrxYkEQX1RMwDJk27Wl+JWvOb7hp6NbKO1Qa2tT3iTj3TRzEppqDYfCV8PaTkHGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730888154; c=relaxed/simple;
	bh=myChNqlQW8IiTvaUh2B0DS/dtiWfZsfuq0aI+wgj0wU=;
	h=To:Subject:From:Message-Id:Date; b=dGA8c5YweQd9yoPyh88oB/dq8uKwk6GrR+X2w3gh+5l2Vs3xHLNEOzgSTPI2t+1tJDBswFLp5laS4qFhs3EXnn17rlzjZK7gMpUjdKNO38tGgs6WVNRar/HkzyHBMDdwBBSMq3tZp1pvhMEZ5RT7Fxrg2Gql2zToI+5ucOTgnhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxFhrD3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxFhrD3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A0C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730888153;
	bh=myChNqlQW8IiTvaUh2B0DS/dtiWfZsfuq0aI+wgj0wU=;
	h=To:Subject:From:Date:From;
	b=VxFhrD3zUIm6AjHmfZLZpmM2hIlsZfV7UJzdLuRSpjzG85atwaBF5kXn9urETr9ZF
	 sigq771oLIrvdQ3rqOhfO1BkTqHYgzIRdy0tig6/++w5U0Yi7W+TNjeOIpCG9LGpAL
	 NBjYxMdf1ImU0TDpQXKHpZDWJeqCwjwlRfaFiXJp7cgKEJCv1mWrlFnfBfpt2HhJz4
	 immMrAqevDqpv0EDyoYidWr3Em2PSaD2ksntc7dfDAwEQGQG9aX2ycvaLP8QJPHVaT
	 JECZwL7dMAfwEdBYaloUmSg6PDKLjko3HxrFeqDhBY/AT5SHd6s7NlLItMKMc8ipXO
	 XLS8Opd4HdaPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93731D44D43
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088815359.11828.2208326389286391783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba7f5f576db7e827f61ade3e456efaff550ddf52653918dda044639715af78a
Date: Wed, 06 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730888153
