Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A7947B438
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938234; cv=none; b=p+BnXrx3GWcu8n7wfnWflCljEElNzquSUWl+TvVTe98kaZ/ajeV8nhkVhX4rXP2iP1s1GnuKuHWDZuR7sQFy7Ma7A1XZjYG+jv5b1OTyFxJnJRgG5NTJjlB9U1Ou4TRuH9kAQTkUw3KCSVfn0ejgD9PxY4KxmbMiHfMrvjEi1vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938234; c=relaxed/simple;
	bh=egq6C2dRaZ4JhdT1lHHviXo43zxjZaIr+dG+p88B55w=;
	h=To:Subject:From:Message-Id:Date; b=VmtpImRaBPtwS22ytQuZaF+k+pM+A0vOuyzsXy0wURAg8uoY2VXWMrF71Vvxinj00HBx6Z+q7fw1bpU3J00J92IEBPB/44PKKs7zu0l9dC8jUqv244zmHyHEOeW5PXCqzxJG8d93NAGksGFe4IQ1In3i4khnXIPehti6vvaFQ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX1zKNBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX1zKNBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C1C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768938233;
	bh=egq6C2dRaZ4JhdT1lHHviXo43zxjZaIr+dG+p88B55w=;
	h=To:Subject:From:Date:From;
	b=UX1zKNBUlP5rt3y8ExUh8kl3O+709KjLOB087JyFwiYER6YxQHlMeiEv+ouBsVxnU
	 0OgU8fXJJ/vQISyl6iHNkN6n+tW0igldf6vL4pZLlyoQl6RJ/+nxPLQ1sqtA5SITEk
	 0oG3w0BAVhIO18x0GaRx3azkpCHEUT9ciE9KvAs1MXH4htFwu1S5Eht8cVeeYFSzV/
	 3rnfe6rXifvGYG/cJcfsXaG2bXW+pgM/R1QfEkBdU6YWo7dLzLO6as0+X8hHAp+pWZ
	 Z9SlIJaIT+6LPIDAjUzlH+0+1GsyHm3jECcW59VvJjSOUbYeLRH1cq8nSQrl6OOhcb
	 ie0m7WckKZLYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F9D26296
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893823358.25015.15704638857426953822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bdf0baa95ffce32d6066965dad1eb00756822fff05d49ac7373656950fa58f
Date: Tue, 20 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768938233
