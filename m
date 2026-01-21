Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC24611E5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769009634; cv=none; b=ODkeRGJgzEUiU79jtTzkE04Nh31I3avr688qZ7ZGcULnyemhIysDcPME16XifFAVQeTaZfK0ogBL63Kd/HF//IKSKNVuhHEZrBqMfgMJDKL/0fK0I8YWhe1e8ALZtcXiYli3KZz6muGIhQKTB5stPTz6HNWyz0Gmoj605E1X3lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769009634; c=relaxed/simple;
	bh=jsDZ9I7gSQfgr+TN9KXi1Wyg8bqUN44AiXtgDhZSMag=;
	h=To:Subject:From:Message-Id:Date; b=JlAJLD1WJZLwRng4oJd2tmBM+NOsrBUhQhf8W+uTlecoXDo6B8HFbqBDUPFEMQ7WeQvXJhDsjMqhLkhU/gWG0kgHpKaLyyxWMWzDkollP8rddo8iZmKGDNMoFEVfJttCQk8CO8FFS045UWKZD586QYXrzhNATcWe9BA301kUvKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0CrUrYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0CrUrYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769009633;
	bh=jsDZ9I7gSQfgr+TN9KXi1Wyg8bqUN44AiXtgDhZSMag=;
	h=To:Subject:From:Date:From;
	b=s0CrUrYzUMzta+YEhpHbRGQV9cS2US+ynRwmLqOe8q/VHpGB0dL65hy6U8/7ilcyB
	 8Cn9rFuzbWRhYRXo9r8ejHlHW/VbExEixt8YJlcgjzkFMwNOpBdrSD0x3rR5GxvIXC
	 kkA9otFPcNERmV4HuTEHyzVc/8/b2MuNJhEDsFkXIsMVvY2yKdzFkPxkn6D6OaAoVp
	 oaI8+1unY7WiBA5/8rJEBN17p40zmj8xuqvDG1eJ4izO+vtc48jIneW74WeCZ5QU1g
	 98RYiRy26hjdZMyHfddSc3uivi53mVRV9Z/6pv4pVEcMWCkAgBNAXc/Y6r2i0D0BhB
	 Xu3WlsdX62BtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99434D4694C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900963358.8311.10446259433086299549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7eb11a9412ecf13e3cfb490e29d4a41963454fb676dea9031c48324f58d0d5
Date: Wed, 21 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769009633
