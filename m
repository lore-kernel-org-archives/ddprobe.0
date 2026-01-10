Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DFC23D294
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768048434; cv=none; b=sQy4fVogNvhuGv8FRNLNJiQRgQrxqHSyfC5w1QJ2Pc8aiMIAJ+69gnszS5FcEyXSWi1RHH6SC2YdCnN/20Y4pyzWrAGSHiwxQajL8/KSwVkIazpaKusoULu8fYlo8Ki/W6ozkVTrysZ7FDuDJwwY84+cO4ojoypo2h96L1wVFw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768048434; c=relaxed/simple;
	bh=beG+s4xS5W3q1HXVtMR05jiIKl5oBT/m/rcfj8OzyZA=;
	h=To:Subject:From:Message-Id:Date; b=eL83OpMczOrkwT7w2hMjd4SdwRCjxCZI5YysI48fKY//Br/5eRO9PR7LQyro6991bJGmU1UkXKXc1peTcV+TDTusKV2rRj0HCJYfKeI055aKYULcgFZE1/Rmm7RrQjC1su756hjEdiatn6hSvyZDHhAaeoZfxbqZsLnCHckd65E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2ZfZv0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2ZfZv0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768048433;
	bh=beG+s4xS5W3q1HXVtMR05jiIKl5oBT/m/rcfj8OzyZA=;
	h=To:Subject:From:Date:From;
	b=V2ZfZv0j4P5h/BPo9O/g5cv4ZQq1sE+TIz3Rb8A8Jdc5w6RAjOXq03p39zOeycX2k
	 G2kb6RM9m4bsseDfmESCuVf4CnwoCzewhxuEO9Cg4gwR5rqCTZRhqk7gfLGBZOZx8P
	 giJsthaFy3/w77Jqv+d4iPBNzKZK/q0LixiaiQ2+hi/qFAazf9QsIrdQ0yOoNb/H6N
	 MKiOCmuoCEK7TSNxBdvaM7t23bUH+sIYmes9p+cpyDQxrVEP6XDls53mqZYPWf2Q9T
	 vKXK0Vd1rzP+K+9xZ0e9ZYjsh95hOcJCy2gIoZ6C7dWfvYR84voLHpphYQevM9eDzO
	 4AwdN6ofWZQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ECD277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804843358.25140.8809878753211732197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2483001f9c43299c1d36762c75169eed61c371c248141dbe9fb53afa42d2e6
Date: Sat, 10 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768048433
