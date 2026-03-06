Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F699366DAF
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772770494; cv=none; b=hDz6NBi1Jv19jXAT2B3DdDNpZ15eiBKjyxGBc5fruyZ0KuHO4Jq3TuNekCdHPKPHs0cwvpupsamduqZhQED5BRcCEj+9UOGajTkouDultTIoxC8eOWU70flLZUketoddXA2KXx4pHOz45iHUNEcnHvDKl+rQ4yI8RIDpjntCnmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772770494; c=relaxed/simple;
	bh=Rh3M4AasG6QfSdOjBtTrGHLhKq+QGsensd9nsd68tl0=;
	h=To:Subject:From:Message-Id:Date; b=ifR/chCr/BwXHP8O5YruVU/pg6dAecy51aWENwoAfGnULwQ7gjrtJzOGEqg5tCedCiZm/EICpbwiKu5dP3xxBv/bFq05oFHDHiaxBxdlChYBDxobK4s9bMolxB4IJj82QaHcNn79ZTknL7tejcVsWIAgAsuwwxW96wPJncqLk50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqU2mbAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqU2mbAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD8C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772770493;
	bh=Rh3M4AasG6QfSdOjBtTrGHLhKq+QGsensd9nsd68tl0=;
	h=To:Subject:From:Date:From;
	b=PqU2mbAGsQEvnO5sgxehv/pyRMU7TWMspwGbEDJIuST2fsNxyYYCKx7u6O1IcT0iI
	 zjbCguofcKnCH/NxsdZ/zYdZpsc4O9/fVtCpXOt6yG5iV+AeD76ZKrw3VdS6Tvrb4O
	 1aaq4M21SevvHecdtXmx8ai1faiuDJozuleq0hk0YBYe94y7WghyJBBhAWW4/CNQ/j
	 xqYply5QGCDOmpzcAoNcJDxu/04UOteD/EXL5p7W4YKb/zb/tWdnT7v4eCmIWvu8m3
	 H+mK9kxzls21YQltlomCnZuImfb2Zy2Isn1dq6KqkQp9eexJrF+FfVvuiPkFL2TcEF
	 d0/DTiIkoHgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8AF513F2
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277049358.17519.5858755690666889633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ea48d790c1fc69379640ee84f49364b9a9d1f9545ba8443983950acd4b3a27
Date: Fri, 06 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772770493
