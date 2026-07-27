Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC773C3F73
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785194434; cv=none; b=a3Wxr7Qf8Dh4bBEajf+cWdnw63M4AsS3ZTkg0cZVpLiOWrGIw7rQJaqgjRLoYw8Yrwkf8WOfhrTFk3Et7y6cpv5pnDaLTs4VfXrHy9bCvBWJ2d1eJcYaRdLY6KqvJ2QK2LhSkBpv9LipJrCKAYV4fz45QEQf4EZjwqgifY+1zLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785194434; c=relaxed/simple;
	bh=xQIkvCGn1W5QH2A2tqy5a6XFSW7mfXoQnFgf2fnp3Uk=;
	h=To:Subject:From:Message-Id:Date; b=jbIBoKBH6BthwXshxAHZ7/sZmQK7sFJTe+W9208h3899g29I4uGjw3LgBZ4oeCpVeLcBE5CFAuNjtdhdw9CNdDN3gT+Lq/Gmp/aSIBvFQsD8WIg5KNPg3O+a+3pwG+ITheWriEuOMJ+chFAc/FQzEIDtTkT8c4xGsUurs8IoxYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUwRqfYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUwRqfYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD889C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785194433;
	bh=xQIkvCGn1W5QH2A2tqy5a6XFSW7mfXoQnFgf2fnp3Uk=;
	h=To:Subject:From:Date:From;
	b=FUwRqfYw6OLQDP88upfl7IfkD0RvnYguEm72dFwe+3F6kQKKqs3gG/ayOPNd2bqIx
	 njqMLzKSSkSnKjexVzcySZHOFa5SiPXhSQ1M/sRK4wcwr7eJ8srpN/sZqyhx/2Bkdt
	 tU7Zdj1VkWWQSlSstpDDMFddbpH1K/Wi9lnlk3I9RjZNzw8BqSFUyZ1G0ESjU9Dd5U
	 X8+7RK12Gd7KW4Mbta/vfp0MY7vf9+ZDjYRFW/5CpLbsU5QRFqrKGVDW/oBMCQRdrZ
	 C5c2MvFsLjDUtFRr1Jk6HnOeLK8F73ktP55CDNZBwp0nm+yFMhEHARs0+uFN6JASgO
	 3Bn+0F+IDHDzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB158C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519443369.17655.7543638156840445217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b7a4a574789e68be056cde6c2958fcbe2662bf8f128007b3e967a8a0ef4bec
Date: Mon, 27 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785194433
