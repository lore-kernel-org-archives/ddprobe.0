Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B42580D1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768170834; cv=none; b=fNISmyZSShTEDenLXUoT3ffF+APSPzOTOrti0Nz4tguqQZCaFTVk9VSPtqxblJ9n1mZ37kGenmr6X6yilxfehaMzxthEos4lY7aj3GasNP+/ii4nkZxYAWDY9jy86gEY5/wZh+0T4x0NQ4jdJ3xILiye2c+kq9ej31CSTFefO5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768170834; c=relaxed/simple;
	bh=Q3Oz4j2xJqRyuvKCL6s/vBnUpmLhWUCV67plJ2TY6Ak=;
	h=To:Subject:From:Message-Id:Date; b=q+K1cV8XHZL/GxQP+2aDXw9PfI35DfyMGHV6m0asMcRmUkxtIRqNSdd8zaAaWXn1JoDycxFjPBbgtk1nZjNmOLrrwTAwDjHeqF8e3TOk7X38DMazNt0dPhdecmVHNjAyCvqPhHfInm6VQnSaFrfYe/T9uGgxGBJn05ZmGvOV7k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ulbxi5XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ulbxi5XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768170833;
	bh=Q3Oz4j2xJqRyuvKCL6s/vBnUpmLhWUCV67plJ2TY6Ak=;
	h=To:Subject:From:Date:From;
	b=Ulbxi5XV6LWJQ3j92qP2vS1/HzXcZUkeDJL26HvFdCO531GA48RTkYEqyLDSaBqEk
	 f8yo7QdbQ1yBbCykVFPYmyLpHC+V61FoWLqjiOlX16PLmPS3goEQxKJYWk6dna8daN
	 MgYh/GepNn8l5mTOtm+OvxUcN7IUzX0A/EJRDqGiYrtpGHeeXYWVjS+Hz0ZRqL2A5E
	 Dk1mbvm3WPviVkePQqGEguIyN8bB1y88e2RNsV9P8lyXq++Zh4rb2ob4LsRCOp0TA3
	 4I9jqULyqJGDUIFDM2fkQudllE5i6n/zEn6MHezeu1/hiG7A+iRM7yVzBvknHhP8Ws
	 FGbpZGnZ1sEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90276D25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817083358.17760.11445414548356854125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72631b35616971c828da21a5cc93a73b079b0956419c1fdcada1dfd49a46dc0
Date: Sun, 11 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768170833
