Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350CD4CE08
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750538994; cv=none; b=OIUwbiiP5BU6a0B7zDTzR5p2AD+KElImJGXPXJjx9XIkyFJn7cuS+GaesaoulFZdR6XaFPhjq7v7UAlywfueodGvaDWFkFSHAZnqNr5uRT0Re/mb9VM4vfdAP0jl7xO9bV3j1lkdqI9VNmzeqglUlrEr5hrQFycraN8NEYt1BFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750538994; c=relaxed/simple;
	bh=tNHEfYXyV5uAe9sL82OPmFwkumUQn1gHOPr/RvNa3fY=;
	h=To:Subject:From:Message-Id:Date; b=ulJ4sjioc8bXg4ao2DO9ZnfgnZVW8WMmU3HQQc0WM89lie9apA/9Wy+o22nImM8N4iJKKwYsl/Pr6SSdXFGCMHL4BGAXBdowHh3LdAW5cfqhSiU8pnEYy9KjhpIy1hJrMDnlngGzqaj0yxIRhyUWxwf/w3fCtHHEOgPMTszpeQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3mWUrsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3mWUrsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750538993;
	bh=tNHEfYXyV5uAe9sL82OPmFwkumUQn1gHOPr/RvNa3fY=;
	h=To:Subject:From:Date:From;
	b=n3mWUrsBoOCPBkSj2j5yzy3VKsRBNRYVM+e2lPbyqaL+V5OR34872TTvxF178nhzt
	 8D+EHW9O0/IcL3CJFQ+7SlXa+hCvMZb+9HOzT5WUw1YFirGhqqJ+Elv98UNSb5lpzJ
	 8qzrU3UKz0UzsWdsy+TejF3QStZyCe+SdCmim6g02YA1MB+hnv6vxJrA+lGPHHVKOt
	 NalUNDLcMj3dLKazqWfmUNK5MVtfyNByqIMmmQAu52iIfrJIu96mlMz+002yk/jaST
	 SgV7o9tp9ckZWAYvkJyc87SfkN3wj0YUR8VgyGYvb1vvxB+022OS8gjsrSp5q+MbHJ
	 POS9mKipNqNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFE1C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053899357.12841.3565717852264432437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932d772a2be5c7307b927ebd976542b9cc28b9fe767bf5c252bacfc55c137f6c
Date: Sat, 21 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750538993
