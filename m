Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0EA37E308
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769005434; cv=none; b=jofHig6V51WLuzHJWMyI2FtCfXXS2V79tuGj3qfeolYYOqKJSAwSJfO0QdHQt896yWQXnFf+W3LX8F3DxSM8kt851DzAkZhNRkFPLJUP2ifOiI3NdZ9q+xLQWRNEDQVh9pIfTIHJXe/uwVilrbbKLyp2Ocar5uKVvUqA+W6Shok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769005434; c=relaxed/simple;
	bh=FT5nn7ChUYse1uzyag+dTXM7l4ame1BpFax8W1hrAkc=;
	h=To:Subject:From:Message-Id:Date; b=ZQdYlazQU+zPoFpjsgtUdmwkAeECKe1vmodd2gsUyeuVIOIxM4tG27posf24DjoPWOPXWlnZdUupHhXCLFW8Zi1VlQN0jVqlIzZNAchP20V/WaCYySVFnY006uI3ldTdpipoxftJk12awzLL4FNrKH6/0XLeq3gXgRimVE7aLo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2vPqZpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2vPqZpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4866C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769005433;
	bh=FT5nn7ChUYse1uzyag+dTXM7l4ame1BpFax8W1hrAkc=;
	h=To:Subject:From:Date:From;
	b=i2vPqZpd63cbvE60FMwfd5jAbwiLyuPrk2Ou4EfZ9S6DKS7YF/NjTkJbhn2LuliR1
	 lKoeJTwT3ebCYGBqNrcc7VVPa3/aA2D3p31nOf+RnhcxC7LqG/RFjBLuT6J4kbX6Tg
	 5StIA+om1WFsLbIc99zYpstshV1ddGRurAvwbQCJQNSy0ehDlj8BrP0TV0ofH/fdbI
	 NqggYF3grvIlJjw2cthYo3CnotjqTUFH5N7J0JWBVSWydV/Smb4BwQPA760ldxsUaW
	 bOjpIHwLn31YGzXpFl4JgzrWj+XKIAX6/aXsCLsyme9CgPRACO+I662ui6Nmu9/PMC
	 iVrfuXE1l8wBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E13C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900543359.26607.11718741488192069630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d74c631d9365c5d0b59f92077d5c00c0cd8925af1c7eaaa7217a2f204676dc
Date: Wed, 21 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769005433
