Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35636D4F4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763940714; cv=none; b=lqKqzHlvy/XRCihbhzBR5n6KEeGUzFOwFX7jFI4jmB+gYjyA6QputpZ4H3m9vINYuF+V4aPrTu794+igtmI9fprAV5GkcBdF57TUKKtICIZidq/YwXOXrBxYmb7zo3g/wxizJ7wKYx+Ua8USgHcS5bhZKT67FCafDbc7cvo/9eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763940714; c=relaxed/simple;
	bh=Pc1Zlw9ljwyco8XIrIJQDAkPxEEYp2AcF9o6tDY/oFs=;
	h=To:Subject:From:Message-Id:Date; b=X9U4mD8j0d+uGwKkmZ6ufUtGgSQThoGtr2xxBwk3Le7epp0B5fL4G320O3KxeQyYJ0bqmBYmN93EWHFWhmQtlLIVyNhBj2HdlHM6b0GPvZA662xQ6qosWj5iGWa0tgsOZBaIakh7vz/cn8UTD29ilQax8vXGFKhYj6jrJL4rCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmcaT1Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmcaT1Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA26C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763940713;
	bh=Pc1Zlw9ljwyco8XIrIJQDAkPxEEYp2AcF9o6tDY/oFs=;
	h=To:Subject:From:Date:From;
	b=PmcaT1Fs+cw/R/KE43tcmoTk7NNradaFg6VUFrDUkoEd9/sCw8cToBJpPsRUx7b4g
	 fkfdT/8XHu/gQrxUsIvTrag+obmfj6hzGc8giDxPrFQOAOCgT/tJsygeW6ofOt1ZC+
	 m061XAUCTaMxCOaKvgjtlWVSpTyp2lkTyD+/WzXibbdfX53ghxWyUA3JDtvHtBHpxK
	 fwv1SlEx8T0daaOWHOUOpLVjo4eGvfH03Tk7YagPKe1+sfD3e+vV4eNDcEakQB4olV
	 p8YmWRFaWx+znOO2D1wLgPpsf3uAeLcn3SdCVXMLOVWMibm5zgJiTxN0+EX1+epM//
	 idz8uDn7cRBZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C3CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394071358.3658.9677987963854625811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cd6a1b738d8a56d58e2e18c719423542409c56b0130163765bc2118f65ac6b
Date: Sun, 23 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763940713
