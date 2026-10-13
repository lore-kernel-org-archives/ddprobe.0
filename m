Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355CC5187D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791908434; cv=none; b=qg9+9/t/PPPCMmlzzkB7lhVzTHHO9r1NMf8ookHCe21y1ujC4q2q+FMLwFl6bRg/QaIiKArSuDwvWd5ljWHPF78dpsDj5aeCbTfxWty39olK7+HoTVzj9N6oU3x5BAiXhXru2Z+zeNBoVhleDlducLmRfAIzFb4IMBTr541sZ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791908434; c=relaxed/simple;
	bh=rraMQotaKgzwInT2NXe09Yj0ryS4yZTzKxbkhsthwOo=;
	h=To:Subject:From:Message-Id:Date; b=bz1J5pFjQbbdBONXDrbAzMRUWEblQFFazLb8QeIlawfSWUBUsIXURT8YtJWJBD4FutbLDw3c0bZvY+XILgUEiCQ53roAGk18PpkyWsQiRo6Ll/PDlDZKwKgwNXUxmP/bsLCbPeXx4HVt2Ay1dOXATjbTtGjWqggvACtk612x7PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQxP82sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQxP82sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F09C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791908433;
	bh=rraMQotaKgzwInT2NXe09Yj0ryS4yZTzKxbkhsthwOo=;
	h=To:Subject:From:Date:From;
	b=oQxP82slgTjz0CfK3gJb0U+sFdKPIWSPGrZDle4zchViVPBuEHYwtmQvdKg/cROIU
	 P0embBbTMNAFm6sBKT768vJyi42vtaCway3ac6/Vmvb4ITE89lBpKd8Z7EaMy2Z9EP
	 QyjC7aW/3zP9Q+0zfFssgbrefCPaHxOXyIqTbWHmIUKXIB4Sbz7xGnmQKDGbUtzd6p
	 z4s4W3048XRFBsbSeggpa9nwdwWlcggfGyvWMP3VdvbV3KbXoj/RJm0PMvmpTnxBv+
	 JRkVkpRHV0FBUGxJqhp6Q+uqMHpIaB+X5GnXQ/KNtcu9O7KpbGs3fRYrWWyfU61GDJ
	 w5h/+kj/JeOQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B70CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190843371.19958.15104647169978759653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97534bd8b7be5cbb9cddc16c50ea406a6856dade319b08bc24e0970955f1edb6
Date: Tue, 13 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791908433
