Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DFE157472
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732019154; cv=none; b=qM+BHORYsfFT6jxPVRYKOeRG6DiGGpmd6rzEnb8OgGJFMuEAhF/oGpTaANI0Mb1yc5c+WA9UjlvXZs3cVpXn1USle6JrIsULf/IzaGvm4Jj9kKIjk3sVjsjYkZEp1amhO+rq5Y82ck99IL3Qrf5tzDo6GDk09CITVqlR+pWpSLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732019154; c=relaxed/simple;
	bh=Y3Uo1vZ5LZg4b96atnJlHy8V2MFWierQ/XXPX9+b/dI=;
	h=To:Subject:From:Message-Id:Date; b=IdnGTK1tmIa9cTv5KzVEGmygBNO6gV4iZI1qzBBPc9FL+Uel9x6kN5Tb88va/VfcyZLhUajie/oPByYFniU2gtpDtm7GqO17N2S6P8ehCxnI3Gk3+oITz7/VLtJlSzxsP7Bv/MPSgflFZFoy06CNwo3Jv/rZZPp+Ngnz4MwLbk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot7iAZ7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot7iAZ7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9277C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732019153;
	bh=Y3Uo1vZ5LZg4b96atnJlHy8V2MFWierQ/XXPX9+b/dI=;
	h=To:Subject:From:Date:From;
	b=ot7iAZ7PmlDJ9XmHnW9rNYB47hxTd6iYIHKpLQ9ZYQffui8SJ/1Mf0Xwt7vJkdvq2
	 2sJNqH0ZtD8ISjpPKnOBBwDeNhQQ2AOTf6dm2il0as7kxGrOfxvEkvS5p5tu+gfur3
	 wrs8LFqMC5uqKKr/0iDsm71AVxFsj1v/WerM5OBkZqtEWVDTbLNBeVDzfFS116PMXV
	 QhWhB2hBv8lMvd2WqDEOnQJ9/GMtxkLzJAdwKLRb+ihBrT95yfAbs3gnTEMHINrqFj
	 G4GFeEP6pVsKIB/2F+j9tBX0aAZXvXIbXySQKZgU97RzyYqWsx37qS/HNTTS6/SdqN
	 fZb6rr3xpeXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DFD44151
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201915360.18471.6010711849949196860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d36082f30e11e4770d195df0c7535bb2313784fe9c6871e93dd23a7059a50a2
Date: Tue, 19 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732019153
