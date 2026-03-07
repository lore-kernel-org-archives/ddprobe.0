Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE44265CA6
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772903693; cv=none; b=vDwUCLbH0EBY9TtIWbdPQ8eRA9w5/5zB8TDtZ6+dnAoIRGh+WE/C3OOExr0+k0qBWyyeiuCBnFNeZzGBPrnNfwgw8NJMHPjenqpGjdmhl8/d9ZEHKwyttgMBZ66mPkMxcRZsABSIvZM2By+7sUhzPnNP07RjrHd8vd45wjMuh/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772903693; c=relaxed/simple;
	bh=gQ1RwpcgOmx1fUex8kuUqY7vPr/9Kn7sd1zW1+FWIPQ=;
	h=To:Subject:From:Message-Id:Date; b=jcJaqlrKMvn1n0RSaidDqKlnAqry92VycLPtoePZ64SkrVufkX3btd1vna9fDpg6/5DhPZUsqkYA6JljRExFGbb44J9O8720wfWhV6wjQ5Zd/JsiFsiczRdZw33cSq0Pi9tdkrjZsTAZlibZ0GruZ/upRbo0s5lgaTrxKrIbim0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI3blYuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI3blYuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA64C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772903693;
	bh=gQ1RwpcgOmx1fUex8kuUqY7vPr/9Kn7sd1zW1+FWIPQ=;
	h=To:Subject:From:Date:From;
	b=cI3blYuLqfXpGMHAOoeeWOthtnVoRG/MWO8ilSk3Oh4BqRTl39NEGdAPOkv46WwjW
	 JGNDQ81LtYCZsgOir86ej4fJvbYEEeYjKzw1g2PfSqdThx9ptCiwTFnQwBuqtettR5
	 iFCAHvFo5CjemNLgxThMRuqNH0Ti7wdLY1I6nb55g3BZ+UgQYAPHTZVdzFbyJEGd+B
	 fA//LmdKjaTanyVIsJZDkNdHOU7q4IuHZ+pcYkBuMVSTv4SKfSRtUmAxVtf0aZnbSs
	 fb00tqF7dMFiQJVoQPps1dgEs8c8T/6P2/eLSKvawCJJZeKT2YUD58QVTZ6lKGvlk/
	 vs+pUkXszCOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00AF55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290369357.13578.5737403970359090029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa4ee29ef32a81c50fa88b94a3623d2f919af284cee2e9546dd965c32fe475b
Date: Sat, 07 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772903693
