Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C9746982C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788293435; cv=none; b=XybynQfOlGP1EpEFFYEX1pEKszgVI/R+OUxn05aCZcQPxd1qqNbcN/egT9J3TaE45Ds0jFe2R607czALlq7lA/OMYJErjMzdsdvHcW8V5zbD3PA4s/FLA3QQvVUge8A5MhdkQmpre9TVjMF7G63NUEoCebPoYL2gZW8ddPgdNus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788293435; c=relaxed/simple;
	bh=UDe4YpSlsxfGCA7dOkb4luHFUFHC0t8c7Fnu4woR7K8=;
	h=To:Subject:From:Message-Id:Date; b=CUEII1ao/dbwLyVZ76JwSq9X0HAaGc5gx2bzPFZCEeubchOri+T6GyOZm0C7WZ5Yr1EkH3DBG1wnN5R59kVDhgVLQV7jwlIqNb88qhmN8mfNKk0LZSaCJjQvkyEtW/QidDcW8tA6H6eEaZcSbf32bA56nPVnfPIBIAhMebWBk68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3oqgrXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3oqgrXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A8DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788293433;
	bh=UDe4YpSlsxfGCA7dOkb4luHFUFHC0t8c7Fnu4woR7K8=;
	h=To:Subject:From:Date:From;
	b=J3oqgrXvLVfPVhRu2GWDGAOPHn62IUIpKbPVbVjOzlXb7u97YTYfZ2CMawIP6pN1u
	 xxq5M5ma5eXSacSfROioIxRP+IcyKfYlZBJBit291kCW5Iwt2WrpqRBaQjPmMGR7/5
	 1jmnhZMhvev97Qz7Y5VT6zlwBMoCjji7Y71byZkOUsne6/Mn2KaBmByPFl88vj51wa
	 hdOxlWwD25OKrwc7HT3P4B9SvzC6wJtv/SDnIsxs0q2GNJNDjN/Wl517Bmx+1KiMM/
	 y0IbAWre2WFzc0+LjGU4wGlaRC+iLbe+wMGdCbfz6+pye9Ktv+cJPBYC4p4lvV3+0k
	 nsh2dViAHyAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC85AC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829343369.30070.17888398228956774753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a514cdaf87e4227d97bee22084ff66960402b6889ceac7b0339dde6648454fb
Date: Tue, 01 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788293433
