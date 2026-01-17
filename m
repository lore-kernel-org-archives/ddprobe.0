Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B610FD
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768640634; cv=none; b=okQQ19pxoPoOwZZ/bZDWFUl0dnlDLF702OXudU5ymcF2/HdOp4a5Yp5/3WED3D3Ac0DjB5rF94z/+sfAe4MezF/PK6ZRzSoMoHT+I/UvoIgbS4mey/bfR58xuEmBv9Wuy7le7fM/iJTPrgeAdeDdg2dmL4XdlrUghc94OULoEK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768640634; c=relaxed/simple;
	bh=9PjLFBFR9PkzwFhwxTPvvb7fwjGSrXQOfnWSlTtj6tM=;
	h=To:Subject:From:Message-Id:Date; b=Y8nMKD8+pSfwrxZBIhHeiUI/lcGCZdTAkXjgt58B2oeETx7Xc4GfDMW4soOrfvnGobN05CeXtEf+rmwK8BcsDRMAnPBal7YIZBUvgNqHDU10khX7EoLO+87BQ01SHyMfm8ZEIuZZBcTFjL2TkoaNGApHyDPX2RqaF1cwx6RH8uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT/afi8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT/afi8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FECC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768640633;
	bh=9PjLFBFR9PkzwFhwxTPvvb7fwjGSrXQOfnWSlTtj6tM=;
	h=To:Subject:From:Date:From;
	b=XT/afi8ImAeNLzlxuJNkG2uasZ+S6BJ2YaEsNo4/CWxLJ1MsDTZ6Fl/TTFIfJu+eb
	 N1Qr2esEpO5M1z/qPA7Kva1aqzsfiDLJ94tJWH2/XnvlSDRQ/rXo5yvuBkZ1JfzyPi
	 04wUteK/PmedMKLznV8qt9cH5Xe6SeoRci3pEBBovluW+fND/EzIT4AXWfc57r0eZs
	 S87+T6YEYRxvOMAQr+aYO0WtR/ClPr7QZZR6iGdi7iKBwA0zTR/j4NlMD7WmuxRx4Z
	 AezaTcuV87VrD/cDpAW20QgeiEpZVwEf4/we+E9pv5iHjv+rw+HcctuXTdZVOw/qY8
	 42Xb6y7n96cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960FAC98317
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864063358.12363.7581271983480591574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1399d174cdb8ab4246de4225bf6332c5e8b925e1fd2c11ba16acef59c67b164b
Date: Sat, 17 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768640633
