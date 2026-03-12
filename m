Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0734E387344
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290694; cv=none; b=OjA4cegAIK63QbEozpNDZ3A6o53xbwlxgv8DBZcLaI5DJqOn/wTYX7Cg6uWeczeg9hlWM07cGytJ6i1HtJ7FlMkAVwn/FKWlIsHBCqTzRwd/2hCqJXVCaDkM/jy7kHamoCFsbSR674Qbb4GVtSmiyiF8XM+tpclPVnXxoy1zyGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290694; c=relaxed/simple;
	bh=xv47H9kufZP9CgwslMPz1GC4ppxqZKhzFdH/uW5Fnxk=;
	h=To:Subject:From:Message-Id:Date; b=n1tkW/vzJzyWZR3O8A9OZ213Z+yQE1xk2MxgvbjFhjEBdJxw/5PgpKPXbiW3sHPAFdBfoYgIqEgTk0aeW7e0S4xd0noLUl9HIjqYiOelgJcIrGNzEfRWgIGOOJqBzzCf81Tb/HVIhAqfJG4G0ex0K5FOctrBKX8YRDc0Qk5tOUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfndFrbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfndFrbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB293C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773290693;
	bh=xv47H9kufZP9CgwslMPz1GC4ppxqZKhzFdH/uW5Fnxk=;
	h=To:Subject:From:Date:From;
	b=rfndFrbd33zS05slqIN5i+6wV17QFv1opLe3MteaiPQ4dAGgGWPfybikoFCggPTKK
	 weiiIZYIyfP/UIoebHK/zLnmJvsEGBUOW4cIEKB7OaFt7iqwcAzZ1uf9Gv1iU/eszi
	 z5bsYCL8q0R2b0eDoSHQlAnNAvjjiWH6iZEhK1LRuWq4GPuwJup6v5wPmSXakE3F9L
	 4bBhdPEnRzowCZ8nYukpmFw91dJj+aKbQCQ+IqFByiGocE4DL+HTdxuWcdEqYf8fZT
	 FGvtk3ptJZgpZYcbk/8ktVH3y2srNCu4c6TjAPiuTbldhx/bTjFAybh4syjD9jDW/E
	 bSCd5pK7s/rEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99962FED2CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329069360.7693.17543024660118006914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48353331511e021261f65c260b8be08724085b2be4920e0975564aca0e105516
Date: Thu, 12 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773290693
