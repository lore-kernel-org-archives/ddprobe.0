Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9632F7463
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760114394; cv=none; b=Za9XYHHJhcx9OwoPQxSEx/H5OsLDt2eR6yadGQlKCEVXo11LgwGgZc2z8f3iJ2XkJAkdvGnYm018DuKt/mG2Njf/pyWwLTCO82gmFN3c3V6zrEIIAQrg3nDWfouyErisqAk4CwrG+lXoqJAsRtMY4BlVqjELk/RoWWyeNMvSJy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760114394; c=relaxed/simple;
	bh=6vtPAm6yw81nslEedjesIGBoy30aukTYO7rBhjb6u0Y=;
	h=To:Subject:From:Message-Id:Date; b=kNka4b65XTtX+xhRWNnLOHHPNETFlPDYf/E/DylB8nkUZsDQJUldnrNi0oWQNFyAM6WsFXsNu+4LP76zhpNWTfYxEkT9hNpArrH+HQZOsDN7nIM+7MuxnKogLtCR4RxVs4wFVssKbGpsruvIIyyNC6Qi2FO50w6gbIF0qbytkOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWoy/MC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWoy/MC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F59C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760114393;
	bh=6vtPAm6yw81nslEedjesIGBoy30aukTYO7rBhjb6u0Y=;
	h=To:Subject:From:Date:From;
	b=uWoy/MC64qOKSmJwXUYw4/ovWc8VJU7B+8LBtYbn8SlfSLXgGW4rdAX0J1056xvFc
	 LtZyZQVzrDk1USle5sHQPUbAbOTj1xqpSxsCgzDzXdbbF5YtwzIyYuPtE+ZSqqcVwW
	 DEzinO0Lts38zfMK/rNXF9b3XVIKeDP8IN4MFPTG8nTxe8GaO6McRS+bGoqrQpr3W5
	 6vh3V/qdenfwyd3+vTptwMuT5irT2xBz1Uj6O41dCidZ1qbaOBTQh3i7+JlAkHbt/0
	 dZV8wLvCblpN37EL6BW1pgRHHgeKtYAytPehDNHNEWncoASAJ6vRzP0kuAl/KDLHow
	 eLXiyXiUJaw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90099CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011439358.10925.12406422879503768557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7987cd64a2edf5ebd2fd8640fe02eb767d832e01a92b4fff9e972734798428
Date: Fri, 10 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760114393
