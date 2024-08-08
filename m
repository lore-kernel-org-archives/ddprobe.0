Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27734635
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723092954; cv=none; b=b7rJlwhdPDUdHr60/SH1AaVhmQ+xYoNCbnt/qvog4If7ety1L82uFyTkuMIUlFhxWcH6NKhX7X11d39cichTQQhXX0Edyl4G9idUNxsUGGvqu9hIOe+GSnkAZrcReT/8pZefdX5Z8VRB9OB58DskI6jR+ifoiE6GNXamDmdJxEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723092954; c=relaxed/simple;
	bh=MV+X+zuhBFj/40z08dHe/8Gv6lUHVXz5ts3ULs7tl40=;
	h=To:Subject:From:Message-Id:Date; b=XUQTl/Vv1/zDmpGGROGuC3IY4AfNqDEgQL+aL6yjIYhZHGCEHaMQDN+iLMXsGmSR/t1xhrzkpsOnvIuT7UwpuXixbSRwLh3aLydv103gFKqeCq3I6yoJ0Sa48r+t9bXgVctTiR7NPxKb7q0sS6/K3WRdweXdsOLA9y7Er1OPBbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbCfXKuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbCfXKuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA455C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723092953;
	bh=MV+X+zuhBFj/40z08dHe/8Gv6lUHVXz5ts3ULs7tl40=;
	h=To:Subject:From:Date:From;
	b=QbCfXKuU15oH8n6xiCx2YOdI27J83hf8K6RkKhbpiZFva992ezYYJtKMpMUJ7x0Tg
	 xgLLVg0FdMfbt9omybInHDo8ImsMbPh0s+C4IObV9qRMlfRjF+A/LMx7aDupnJOS4g
	 5cd6BtUjtVm2IJoR7GQzeJLn3uFG4ghxDJu+PqOvIxoFmjlgRbuNrw5e/B10fL1Dmm
	 TKso1PAQNUtLz0xwi/TfzSnhK4l2GPxx5MJmeWQgHh9/b/po/wX+ELhTyqQKyodGXP
	 +gI2utHm5uqmt1hFYr74Mf3MGUIrW+1D5TgLTBxF0LlTzoZGNI7V484/37CUhFDB1b
	 g0XK4S1WRgoBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94765C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309295360.15348.7233285731541951549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c70ba5b3251d8127539e127ff6126f9554267acb521f61401c9240e857a327
Date: Thu, 08 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723092953
