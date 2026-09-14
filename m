Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739D847253B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789391434; cv=none; b=fOXiQWUxl9iSod+eP6fQbPHo30UuEMWOAbEsKZhjqtD0g8h6Jxfkv8XprJ8Lskvy1Zgpjjx9qyD8jCBplr7MRWpYIV+9mq22+ZQ/G4lKoTu0cz/7frBvm/+YWX4M3cke0j5MGNrkWWkwstz5sIf6BGqvuqlWcc1YgUObdGtP4BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789391434; c=relaxed/simple;
	bh=69Bk9J1xq88SGS2XEQ4fNwDcVPrYN7KDUeTW3BoJoRY=;
	h=To:Subject:From:Message-Id:Date; b=X9uBGhg+3ubgucacIi1pfDGncGFJIqVUJEZ62Ih2lJ95xvbFi6AFlNR7ZEHlwEfah80wjKDpHbeqHjt5Cc5AtyCkWCTW4LjPb02zkc2nKMKS+TfVKPgPZAlTQTAs5T4bfOkIl4lPSMqau7ke2mOE1euq3rpPkiwZGEZ/Dz8PdUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8T6/hRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8T6/hRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAD1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789391434;
	bh=69Bk9J1xq88SGS2XEQ4fNwDcVPrYN7KDUeTW3BoJoRY=;
	h=To:Subject:From:Date:From;
	b=D8T6/hRXa7GWLLtMOEpX8JXFTWOLwvhCJxPc8y/21GCQRblf7TQD8uv5FWaZHKkzE
	 182yBs355QfDRESsP6wN6cmbs+0zDvKjxcDt1DpvbCrbHuzK5arM02AHAaATOptO5Y
	 MNUttTINsV4WgSRlbY6zDHTLBWk3tNvCik1/ODrAtDJUZpMN7NzP8QR5rVKFYFlqtu
	 D5FwlXPOydI3W2t1SWA/61tO8g+gW3xsBiAdmMvD8EpJm7B/CyvUCNalpSQOQwm3Ga
	 Gw/1DLh/hx+NMTJJZFA84wmqfF0TlK5k5Q6QcMyywTk+JZ6/ifKp0GuiKgzDnCtlw8
	 WbB2da8YOE5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAB7C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939143374.16816.14255813016764902088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc5862aac2386bddff7228c8e3121718d5ef022aba0c555c551fd39d5aa3eec
Date: Mon, 14 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789391433
