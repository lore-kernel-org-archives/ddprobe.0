Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94236AF8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727761554; cv=none; b=Sfpegsz/jmsqWE9N3TvZKTOIEe7XzFaXb9mIcPdW7c4kj9nhuRJZWpIRrKzcs60GWeCDEOzFevU5IJpUx9m0MNFypP5oAaKysHj9O39lcvh9G9pnO8ULbQwcjokjofxISW0mBKBASvoe+ChlI5E81XILnMRKtVbQTu4NTqHif4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727761554; c=relaxed/simple;
	bh=X01eAgB26sDL8nv1fgnLNbCz/wivEWjB8ZjifsvcjjU=;
	h=To:Subject:From:Message-Id:Date; b=Eczqt4vb7/TwYK9kogOuPxLx2/ZgKcjgy8X1uK2oJIwsefiPZTg8ooykzehZkzhTsi644iWawSYWMALpac2K48GVRjVvOnB8AD9bR446VJHpy0vx4FjHsxGImKFhSpaEn1UPDKmZ8h1v1PRmhMAl9P7eRAz0G3aFjwTcUSHUxrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ+2XdSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ+2XdSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC14DC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727761553;
	bh=X01eAgB26sDL8nv1fgnLNbCz/wivEWjB8ZjifsvcjjU=;
	h=To:Subject:From:Date:From;
	b=RJ+2XdSQoZ1VfFP491tuzumN+u+o3CjEBuk7qL929K3mYDdZnyjKpoedPEH038KH7
	 06tFwaI2yqWQb9VqStZcitqvb6EaIYfme8n4os89MINcOYjvKlAdsLXVwW+k8hfW1P
	 1tgWRFUe95BQXHK9IOp/h4+X0n+bS6C/khEgyS0vA/DZm3fGfGTPfPQHpJrk1hEjl4
	 GZOTBeQIDBvlBHxAhOMtFjjcNSdVxJqGy8z8ffMnOMM54J12vM8rAykmqoHt7EKtzQ
	 kaYVqzNmJgaHRM08GVwQ9YsNQJSk5c6K73NDVX04WlClHiPsGxQ9UvyWTUDqP81XDO
	 F25+GrnS3nj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC836CEB2FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776155366.1396.15937019072906142645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a8225d73d59dbb3e624068ae761131fa32b87d86248df91ddd26f06d3752f0
Date: Tue, 01 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727761553
