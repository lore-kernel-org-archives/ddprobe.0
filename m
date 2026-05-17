Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3ED10F1
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779028834; cv=none; b=Cj530BP5ENAoSoJZ0mc6KfhEmP+fhgGGTjdtNMSBYNQKCbvCKtEUbjKeZYiZZSJvZ7gn11ZGQSYt7pGNU1PM6qiFUxPd/OTowtMe5pCyV8zna6M7/I5u4AfIBjapClQ03I7TorXMdK4qQL7TFlJnbykNNjckrHc5dkFL9Il5pIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779028834; c=relaxed/simple;
	bh=uHWj+Z7NNaVFUCKbBfZx/hIl/puHtyqXcq0miG8omPE=;
	h=To:Subject:From:Message-Id:Date; b=Tv1lVTEBr4kpkpb2inWYEvFVhQGlEXv02jOx3+hdW+NEeBhyoH+VZQMsCD4DtEd/EvB7aUJ9ye/hsljtTivN4DwzO6Sw/T+F1eq6EeJ8zxgIK+IgiyeQFIwueF6W+Rd4c1KR41dEAUJg27wuyzobRMh9GkeVlLFKFEB/S0Y02Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y87M7e+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y87M7e+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C8EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779028833;
	bh=uHWj+Z7NNaVFUCKbBfZx/hIl/puHtyqXcq0miG8omPE=;
	h=To:Subject:From:Date:From;
	b=Y87M7e+1RFptiFIXS1MuTFI+ICz+0TSNVXpLPR3aqNovuwrJ5CRQOVmldRp4dr9V/
	 6sPlQ+Xo9m7mudpikhxXW29tRVQAnyF8fa2AjBKNgW3UFc+hQ69exmr7XRJdDpqDB0
	 ANp0HzqIg9PmfdCOXeYapI9lcxxr66ezZh6OBAElFIjmuJNAklQ6LcEbQS8NQfDDss
	 3yFoP+u+b4r/ARPgUvIZgA3YSNVn2z2iIAkzg98UEwp2AflpcTjv3oBx4ExuGA2peD
	 AERvHNUFgV4BRf9d8x4dGjzwW+Cs/s00pHKZthoKw0xVKHevYHTxKBncewjTU3Wfff
	 Y/6bZvtV5ocuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0283CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902883369.18231.17400169343880358442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4657e355e5d286b5b606e2b915b8dfe543927057a0144e16ad8b686605e08b
Date: Sun, 17 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779028833
