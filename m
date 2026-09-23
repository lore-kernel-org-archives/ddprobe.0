Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2D149C4AF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790164834; cv=none; b=h/eQTMnB0nTBLN42f5lD5NiAi+iD49nyjI/zSQ282DpNDOt36rT/y8FWh/d2V9x6abi/BC6ZD5wCQCwCrLtOn76rhWFYCmnAaUDziWMK7eq7bBPp+6+XkdJ6JhXNCwMaq+qN3dlvWiDaC6L/pShcOPuwebB/u8DL11PHnVBJ0Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790164834; c=relaxed/simple;
	bh=by8BG5XLTmVib8HDcyYMxRpaLCyTlpnQFfB+v3weiys=;
	h=To:Subject:From:Message-Id:Date; b=SmyiUEXVGbc0IFLqBRrlNDv0jtuZufv8iJ4KM15dSpipIMIfLvJG6ziMvahvaBp/7dOBroidHjKEOWXJGD8HkMtaciiHDdYNq2/v9SvsSb+oIzbSFP0wnWpZO6E32nSJ4lk1vjsP2cbv+dRhhtN2znZIxLzr6TE2j64sGUcBh6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW8T/CE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW8T/CE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2707C2BCFD
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790164833;
	bh=by8BG5XLTmVib8HDcyYMxRpaLCyTlpnQFfB+v3weiys=;
	h=To:Subject:From:Date:From;
	b=QW8T/CE25cwgdvP+LS1Y1+T9WZFzbi1mqUtkNuVeL7BnHKWV7Wn6dfyJzQ3tjpHxP
	 WgGagBbILm6MwJfZgQAv+CHlSqm9jotYeuzHFdTdxejlosyejBueweg3pubgTHVnnb
	 9BH5kC8wpABzZjh4NK43sjWBjhRmysJlQROfj7lFL19LUaEtSXMeQYmpa8tZE1biP9
	 /GqC0fv/BS6baFfQTF2W/yzrdyhL0nJjTtIHo/ekGBrjZAJ2+PzpIsEngL6xfFva6u
	 L4jIidm90zO3RSdrRKjdfVkGUkzCdMCkGlPjTi15U0RZYOhJKKI+pwj2SXPEwEtEPu
	 ByX6zHMNi1WRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC084C98307
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016483375.28371.15244159576226279739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd9bb624a9da6288a07c7a1a870ca8c15771a56a02b14142091fde869d98914
Date: Wed, 23 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790164833
