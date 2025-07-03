Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2862DE701
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751579394; cv=none; b=nU9ILY31gPtCJo37PUTcDEcnMBYQxXmAh50CO9V461LmEJ86yUgBnU1aefipP+rVb6cWpA/XvbmZYh+RlajEE5BMtUBg4peqjRybrb3q49c3efs5dz4oN3yIEpLlwbtRt1aS7emgTHnUghLJbR371pwWrS3fVWFB+bjMiAw/7wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751579394; c=relaxed/simple;
	bh=Yo9r3kgLuv4lIOUs/c6Dl4yFCijJHhzcFKEqgti5cnc=;
	h=To:Subject:From:Message-Id:Date; b=BG+guOYQkkTBNnvFP5dc5R8nUINfIQEYH+KJHVJROt8pf6VtzMfiacLopcde3EaAf4UfaJ7Cb6cW8bicfI+hiJ25a3Y1y4BOIivGR2NbLcTPHdX8aUWPba731lsSR/uw+CC4UML/PI3K80eBXFKjS6TSn1atT+qF8h23SvjsDAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbGhhbQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbGhhbQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ADCC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751579393;
	bh=Yo9r3kgLuv4lIOUs/c6Dl4yFCijJHhzcFKEqgti5cnc=;
	h=To:Subject:From:Date:From;
	b=rbGhhbQ44BUciBjOEJalH3PA+Ao9iFJ7sjkF8x3/9tEw+p4CfuSInsRRmZ0b8c1ip
	 NMkIxds/h+lOYR/wX8oVVnhNEAz7stooc79n36px5o/PclDhBQREwHr37NRV0w52xN
	 I/Xm1FQ7NQHPsmsRBrnfZbgDu0XULJgTbIdiuM97RMmY4qwkg+Qwb0Cyl6PQ1jPgQ9
	 niZPzu8GLtLtZudqAj4qkrPNzrXPi6tCp3vY9s/LEfcQbCD3uc/8p5dyL8PKeLkcEn
	 q/+wVm3BmOEc9wEy1HrKi5kLtCPr1mjfO2rUPDkt/27/M4huP74fAo6zYDLzHwb0ow
	 11iz3r33ZhU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DEC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157939357.24486.11458659730731114233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3757aa5ab0d96ca5e2bddf482235448d7f2a0f3ae9ca19bdeaba69b9a526f0a3
Date: Thu, 03 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751579393
