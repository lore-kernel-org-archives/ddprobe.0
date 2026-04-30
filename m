Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8C842668E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777555654; cv=none; b=Lh9kABKbrsboFZY4GOXhtKQjWk5i9/s85NOGhQqRTa5hr2eeviMcQxuZYtZtg3mWVJjlxTi5VAGT9xAr7EfI5HrZktdr84hlDZg4EeDwYiYHOwdWfrma/v6mj98MXqSyJXpnurklDvjzZUE9uzoeMemfoBrQX01+3ve5yyqQDJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777555654; c=relaxed/simple;
	bh=D9bEfw7vUXKmzj3ivKkrlOh3OH1tXSnNX0dhhGcbWpg=;
	h=To:Subject:From:Message-Id:Date; b=pCZ8aSns8gr+DjOd8QrUMm6PNZ2I/i8q1brZ9EoCaMCkPmzrazf+hIeRFWs9rEI33Nbyw2zJNYQFWwd+RQz+cDb8JMAKp+87LtcXTENnvmai3U8GscwFLflUflJnfuFK+8oEYBOwKLxWnbbbCcS4GlcidlgpRFYwdtb+NB/Q0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAMgUPK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAMgUPK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDA9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777555653;
	bh=D9bEfw7vUXKmzj3ivKkrlOh3OH1tXSnNX0dhhGcbWpg=;
	h=To:Subject:From:Date:From;
	b=OAMgUPK9Q9WtBF5wwd1ganysp9Hx5nmTCmhx6KKYOxivbrXwVawkHhwTjZua3Cqs+
	 IuRYva5PFLzKhyMFEM09N2Q8iTM4UkUfcLrAhCOakrNxx4AvVaFd31z0UEBx1iGPg/
	 DljLtxJwlrdKq+LijdJaVKX8of/rCcaBev/0jz58qS5PpoPKbJ+pgX4B+f3AAK1YrS
	 me0clI2mv4ZHXXp21XHmacthpEWQN9YlgrZxnGT6ETrMuQLd5avVz/SUsLkgxOs9/C
	 yB//NenrqdT/OfCx0sA5n8etJ8y5v2HVaf7vMhxjNggq+4SLaJ7W6HPZDrgdlISWF6
	 R3QbB16S9Eghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA4FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755565368.18347.2218152945226644143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d995aecccbc70cedfe90e394b335fe73e2991f69b68e975c1acfd76c6ee4aa87
Date: Thu, 30 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777555653
