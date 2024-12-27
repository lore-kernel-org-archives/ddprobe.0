Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C51876
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735281354; cv=none; b=aC6m7gAgzORiFlxs2bTXOCwtcwpAGD9GZPwvhsf1VKH/t/jTSliABwbkJkau0XQg/Ny8Q6XNnm4J2n9fD3WoI8t3JAF3Fm3Atyql56URgpMVGa6PilIhCUZjKW8FdQ+cXV4+n4FTNSgj2d+/P7DKHOJ50ySe/8f17dHaDTEiBwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735281354; c=relaxed/simple;
	bh=eKeobTqPupJ2myteb37X89LQ5LxIsrqOx4dNX3Y/qgU=;
	h=To:Subject:From:Message-Id:Date; b=tjcV65vXlQ1S1ngy6cA1yq/aCMYx3i0UVtMhQnIEV5HuDWc8sv9ITNo9hR+G4QKDtVv4e3G0STLgvSmdibLt/+NArfqx2BC7me5z0EoPieKufEppuV2eNRzSYPUA0eKa/9lahYDL95QqM3JLaekIYcys5JMawSDNfoJn1vwwBYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQijGkem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQijGkem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF46CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735281353;
	bh=eKeobTqPupJ2myteb37X89LQ5LxIsrqOx4dNX3Y/qgU=;
	h=To:Subject:From:Date:From;
	b=NQijGkemGO9qxqVGRX8LRRKZNt8CoJtpHfcsHtraSOCUSjLl4AQAEls2JRqx1mqsF
	 IzpiTSiH/y9V1rU3wxTS8adlGNmPpWFYLEFTmyopG78bEZMH7FXPzaGg555Xb3+ER2
	 BYEl6iRb50Cc4vsTdflYuYmsXxuKZOPkqq7Yv2BbW1AdFvqKHATl3MKy8UjKkNrhZg
	 zVZStttFJFFayBflNFVzYyhrf90GDqmYvHqJZCJW4CYk42BbG3IdhcUD34dZy0ek8I
	 XTPob+qxGGe/bKmPLms4HobiZVuQFoM3/bB81jCR+vEXm0vaprlb+5eBPX3EewtK06
	 8lCHecl2lYprQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD02E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528135362.28243.11453514560144011498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33954c0a82b268246f8f1d846f798d414a58670958151a67f9d7ae82daaa06d2
Date: Fri, 27 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735281353
