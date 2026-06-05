Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355DE33EB06
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780632874; cv=none; b=VNR4PQeBYAmwjXOgQGDp/uRUJfhY7gsnV7sfRdTW5Oh7za5SCSFBwTlTH+2C1HwYqUOpLYQGro2/uJp7Hpoa2XN91lxMStmaj7ypKK9gEhrvrELWf1cw19HgoNqOXqznjrGVa8/EITRrsQBRIBbQq+2Hetk8xvfXYMpIXW7/K3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780632874; c=relaxed/simple;
	bh=Eq6EESmgVB/80vCXxL9qabd32cEKA56J34/seFEcXqM=;
	h=To:Subject:From:Message-Id:Date; b=cYIvZ6pveD0BmyamMegMAAQD7RxLmnElO3a/MaP4vHCohA224OZBc7TDTbIkDNFrQXx7pMo6kp887bIGgg+LQbe2RWXid30cPeFzzGxtd+j2M7q6/NzdFlenCjEjM4gPonRAXq+qHF0YrpTJ9QTZGuxIgIcVaP2WG6gb/9Rdv0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtQ+21xO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtQ+21xO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C9FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780632873;
	bh=Eq6EESmgVB/80vCXxL9qabd32cEKA56J34/seFEcXqM=;
	h=To:Subject:From:Date:From;
	b=dtQ+21xOtVpG8hdmdqLFWbBxAOr2KIU1m53TxslD5QJsgiNITADAbEZOeVGjQoiAF
	 cBRBGxyKr9/lodtkElrDD3TWKRtAHcmVOxNqduozzVP8kgBWGehmgEkeynmiAF/yFC
	 AdS7yDkMUrexSZhwddYFRLsAXoZgvEMV63M5dJTWq1pFpkDtwbnyxmwpOXmvCExT2K
	 DNuFAwCvZ7nYKHp31dYIJTgRugpcfg+hOxTPrWM3U7+AXOW3gPstKujaokAt+oiyp5
	 fuDgNKoCJQO20rH/ctaYTOZngoHCpgshC3UIAKh08NnF075HBMluTQ0GvAJ8w0UeSX
	 Br8/iV+6noGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B22CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063287368.21429.5454829077732768737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42846756565d1fbb3d2e2e4aae4bb5d6d4e49f40aac695da6320e4a19419ce5
Date: Fri, 05 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780632873
