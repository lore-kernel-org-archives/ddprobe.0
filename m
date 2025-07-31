Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2BE1D52B
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754005196; cv=none; b=GFH/J3v3xuU1Y3e30RydwUhI7QYiEZ9hbyrcYlmgYx9AkFPLKxY60FbC/hMpmXvLH/pVJgGjCNE91vDD/j18u9SOkgDhLuerpZb2Y+b33zQDFw0t30oEc8eHdNjnAKsMDL6VWwmcVLF+KtRE/nsvvrGEKWvz0/8GHVYwVti9sUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754005196; c=relaxed/simple;
	bh=+P5/OS9KYyD8pe2yN0zq0KZ2wtAxeF3IJYEAlLPVaCc=;
	h=To:Subject:From:Message-Id:Date; b=TlShRrfNoxoCVm8IuU5d9T7TAHsDk75YNvAh9KlTYljnE7DzVMHOCnYk22XazcO5yShTOpCFtF3jW/V48KXxnnFoDlgLjuWUkzwrvVh2/POepcoYFqf6YnQai3PxVKczbjSTU6dpckTaEbyTutiMxhcvucaCex9vDFKRmtgpryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WttQHKeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WttQHKeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FCC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754005193;
	bh=+P5/OS9KYyD8pe2yN0zq0KZ2wtAxeF3IJYEAlLPVaCc=;
	h=To:Subject:From:Date:From;
	b=WttQHKeRGcA00joslKIGauVHEGdttLmF9XyCyhAuK/ouYaI5rNxJYeShZm8dP5Oio
	 pcW5JQai7Q7Mi7HASe4STbEmE3uoXmRg3aWPiO8PC2jP8VDwO7ClZx5ZHrhlnC6Pmp
	 Ht3CKwcEk1YXOvexZhHbcrQiVZB8P+RcXbN5NVsa3yawJ4l/VQyHmQmSeOP4G4tjPg
	 CW7PIZJS8QtPpk/d5OAsztrzA8g4a+sZA+NIFWXwnJI9dQWMcq1v4HziX6J9TeYHOH
	 Jod3Vvkhfee8CGKqGY3IY2c42NM6MgtWKNV8aoG5t+KJAuY0VX9f2tYnaTSDlAiLGS
	 96m8Ttj7ovfTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E33C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400519358.30574.11397070412883307272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba51139445a7cf13df85f8361d4e417944a414b5b15a5fe791cb6e881e943306
Date: Thu, 31 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754005193
