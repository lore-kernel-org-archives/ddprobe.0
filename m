Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550F33B14D3
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788103234; cv=none; b=ojX//QS/SYK+8VSXrMn0Elz+v7lUfXPBrGJ852uCmxk5vNJQIFvBfGILFT5xvdN+ul5IuJ79shW4P0+r8W13WNUYDe0De/m66/NRu7BIN6Psd/CMQ6AEwIFRUqD8C4EoPODb0OCZbcV4Wmog9ITTI+Nm8GnhM1ySGcOlVx2mKgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788103234; c=relaxed/simple;
	bh=VfgCjY1GoIbxHAmLf+4/7s+pjGesxpWoPOSljZ01yPg=;
	h=To:Subject:From:Message-Id:Date; b=uJFX54HsMs6p4I7OifFbY9taDNXvBER/55C3Dljhk8VBJvX+3rkL3ignitoLuhQFzzFPfYpd1bvdWC96oFWxEKH4tMJE9fXBNvkXopjmMXPgXfqsDovussVEdxoIA8UX2E33rjChf2bcNOhDrxEHAnJ1oDd3YgmZDM6KqJNgL4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKhju8v5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKhju8v5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13BCC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788103233;
	bh=VfgCjY1GoIbxHAmLf+4/7s+pjGesxpWoPOSljZ01yPg=;
	h=To:Subject:From:Date:From;
	b=vKhju8v5D3sxtlH+FFO94veDH+vD7UqtcyEXdkFETpCXzBuxhZPdSBrKvsGDCdJth
	 UIl2aT0BWJY8RhcLa3GT+FjSCdtOsrs36B9dvV8tQhFIlOhwI/vcKCVZZLmBK09Wq6
	 d5My7qgKtLsDTQD0P7sSzl0jbHT8QL1XZpckLwmSbY4XP0F4j3UW+qGhHCz0MVxtWh
	 jQDEf/vHjHUu6ZIYNuFpXWKQbsH0T3PqRs7w75wJGX0k8yr6f0eQyl71nEtH6a328J
	 lO9SG8XUVuOs57AVkxUBprFgDrxk3iYlAvBzNBc/6ozmPsW/6RfZxOZwY+G6cp4y+q
	 6N6b/fytKVNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D5C61DE4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810323369.18930.7997450870188800992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dc9b209a8519997006571c725b8e1cd2c8d2dfb7684a1aa033f6b3eb36f87e
Date: Sun, 30 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788103233
