Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FE719B3EE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748069394; cv=none; b=hgjuDxIGzsx1bVYtphHChQkTXv8r01IATpn51wNH0neq+yHmyYN0PIVI95aYuap7VraU43z1vzaWqSFD5IKlDbfDSVZzUWMI+CsAmMIRc9ljJ+cl5laAUHlrcysUv9DQw3R932r8SjB+piafivcjlEriUeqf/f/oEmsszRNZ/oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748069394; c=relaxed/simple;
	bh=l17GtFHtwYQNYjMbyqcSaWkz42y6XtSQ5j1K7s5ItPw=;
	h=To:Subject:From:Message-Id:Date; b=Dnqa2nKT31bIV9Eagoj/fnj+9XoyrRvMl6WdACLLqLQa25HkXpNCLxoGTnhbMPbIiDVZlx+qsNgaxnSYzfTF7BDJ1q1++vWCxW8W7UHwCDW8UB9YG0/WqrNzRcHHw2g9cm+wlsuU7sMZeAzN59qs3bOrF/zA4H3GD4IedH05BRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA9eeg8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA9eeg8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748069393;
	bh=l17GtFHtwYQNYjMbyqcSaWkz42y6XtSQ5j1K7s5ItPw=;
	h=To:Subject:From:Date:From;
	b=VA9eeg8sBzejLoIgA39Y5xXKuDlJjfe6FKo2p/XM9r9/BcQ6kZMO0DiI8zgroxZRj
	 qUKPlbsqu9Tui5yp/ZyOs8Ji8JUNfNSknpHyAf9yImZ/2KKmv0kFygn2jFwivPgCoR
	 /ibOxa4W37pKWa9QCE7jZnFcEEHe6KBQ6fuVvsoNdhoVtDP9P1DytQR/qaKyXlhnA/
	 5uT9/N6tOKG5gIzvg6wNz2LWglJ1MvYu2939jha56clPYCrfXRk0HMd1J7r24nbtdk
	 mH9qlZg/7NZeNgaL9hCCqpOjKbZllMU5VYHMccSfxJsdLVAlg4AjU36PUjN8TJlOQh
	 0orv8hKoXo8pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF32C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806939357.23069.14199702489722183872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ea8d7307e5c1a0b975c097bae76380447ca67512c33cb9f4e705d6acf848b5
Date: Sat, 24 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748069393
