Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD4C3822BE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789243834; cv=none; b=Pypw9U3V0NYytdiDOaex8uDM9edC9x5TLEBDH5/kwkvlp28Ri3Be4k4II/x99KVgshxEBi+3qFv8ZyUPiH1lJrhkNKJzwQ3cGUA0hkeL++12nKOD7C6yVQiP6reS8rAdpHhMUIHsuEjgvdrlhgHzJaVS+eoeuM2kzZbvQmZXL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789243834; c=relaxed/simple;
	bh=2WQ/K7sbF860J9R/smPxDjjhVCLj83OANQRLpoFUiyo=;
	h=To:Subject:From:Message-Id:Date; b=fXGLYtFdVXYIJqOV7jGQxPKWm6kfcpTyC5FLY8btEGToMUvCfMeA904MXt60uTMiuA4PRe3okU2XPc7wgRfPTKJtR0RuFsQ8/fpql/WJPbAU1vAwKLJ28f/60b1yGulDTdYHIcGoXaO6jz2inKu2pQujaCf8I/+chCezg+n2jnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLonALRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLonALRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD38C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789243833;
	bh=2WQ/K7sbF860J9R/smPxDjjhVCLj83OANQRLpoFUiyo=;
	h=To:Subject:From:Date:From;
	b=lLonALRS2Bl6rsvSBmgT6Oth/lTHB6DnGbPm1HSjziNn2pqNtpxBkqIKObnVbbBjI
	 a5zO2khI9D0GyUqwlYJ6pgBoFUC+gcgDqcd+RLHr4NsqalZc6mBd+gbBT3E9lr5rrQ
	 UaqnfKt5XtMF975Tmh7nUTtD0iz6ZdjQ1/85+9F9+dbKvDdR3OChOBPpx1/j9eqEU8
	 tfIwknLNu0fHu9kVz7k6P/20Srd/UmH/KPB+4qDhstjIuNm7FL+DT+cLGLbLF37DMc
	 Ei2e+4uIZ8fOF5dNSJc+FonCXB8BQCGuJQmKCp8Q195w7vmFBjdbHsZ58jUr3F6fgo
	 9nGTbDYyEAK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D1C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924383368.1652.3602049605897304670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7666573a28b346632ef3985ba0e4e97d458d11b1c65c6aa3397135ebe1e92e2
Date: Sat, 12 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789243833
