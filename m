Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F609381C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727504754; cv=none; b=SxQCbStXGpljLbnrG13n9StX0XakTvesNH6aTgoOQP32ne+tU7bWYYNQNIIcJwjtlYNkRJYfTAOPkoZRQgudA3QrTmzMxRiYh1A1SuuPKhrLLQRG9ntkOYgFBc2BymZTh9izGNEzHbbEVm/r/+AarZErHtf+39iK2pjBVzIlYPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727504754; c=relaxed/simple;
	bh=ORo7GUG/gdH1tWhGGK7siI3XC/HRuNJSSAh5FQJ6F/g=;
	h=To:Subject:From:Message-Id:Date; b=i15AIHHj1ZTTkY+L/Y8Nw1hYH2vi4PybRh61E0QPHn5yBwFkf/prQRJqF3nIUvWLYHlN3I5alahO6b1v98ALnvGozTy0XnK9bWrpYYXMANAqQpHCxbe4O52RPB2L5rLREXimvkMAxs3YTOl7bpxrbI043pkdwi9QRaLt6yyWC6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWwMiW0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWwMiW0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B157FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727504753;
	bh=ORo7GUG/gdH1tWhGGK7siI3XC/HRuNJSSAh5FQJ6F/g=;
	h=To:Subject:From:Date:From;
	b=FWwMiW0SHrePHnhYcB0z5bn7mJ2l0ulpwt2+LtN0HleYisryLaHCDzD4Q6tM3bNqO
	 djDA8X7T1I6buniFvf8C7/zY3p3efU6dVuJJ4+U+3Bboe7v9f4jJg9rfNR8e7d0Yph
	 MuL+7eZGawxN1PNL/SH15rf7hfsQHkwuMHi7kcuyZhFhpTM+Xhm31tA5Bwh2xzNDlL
	 ErXYHu1cukEAQKaVqzIImcTS2tBVix30gHsTerBEVmgfrXnep1GNmdbMwlYh4sxihy
	 +r3w91QOyApUJDaihAdAhHWq3yS1wJcNDeF9j7ALqKTr3vhowiZwhzfUhQJWGpN69Y
	 7G6TsTKzAUv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7FDCF649A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750475359.21335.3491082825504153544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b31606fdff6a20c68837476becb0ab2f699521c799f51e4e4f97c16e2de31c
Date: Sat, 28 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727504753
