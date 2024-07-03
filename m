Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76D13C8EE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720046724; cv=none; b=uNbdEZ/Gf4iUpfkk5SC8UQJJEFq3WZ1ACOoWFMRR1w28SlZgzNlt6zw9AWFKw4ma6DpbRAOgjCkwZJghZo0uGe6hjq27HoIDnrsnCarfINhNtV9QAyhAdDahA/3lGbgNO+58XUQ7qqo3SR/G+TEc463XpVdfnJ9r6L9e/Tjjwn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720046724; c=relaxed/simple;
	bh=2QnQF6oVPkUHr/5uXyjtaU0R54ZQqSqDy36H5SiFgOU=;
	h=To:Subject:From:Message-Id:Date; b=H+5UQy3a94PNoMaEiXm1qvX4OE5KY86Vu24GJqU3aykQmR+8EuqnefnYsi9UZp2LZKW7lxrKhsno5vtQhSoAScY9CMRtzadaStBl39c9YEjwhgC8FnIskAzWwGikRCT1hJAxVGJZy9f2NId4ElL7L6uiHwYStTHMbodUnTK10WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khDW9xSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khDW9xSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06445C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720046723;
	bh=2QnQF6oVPkUHr/5uXyjtaU0R54ZQqSqDy36H5SiFgOU=;
	h=To:Subject:From:Date:From;
	b=khDW9xSrt5LPtP+wNPLLpF3P+IbjTNttaWONl2+fZwVMubKgHwVF06sQr/mKWtz61
	 hQqOmZG5JN2HTsrjlIZ2pzi98hxkXL8axI0NEWdvdqWTUbcGRWEyRqlXt3wWJL+0KV
	 cbypdZBaTvT0J3j4vqn/a/JySCMnvhNfpTIV2XwVrTWpywZp7e8VCxNZ0QYkMCQr0w
	 UD0HnxwinsbT3LZGXAVWRrEm5iiWIsT0WPMV4NawamSERULQcI4GBGQLJe+P3irLnN
	 xhOC0VhscYHVlvRDuXKrVdlkyUvDOgBw2ceIU+AelbK6y9fjUakwZVthtKPJc0zoiC
	 O03l6ofEH5ahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72A7C3814E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004672280.15837.11310785692618151473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e828ff65dc39f61c92670291daaa65959401292b8df07a8e66c554f4e90bdf
Date: Wed, 03 Jul 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720046722
