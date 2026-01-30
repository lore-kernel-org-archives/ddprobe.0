Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50C441C72
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769732033; cv=none; b=QixMT0ejB93BnBcFonZ168H9GO2vu1rdEHZVXy0uMTUN+tMPgEixhacsul6HXzKrrW5x3USMn3QZZjDyd9tbibGhsQnFgwGyDQM8NGSZNF5ddOzpX5u/kC0Cx519E8RJWDOk6QpWPExmf7wpC4Iuul/31q6P4Q38IKmDr9bPuC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769732033; c=relaxed/simple;
	bh=/fti5RFmA3HdRaeqigoL/pwUwn/0mF747wdnTWk7MXU=;
	h=To:Subject:From:Message-Id:Date; b=o/vRnBQliVCbtADiDHj7NAaJ74bZskAaCsdbMaNZe7+dq3RwblIeJZjjKfCLM+XCAl1ek1BuEoH6+cqjt6xWyq0uB3AeP2Drj6pcoXyLfY393WHAG9UHUmyg/s/eSDsBQ0hbZPj2MYRZPVRp82EdEKCkTml2Yc2xJtjuUXuTrcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtl2fLD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtl2fLD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0908C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769732033;
	bh=/fti5RFmA3HdRaeqigoL/pwUwn/0mF747wdnTWk7MXU=;
	h=To:Subject:From:Date:From;
	b=gtl2fLD2dYzdJEU1mfY0XoNh0BO0Fi0/MSuNNto9K5EdkkWhwgCOiEBS+6haowYK1
	 KxBBJ3JeZ1XD18jsrxuhHZhSVDgjz3EoaNK6LN5QfZiCD8T1jDpHPe12gHfUzLlLIF
	 sguF29lisHOmmQdYB3ym33lCn2rzyEKQdENSaRb1SOVQXuoUcUK/20L1u9gwoha/ol
	 3mreG64nt2s2r1CTWF9LVkjSSSTsc3EIZ45gZ2BtoMZs50O4btuJTOP7HHU8HFdZmu
	 4WULO13E5sNo8dCQBfbRcf3qY8yAAH0/61VBtF49UPjvrCCdsbsAX5xPTALVD4E+tI
	 27yMUhn5vVlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE88D73E87
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973203358.30352.874904788566096310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9957831e7dc89779b97f976a00aa1725cf258ce769ceb3c7c141c05d1a4e32
Date: Fri, 30 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769732033
