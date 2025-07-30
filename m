Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19D1E7C18
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753898994; cv=none; b=iCFe0R81bXjhIwutDbZkwbwBYIwKgL70IZsOmJmrZpYR3FLDDUFJZOYq4wjxbCe3zzWp2xFo13ftb1HpC+IgbETH16OVLDTpeBgaU2Z8ph+cNEUYxiHyhEE/WmvBDr1saQpcbJMJ8C4/hun93WAH/CYpU7oyO/0xfwv1PLLtWVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753898994; c=relaxed/simple;
	bh=4BJxmHPVAPTwlRh76ETt+Yf9Lrn83CBCtHn9WJuUmYY=;
	h=To:Subject:From:Message-Id:Date; b=hOTrrn317JFBs7xsvI1q0rtIEF8xgyI/K79Y1/EkssG19TOPlAw75WZmDpZxr2ExGIG2aKzo2Bc/tJEhm/MPaPRvgptH4f41UfcipFKLsSNE+VCM0EmpGgOfsPkhtDvyaArzJGR/haTaM1DQcmR3ZHcLEkbnVZMS8aCanmrXFqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLyY48su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLyY48su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753898993;
	bh=4BJxmHPVAPTwlRh76ETt+Yf9Lrn83CBCtHn9WJuUmYY=;
	h=To:Subject:From:Date:From;
	b=MLyY48suPzE4xgq+xENke8y6GC0yTGRM4WmXThxZp5WMia0RjiOfsgwa4jYqspfsl
	 xKPguziKx79wjsQbIrDyhH+Z/NWX6OoFYFwvz1EPB35ZWMCPHjH1UwZ4AT+taGbG5v
	 gn8mTRrIPs5ouAFPH5tEZtqK7GvnnwUP7TvTzXwP4IYwzHCQCd+uTqueuzfqFN7OJS
	 +Ams3fRJV3ueUxhlW7g0+sD8XLT1LCyhuudaQ16+kAW2Jtpq0XESaB0/+6U/RaFzc/
	 12eNoY1SF+vlf/tbARf1y7URMyv5QeOsTTOf4FfrfHEnTUkri8b5L34F9txwyOwtaE
	 vaxCDrUSj1FJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EDC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389899358.18363.6032949666875215767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81520e7b0dee15bf60aa26449ec0e2840613fabaa27eeadb008edb152a035085
Date: Wed, 30 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753898993
