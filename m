Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BC5377547
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878293; cv=none; b=PMHdrVYhYaEzDu8+tKVhWKXXZk9s1a/0GcehcQ1MFUY7OtlJtQSjJCalaq4F3oW+AcoqbCtif6DnbpZuCxT/4rWX1JuCmifRdMLmN6AZVzLWpDNV9GKdnMFcwhoJ0DF6hESRjxXIY7jRu3D6V/a5+Pc1qIyuEwLOrS00DE0K5S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878293; c=relaxed/simple;
	bh=536hxXtcCU4paqE0nVjTP9vlNSLMkRDfDl96ClEO0qI=;
	h=To:Subject:From:Message-Id:Date; b=oIn0erxYMUtFIcw0rLnB87aQ5sSwsL6ARneXQhjQVZPVv0ObHITh56W0naYGtLBcvVGTexy0/T3msseC2R1OXioORNs695CRAjUFK1XpoctzOuHT3WblpiInqIffybbqyADKMfVlU+vjGJlsl0jPm+TAjTbAA8r3aZiklGluuzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6EYLLcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6EYLLcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771878293;
	bh=536hxXtcCU4paqE0nVjTP9vlNSLMkRDfDl96ClEO0qI=;
	h=To:Subject:From:Date:From;
	b=C6EYLLcMpYGuQOZf97gPHc4aOKMo6xEmpAM0QgqlbrLh56ehbRKXEmAcy599ay1Wk
	 sHwU6H+IcuKzDzHAzDzZ+sCSBtXQ9Q2wLvrL0KR1GCV1nkVPHl+UOBRsjf6/ARfhB5
	 cfp+iWOpVOOD0JSI9wosyR2Kr35gvHktERsJ+0UN6vfTIv/PU1FdXhfas4ki7gaqTo
	 /1bDOQ69qpPn6Q0nlaVrnSpBF7adTx6SRh6Gx7LKvm1cGe+i60ZyGydFIShKowN9gu
	 rJ66GlwxWpggp727OnNdMKYxETjcYK+GiwyfqTjT9oRWlFcwLo2+h+oLF2fo6QdGe1
	 YLZkW9OovNwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B24EC1130
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187829359.27817.16587817028735541714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393d88ab27df01b1c7546cc673df8304dd171bc4f177de65acf4108cbddbe53a
Date: Mon, 23 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771878293
