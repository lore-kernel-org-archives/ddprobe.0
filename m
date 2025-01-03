Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381431A8F9A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735919754; cv=none; b=ZN9OnwGSFLgQe1/FOqoME81c6Jg5y8QMi9vSV96gZjO9R9nt0aPmfU/Kg3td1mFPUNp3MB7VIajvRr5PhYpKRtF5haVbQxUKYHsgDPIenqNuhLsQi0YC8497bWqLAfgl0f5cv+HUBvsOdOrtW4PugWU7mJZKTS2SAzI0O9dOMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735919754; c=relaxed/simple;
	bh=2QqeIpCIgjMZT03pmDaWK5PXylrnOhMdzHFUdfpJjBc=;
	h=To:Subject:From:Message-Id:Date; b=bI683wFXCkyoTnjMUEM7UY8gn/+Y3iSXgRClsmLNxIiUpEXpF9FiN3tc9UiP4LFbPo8b0YW97+S5b+OCAsFCyyFDgUChwgs8C7hAjV/QrE9fbMutAEXfDzHKs6lAOltd2M5HVTWs5LcE+gkxAJGof4hxRhW4LptGo+iOkpM6dQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7Z2zsIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7Z2zsIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C5C4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735919753;
	bh=2QqeIpCIgjMZT03pmDaWK5PXylrnOhMdzHFUdfpJjBc=;
	h=To:Subject:From:Date:From;
	b=M7Z2zsIAO6IHJhwtJtt0Fnb4MioLfaXnV3QwqgEWQxhyzxanm+jTm0Yibxbz7+iu+
	 CCJ/qDlkUD2ea/v3VY3rZgYsnIH7iWoNsi50ybINL0XEBNf2aeh40nonJY0YeD/ZVk
	 u8u0+3tITKENfblphFD8vbko2JFwUdm3gWCOesC7Umo0Q60mupiOuc6hisX2LpcvSE
	 HTQykqcPzOuTjmUHxyGaI0berMz98DaXPnkZLwK4dzyRv4ZqfXpJ8w4oY29tor786E
	 pQ5/WezM2gHSpokHiqqcLxzReyiiAuJXfJ/8N6uLLxRrnCcAM5nSfTC2WKBIdsMhQ9
	 I14Q4zRa6KACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D0E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591975358.2002.17110512089465812343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e666291fab2d361ad909368cdcba3fe9b11e788557cf232768264753dfe7ca6
Date: Fri, 03 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735919753
