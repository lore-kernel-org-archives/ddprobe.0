Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0B26FA60
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761079794; cv=none; b=FUkJKo5nflfm93gMvm8qW36XxPmOmzR7ZBmoqSqzKFuihX61DpSWgn/MizQxwSCMM9uTM3fQDr7SnAC7TzYQ4ABj+epX02vL79KSI3fEa99qS8sTe8QAYBH41oXn7w4RvUeFSjWPMGawrOF0tLNrvHj5XGJYvySUatajyW0TzHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761079794; c=relaxed/simple;
	bh=K4efYiAVCsR0/+rX+jOT7bwntfeHIDjXCKRYEDpsWpM=;
	h=To:Subject:From:Message-Id:Date; b=b0GCllnyCJy2V1Hm1w4FLMMhLkc0klhl8lMPkDqkdq5cbM6HvKa/1yYjNHV+V/K31Qh+ovxvA5oiBs+4OoeA9jYRxHpefsCBd7zXeQJlvtHJ6QadG0Pg3GW08OuoCSk5uPixTItNyBIp+yFKjSOxt1wCcQUoZufgg3qs+VQ6bFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8ooVtzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8ooVtzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4BEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761079793;
	bh=K4efYiAVCsR0/+rX+jOT7bwntfeHIDjXCKRYEDpsWpM=;
	h=To:Subject:From:Date:From;
	b=u8ooVtzmZlmXPSffNVMSztaXTesXaKlPdgLpILl0NvcHyTKUent910vcIw7NrdQU6
	 bVf07Ig/syL5+uisP8zv6SaFR4RbODssq6g4NZ4vkzLyivGb4WcIYDbYF/hEHYvcar
	 5KxRbaLgHC0u2+BImSWj6XMobAsIUi/Q7+E+fJBmk6hEqeVJvfj2cYy6djniPgUdha
	 QvYfzm+kv1dGYiV1c1lLCloTIzXTDSpbcWVePSBXEMXalGqqSOuDa0I3O/gI/QpqBS
	 3eV9LZtaHBsoGXMMsZIsYwiCRBb7nHB23cKuh0Hwn/NjJFVnLfLRwrj71qtcTslPbj
	 tGTHhQK3VMmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE4CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107979360.3838.3900700125353165726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185b889f005f5bd0f6a7940cd8b651f04cb9644009cedf5da1c2c8a5a94769e3
Date: Tue, 21 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761079793
