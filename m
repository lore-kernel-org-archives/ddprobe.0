Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD2F37C0FE
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171034; cv=none; b=j509gQUdUQRnSyFBbrt+eiqPMnMplHo0RCqGyzn/X4AK+dTZc7r5kzFZWPt9Q5DaX8ZByYUp9GspGWhHW3GsQ3gxD6WQbgbm+P/ELvmGjSa17sgcOSiDqwwrEYTnZ6BS8StNxutaLzHEg1k6PMhCdNgeQgk4hdALB0n0I7w2Sd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171034; c=relaxed/simple;
	bh=Ycd5iz57OIaP315bPXwXaJWL0wgTXWhkzQ0q886lJZ4=;
	h=To:Subject:From:Message-Id:Date; b=GxfePWL5/z2+2m+GGY4gOfWSDHO0fAjyzstdatyTsF6R5rUSl9BrE/WE48VrNFEuxqAFzHUcW6RNO9DSW85bHfJRH9Nke7jnttvXBPUE5ISdXIlP9Cin8F2lbYeheCTvf8kIGLa5AM3fPz5DjrK1tsY0hgWxragkVVl0nEUWwvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmLC3WWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmLC3WWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2AEC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171033;
	bh=Ycd5iz57OIaP315bPXwXaJWL0wgTXWhkzQ0q886lJZ4=;
	h=To:Subject:From:Date:From;
	b=NmLC3WWSXlpDrRZl3MmbmHmdLqeiu05YUbTa1JNGlK60yb3LQX70HGZy6NCu8FEjk
	 htSZR8dSJe21bS9w0HzmzmyBFKxkejZuXnLzwzt9DzzEsczpFVLjNYPEMzPg+1TMfS
	 2Y3EnsAi/HggrgTRyilalYPUeql8shkOuZefzypY0Hph7ZhKniHvnY7GYw/DHXpaHP
	 OyIHSIJ6eiwYHhhmFQD7soLj/FNfuGRFRjN4+u0AJ/5KFcy9tL3jBgwD6Bu1Owk1vs
	 m5970IfbLYcMXrWvPUo4SdzoKjkeTdWgMCnGCvt8Qg59XAAkP9JDCKOrMB+1mZPTUV
	 I96wNLKemYc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACECD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917103369.14340.7637379019910158233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516852eef9a6e5f0290a8f0d904fe0aaeab22289bf8461bf897428adca588ffc
Date: Tue, 19 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779171033
