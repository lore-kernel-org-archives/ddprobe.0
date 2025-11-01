Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB0311CBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762038594; cv=none; b=X2l3H5zqtZpgyeFlMiQzqRS38PAYTsxtl2YtqqfY45Zb2KrdGLd9d+TSa3naFl3SQ2Z/ifvEp621NSbF/d3JdfF5yQtAlSjReYEiJvrVgZX7fgd/bUYLggQ9p+/Umg5li4ugjoRor8cN3PeL9duD8+nuRLMJxHBglQZTlVi1r50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762038594; c=relaxed/simple;
	bh=EcvrNpWcDrnHM2zs3UlUH1l/ihkjHMYujXtjjteFZiU=;
	h=To:Subject:From:Message-Id:Date; b=IivJRoOqc3Prhirl4ID8KFmMTeVAiaG9oCJG9tN7/uFnGrJ7G4lU90ryxeHqncT+pEeDzgG76Zhz7ezP9pjQRPFFxkqg9Nzj1x3NhLoLaRVOQt08jVEHVWOd1dp59lTQdZnLHjfmNY1OEt75YKRDwYjucpnyvyIARiuu+skPZkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+tCdJYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+tCdJYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F33C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762038593;
	bh=EcvrNpWcDrnHM2zs3UlUH1l/ihkjHMYujXtjjteFZiU=;
	h=To:Subject:From:Date:From;
	b=h+tCdJYAjadbGXz4Sx8261wmiv56SeYCZ0PE9oEvG7mo4apk7vpB7GqXFnce7mySF
	 TEB8uGlQmacINqGuvpyx2P/k9kkmbeTnqcQxT7TPzvWRSQKjDV4+VCs1knZLWJupIx
	 TycFwbgCWewN4Fht7JmD9bYC7n7PetYsy+ixDg/O8iLIEqNTW70JYP+yAF1afU+5OP
	 MxImuqgEYDw6B8oDbobvONU/Br3hlBIqfjUaEzKnUkg7A8G7BrSGcx2hoS5E+n+kO/
	 hBhZTbhh4Vxp5nGVVvcuv82/Oj+1KYRrejss8nAtQES1lnUWLEON81SlY53BMgDRw+
	 uvCK8i6gaq+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC29CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203859361.13118.2315462894408286523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e7360aaec78075bd190b2be66dfbea23604420ef9e7932d042bf71ee5adc84
Date: Sat, 01 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762038593
