Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6194A05
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716598403; cv=none; b=XGDXGiISBnhfWLE4WnyriAtu3aE1WUVF9UVjeph7BTU4OcaXg0Te+ZftvBbQBE7rTfnC3WnlvR3Vsb8zOiNBqHahdHKDNRsVbpsE4EKGllt8QSG6I85gV+gwemC8tZKcRJjl/+ifwgtaFNN+05LvgDCLAT5V8OANSKImUXDMmOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716598403; c=relaxed/simple;
	bh=DX0MsNn5a+hZJ95DGqfsaUfXRoqSEjgXN+i1eOj6HKY=;
	h=To:Subject:From:Message-Id:Date; b=hm9yZvqPs8Q3AjXMbINUesRZHvgTeef3XHa/IVI7ntoze8fBVTh+DFHNcPVZz4iEhC5k+zLq8MAXRszWn3y7732Nc4CbFOInIwcCFR4StKdvIQKeXEMjX0eJOTyj8a0YdcksDFxxzBP9z8jiFsea2K1Ewtnqwt3K1+9D7DVowO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIdhVt4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIdhVt4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DFAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716598402;
	bh=DX0MsNn5a+hZJ95DGqfsaUfXRoqSEjgXN+i1eOj6HKY=;
	h=To:Subject:From:Date:From;
	b=IIdhVt4kxGvC4iWfeTHE8NyBZh/bnaqPKfk1y4p2wGd42o8ZSe01cCtH8/29ANCcr
	 iwm9muVoL+VeVCXmQC0bjzFqlPAXzi0QE194kje3CFFkMgIGlwSDNU3DWkGlFcl076
	 buWVb4VJLc8r2Fn1JgImgOtTYkwTD8GBXPzqOMnVEUyyO4tEUEYdh0pW4NeLkVl7l4
	 I3iKJJAqlZmdhwG9pEDwZmUrWOkmqM0DqvTDU1KSFZonX7HYR7xoY5w2AayKK4b2Ol
	 SIZ0M7LiIVbcWgTfLulovyfmCl64lizwob9Co4NPW7gIhUC7Tv06i1K+0O3yy0vha3
	 9vPKZPXBMmGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2061C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659840277.25434.2316867558085054746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7503fb4a7dd238a3d8c7ceac11cec428ce3311c84b37ecb6e0cb25624a0ae3
Date: Sat, 25 May 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716598402
