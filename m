Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A112C3268
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780143214; cv=none; b=gWfggLlbiEJjIQLBWPgwg+5k5qxfIPxHGKNQBWKPUkb6Q4P9AHCECmuF688z1QEmj70bwEp39WteUcC7tR5OaGkLu+BbW5grkW/iEu38Gqdc535zDbUEbyksAqWA4LbIJeCe8N726KI2vv5H6z9lDp82FnbITnQgfKd8sd9iKDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780143214; c=relaxed/simple;
	bh=bc74LgsVdHIGM5846iiMaYiHg35ljafrP5YVHp15MyU=;
	h=To:Subject:From:Message-Id:Date; b=gVOUhG0EenGIYnjV6ZL3xFsJD7vA/IiCKBndSYjxtcU/CUAGrhUcanJY86qpSJQEzNVrrmIJx0CweJKIZC/Sql0DsAP9dGT/SJqB6uGCsMnYTAU3iiS7bWnaKOfNZ3UjQPLScRRzRzTJ7raR33xV3MCMWi1WRytnvI3PiXMnmS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7svXkmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7svXkmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6910C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780143213;
	bh=bc74LgsVdHIGM5846iiMaYiHg35ljafrP5YVHp15MyU=;
	h=To:Subject:From:Date:From;
	b=S7svXkmZKPo6PwrFH8TiheZ9wKcnsGEptgQdBUlj9T4BOmd2LCDSz5hmebXopSSy3
	 lsYw3m/FjL89bthmr9eIWGwUivAzkx8OUm75sbhrSzsDLKJsg72kyazwIpwaoRcdR9
	 LlBIzHtZPabXV2AWx0KzyXsdFxt5r7eSr372t3n3zfcIbTeCcMwknlur2nPDRpiUCe
	 hmiGapnewQvBEk3D3bhukcQqexkzRnqaO1aLyyEUDCCi81sSZglJGQJQ8ykvpyPRI9
	 cYTgHE0BPI46pf4gcNzaGg3PHWcwgc6b7RN0sIRBTX9HNylQpqH51hcRqAF6/t/ILI
	 7bIZjnG5efBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC94CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014321370.13670.2625003596053827494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc65ea007aadea326dfa1182c5a58705cc6accb81ebd2b439e7bee41dc9e814
Date: Sat, 30 May 2026 12:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780143213
