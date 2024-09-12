Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0A1C0DF3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726164354; cv=none; b=Xkh1a+9Y8BVliS2wq2V5xTsLLkk0nPGozvkNwz6/HkHGEQJE11nGunywO+9zUn6JLSbtbu9JnYCYHUe/bDtkqjKE5CA8Sg4+TZq62mlhKp74+OM1FoUvR/x1FCbz6igTt3fWQ7t38jvmSX4HeS3uvP3ulMzip2tv1O/0bNWUv04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726164354; c=relaxed/simple;
	bh=k/tcIM/rkZ1KwIUx50FAQmkoRGuf88bcw3n/3ASjK68=;
	h=To:Subject:From:Message-Id:Date; b=NCThjzHDabLV0CjE891w6NrizAuXULhKqrEmpqgr8WNAUq6yh6TwhcRaxwYK+fEuv3q8Av+YF6CP/uQpS2lgLNFNDzKnPonLQid+9p/2vnjVL4+CxadOgCc05Od2IzbMjNrzk4DGWoHHhYdEAdncd5kotOAC0m2z8rC1QAoLS/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmuGqn3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmuGqn3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC140C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726164353;
	bh=k/tcIM/rkZ1KwIUx50FAQmkoRGuf88bcw3n/3ASjK68=;
	h=To:Subject:From:Date:From;
	b=CmuGqn3Dm5KTyM9M92n2SaIgm7CKix1DjnnobTn301169TtZ9ga7Oc8nTw6KxbeCl
	 IPKHh4bGTTsJZO0U+9bi/NkYmQrjNa3fTENe/fk2UBnF3eYehQxlI3nzCPDaqWDEQM
	 JSYqnZOktL6p2QLia7EymaU57pVh9LfSqvGKQV0SdfUq5w1vNdlYgsbPpBdxwS7NN3
	 wVhmg65oE7LzXxEu3yUAiB8dFdpK+O0CUf14w02kNvHOxA2geXiaYYLQMCMZaoOH4r
	 2olWdh8lbD9pBj0jM6ZojPBsrsBVIt8Hl5vyHroZVjZ3EJTlPVV6ETWXatu/Np4+Dm
	 KZnlfdgFejdsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E12AEED631
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172616435363.16094.12138267035382884795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec15eba7749941ccd5326daafd73c5f1e4a158039735ecb52c829a8bb03ce762
Date: Thu, 12 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726164353
