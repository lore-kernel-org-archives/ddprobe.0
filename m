Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EC02DEA77
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762934994; cv=none; b=sYQKjLShd3Y/JNLU101TUt710LfPti3izy1eMEf9vlK6DOEtDkHbUOxivLcYwcW1aT5HeZ3ppDzXl/v84/t4pFVl867CCQolF5WBRaGKXwPC843QVkQbbilEev6gHeyqcga7oHep3i03pPtdAs4X9CMvBFAnW3eugnsMKH/NaaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762934994; c=relaxed/simple;
	bh=IrjsP0hk1PdaF92BM9phmxpUPStI1NcZ2vUcEYtZFPA=;
	h=To:Subject:From:Message-Id:Date; b=ZT6SoryWFkdjlOPdZwOlPifF81WV0Km3DGUHZqlpcN+F0oiR/IYPRrJiWVALbsCIKuSq39k3XHk5hfHuStCfPv34nBpurhwLJgYuH8pWnAs7vNv7qiyNnadSaQRUivp/+bznIfrhI+JoIJ20jiNDBsAkoLJPKTajJbZDoEvWTPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r942jLC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r942jLC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D370C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762934993;
	bh=IrjsP0hk1PdaF92BM9phmxpUPStI1NcZ2vUcEYtZFPA=;
	h=To:Subject:From:Date:From;
	b=r942jLC1Fer2yn71ZRUJeCGC8NGadDKSOF1EK0FfFmTHOZVQj8F5C1SmlISGn40gy
	 s7BODgc2KDEhRp04TBvfb1dQOpiZCANMtvyyDHzOtD7+9yS9yQOE5W7iuWBdwMpJm9
	 CMRIMxZ2822hfWwDt54wP2rr+/DE8L3wcWeD42qEEwpQC3AzCPK/FqCxjrSVLK5ojL
	 ApHZgTKW4gd25i3ws0O9zRAJNbsOrWCjsSVOkf8DUzm4dGl/IDPJ19h8yCgjti4AnC
	 XjgHGs8ZBAoPqWBbhU6jkap/+C0lmT92T3RT3InBtZ6WnFPt3cgtiNjzRQoCIZKx1+
	 e5be8UUo6GtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E4BCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293499358.4494.3661966505816759887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33d1455c8e3aa1a952b1269603bf9447ea76dba31d25dcaa091065a247a5057
Date: Wed, 12 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762934993
