Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005074A23
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768004034; cv=none; b=DcEE8PoNsBEkhW4DEqv5pYLu+Ukiq9BjNEza/FnE2EhkWEoqtzJTiqjvSw8w4xKYd/Yum9SHQLQnTlAKixzob5kpKUmB7SVrC0l3A0JRY9f+UXicuuOVH1tG2UqCUeW9TmClajfLUTyVlZ4btyMnGdHmtm38QVUt8OCofDeSj44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768004034; c=relaxed/simple;
	bh=YvZ3ZcmAHOExAul+3tQPbH02njs23TvLpdl0V5vZm2E=;
	h=To:Subject:From:Message-Id:Date; b=ckgO2wUrDVprafHhNoZjm44licLMzO+B0ShmtqBs5uRWc6arIoPkwioCW14VLIdz7t6PafQse/1XojdVXN3QkI6ko4Qu2TBL3WZHUsvDKYUPk2dQWXiwpbt37xAnHfWzZOVEmtsF6VrflzwB+WB+DseTgqpXcOuBa1+3AAv9rJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfhj+Vzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfhj+Vzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D615C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768004033;
	bh=YvZ3ZcmAHOExAul+3tQPbH02njs23TvLpdl0V5vZm2E=;
	h=To:Subject:From:Date:From;
	b=Rfhj+Vzlxe2a/etrmoUHkHVgy0IUUzt6sj0I3AY/xIPdNk/bOLTPdkkXUFcFZF9cq
	 4bLCSvE/nhaqoQ/kDB2SN9OS2L1quEVgw8KUo17xMvfUV5CxLoMuzahA/iffixkb4C
	 v36ysYJNzrT7QQWN3hkFYLFy3PBVhWymdzGh7Pr2sZPF3uKrVPRj6egV4r1MvZz4Vv
	 6j6CrP+Z7asX9WDAlDPJ2ajO5CmQrIQ5eK0P6EieRFMc14Lu3Y5UxN0h7rkeFi8J1x
	 HLRpY57XouypXfAixYzYAi7YnDAIxCzt+Qk+K8XqhKzf+cMg6V6gRDGKrj2Gze2+0Z
	 twn+0bs2vsLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F390D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800403357.23419.12385843733509380130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647ad6f20ac160659cb447aea1248f5beb7b8e4b459490c6e5388499d3dba97
Date: Sat, 10 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768004033
