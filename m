Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20566196C7C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772711694; cv=none; b=evETb15H2DNI/C3zZKLyWNsgE2KoUGKuKGSALYSqIHWU8BFqewF42STksM2zS7y1yVE67lQd9bfKXv47EBWfIYt480z30vgpn0NeAY3PYj5PUmw5mpv9+dANV4FhTOxHt5wftMmSxOKSjuzY8R/H3BMUPc6nQmP+J68UYssS9nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772711694; c=relaxed/simple;
	bh=50PjODA62O+FtY+dSDVbDALoCS2EX2DC6QvP7syWzvM=;
	h=To:Subject:From:Message-Id:Date; b=ItzfDgHIKeGAZrLjAmV9BZb6rSJEDjyRHI316MckV41U3BGV92I/ma7KCGrRiejXzzMHL1HdpcQsA1MRs++tRqZqVK/6IQ2i0fbf8W2CCAQ13OwAK5ZzsWONW4owpsRV4OHB6Dz1T6p34UYQP/lTVvYSVsbSUtVquTgRT9yfNHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+yDQ7PS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+yDQ7PS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C9CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772711693;
	bh=50PjODA62O+FtY+dSDVbDALoCS2EX2DC6QvP7syWzvM=;
	h=To:Subject:From:Date:From;
	b=J+yDQ7PSSPlgZQZg/fOIszGeb3AVvSIyu81oossjNdYoagdBQGSEfru3p46PYlKrF
	 ZrXy/YEujvn+KxaHdwOiDb/23v1hdkvlAY73O47P6/y9BOkQmAP8LwiVPHSslspuku
	 Tr0Vh+LdtsertVo86CyETpNQ/IhGsUBHPMzvbOLDgdRxqfpCJ+drOcsyZ4ZrQUyx6p
	 ZkYbjjlcCjuD7kLcQ662fqY5aFHIMq9ihzpRIajrAfIDmEr1adWRgyzJ+2k/rARhVU
	 u0e6aZLuWJAARWwe6dCgbxPONZHHKwjZYwCQ3IaC+O4OatCmaTyJqgGOjbq6qkFsIP
	 6BaMFnmuhoIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95541F30950
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271169360.1038.322431068494860388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c2b39448b8bce0015f4936468bd98b199d28680daa081e34595bbf3d291e4d
Date: Thu, 05 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772711693
