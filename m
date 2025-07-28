Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFF12727E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753733394; cv=none; b=WHTeUSlsnzRMVyo7DlNgA4p75fcn0Q+X3JoQpiH92pptu01LGV5gyHtBFas3sA0toI4S8E+528snuyAVasgn1AAhLXU07ak8hu2xUrlvviugZcWU8T2auJec007IdpNrt4vJITGfnR0HTiJnJAeN3tH+q7WVBR95ha4W6r9KRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753733394; c=relaxed/simple;
	bh=Z4Mk5g0JpZLSFlF/DKcYRexFxJWEK0HFIqE82ZIupf4=;
	h=To:Subject:From:Message-Id:Date; b=laf8XbMQwo8oFNdEjweNJKUc6OL514Up+0+XTMh7h1gx2Gcbj9a1BPT22kbEpGfN3kGOgrHIO/jsmVn7sdwBEc6qdicPDZnG1ehz8b9m7W9faXCNOKI5yjbi93220PgXP8ZVvZJvDcmi2j7nJgeybuYOUNfT14ZsWDP4SCbFVE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQjKGnbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQjKGnbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3266C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753733393;
	bh=Z4Mk5g0JpZLSFlF/DKcYRexFxJWEK0HFIqE82ZIupf4=;
	h=To:Subject:From:Date:From;
	b=GQjKGnbJIXebEMZ3EVato97929/k0v7d/lOdMkaWP5Em/lztVPm7reH0fSww8PPzu
	 uZO1n+qpjY3cKo0ZMgp0mZ7Nr6TlJZVcoA06MOigxi0PwLqkGz9vHvnVxKILBwmnUN
	 AuMoDIps5aQSjlVLbZ/wquW6019IA5nAhKCG6PbiEkf/gWuWRK9BfE3lcBU00PSMd6
	 uU4O+Lbt0gzmmK3qDyyn11JP1guQvdSCFQZCPTOmC7VYWEo/8xVx/oMxbFXhhq1yVR
	 no6Gls7A+TWTL564PNadKL0eg3sbTIvjHIn0ykiMh4b0GTVwTLiqk1eaY6YOfYjztc
	 GDqotY3NDfvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFDC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373339357.1932.16726459782551344810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95f1f5f0975e659f24abfd33804b87cd1351d028a5fa4377713d033be3a0b7c
Date: Mon, 28 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753733393
