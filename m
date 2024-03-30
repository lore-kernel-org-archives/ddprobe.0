Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFC54685
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711776497; cv=none; b=CSXkn2VZpafiOKLN5qKknaaWDLMg9Hyrc6CrTVisi/N3ZdOqLG/REba5tNiIlVgksrLm+XoGE5wLg2VReelBOgYsgAuk86se6+y/sztNQgLk9TjpLdtpeD6rEhLtFCeRYiymg61DSrvfbFl8cacLGXEVC/DK2wKIACWnhQYtkJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711776497; c=relaxed/simple;
	bh=Ilz6f8mM7ojhr4jmdfDXVOfDUKrhqFhAxQY6E5+2O7U=;
	h=To:Subject:From:Message-Id:Date; b=TUfsWXMTD/CWr/twLyd5Xf1gJot1jX8qnwylw8TtgB6gUW8fQpfyA7Yex6vGX2F8g10ImarUJxY97NoOiC3xyZvITymSnzeE/CLmru20llW2DnBHnWkBi0Kb3BK06le91XYKCzLHBWQEtoMUQ62MMQmaaTZsFIWm6C2GeVeW5h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7PCq8ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7PCq8ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0AEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711776496;
	bh=Ilz6f8mM7ojhr4jmdfDXVOfDUKrhqFhAxQY6E5+2O7U=;
	h=To:Subject:From:Date:From;
	b=S7PCq8urMQh/OukeM/TlYuiJtMzyEN5F01PFLc0UxZ0rGl/7HosqUEXsUcbYF5E2n
	 lV24nVP62YBfn4xiIyN24Po4hjxcIKxn8ie9OtfgJF4bEfLcS2+r1l0vJXSq60qpJv
	 Q57TXccLTjPO11Gs5PZ1t+xPV8P32P4SdgbkpxemwqqBaZSf7B4FyJeIjB38W5ueBE
	 9DbPwDwypRGRKTcI4x4YNhX3VEDGcqVSw86DIVxOuSzNMWLAek4ARUmNk857twkhCu
	 wWM97mkeuRgKB6kXZ/DbYf1cS5vOrSPqVJMOO6Aog+6mW6lbCeRUswZa4uxByBlbk0
	 76lq/rF9GbUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65490C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171177649639.12434.1444567644259417382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e0ae46b7a192056e6b70db75987178ad76ab3694c736f65457676797f46f8d
Date: Sat, 30 Mar 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711776496
