Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE732744D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753963794; cv=none; b=JW6KrwvnR15bhO4hjScC8CWVu531xEkOZXO7FuLxq/VmOPy9lW0x5OS/s1nWN9WwBQXnrKjdaCfNd8p3iYPdOtoP48JEUgJvfsJCNoi++xJcUfDJ8fKofkN0oKP1fKYtLPgdZuW2j7x0O8vCrJbHADiNngk6ToK0OBh80j9CF0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753963794; c=relaxed/simple;
	bh=1NOZIpKa35evYm97HyLOnDT9DicBhM4XAH1k7xIFFPM=;
	h=To:Subject:From:Message-Id:Date; b=kLpiCMDdH5Clh+TNxFZCbKVOvOy4b13OeevptsdsHSvkKxz7q3joDd/nxxQjYijXO360TfQ8t1A67VTS8M6CjauguhJMYCzsQXUvvhs9BOPahKHbrNyFGSZqGOuC4g0gRCh1ixuSuJ/q2wx27HOS5lse1253DgS58UlVnNgxXz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtlncIs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtlncIs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4286C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753963793;
	bh=1NOZIpKa35evYm97HyLOnDT9DicBhM4XAH1k7xIFFPM=;
	h=To:Subject:From:Date:From;
	b=YtlncIs9cwsIEEJkQ5fIx6LNATPj6nL/NsXK5La6+AOn+amXhG+/40fwt4KfmPgyf
	 ZtqhX1ghLWWz8RgxAEq3/ocXOGl7YnpIwpfReGsELg0WVEmyeK13AJsvOU8nPwFYJs
	 RY/K52/LoUaMHkv76st8sXGz9ILS/jGU3Y+IXcumOqn1Ovj7BvMAERTdVGCgmoeuvf
	 SOlGdc4aMEYUlr5sbOWaq3pNUR39aIMinj7b6+WIiPitiYpDTo6St3R7DCJ1XQDVxB
	 TAxQMPMFgWfy9siVSyoHZZEfLlakjmPSXeszoUC2eUgBvyYJQqCgfPFGlkf9BdX3xD
	 oEcOzGoLreqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B93C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396379357.28423.9016135335837683154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0af3667e68aeefe36b07afddfcb4c15125a3d74f07823bbadf605868aa75f33
Date: Thu, 31 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753963793
