Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324122F0E48
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750968594; cv=none; b=s4FDC1iiCM6aDooVaAa+Iwd9VTm6ZTk2/OFvEMsPLsS+0PfhKW88tFwMtnfgDhHYzCl0nqZcuKvAUPWIs8o6yb6gNVN/FEiZ8NSMQTTGlzHgWGtjKAtjgxutAJT9piy3edj38wlzzPkxbQGpeMXGddyD1COXOXcVObko+jLi+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750968594; c=relaxed/simple;
	bh=R1Kuzl9O8pt6M55CfI13vQ5nZaAhSYECjy6bwsSaC9w=;
	h=To:Subject:From:Message-Id:Date; b=QBUigRZzg3RgOp790Ran78NXHSGYeTkePrUgFtaeQ0Y1WkKIj3cJscXi/oXpto0pXUkqzAYZzVYy1svQMOC5CeVS14Sy1ghJsqehDKu3TI8pBMTUwoqSc0mGd+GiVkyhxSxf1I0gB3acZ2uAZJc0xgNXkI/oRPuk9EHdTRlAwnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/XaSiBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/XaSiBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7372C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750968593;
	bh=R1Kuzl9O8pt6M55CfI13vQ5nZaAhSYECjy6bwsSaC9w=;
	h=To:Subject:From:Date:From;
	b=m/XaSiBO+EAzZZ6rd/ZAHQ5ENNKdUEyvroyff3Sps/Vr0iSb2NUDE/P0Y4nSe20Cz
	 UVDmAbFUP2z1ASPJ98078qL8QQuwv49tJvxsyigqhfiu0zcgRF3X77mAxssOuDswOn
	 ZPfoYgDP+pxxB8buAGqhQpQgQAO30lHMC3Sgs1C7aAjQt8p2WAxo31n5aET4QlOr8C
	 MWcNcCpcbkCKn/J5giw79lC7JrGHJVkO/n/zGfaB+AEbf3uUd/1FdfjeEMKZjxaWhP
	 BeF0bxcX7jgY27gHuTBDxH9D/dFjQXQwVVSDAKkrq9vgeS5sm8zDOortrqKkJ7Y7Y5
	 MbjxhQ/tWs0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A17C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096859358.6036.4861950046259209553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e709ebe0c2601a202a48639112d6af3673173ea8b9fe427ab90312b4ad10c20c
Date: Thu, 26 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750968593
