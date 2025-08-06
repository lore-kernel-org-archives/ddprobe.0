Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3228D748F
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754474994; cv=none; b=TEcMj47kGaxSxGVNvl5Jtst61PwT3t66t7uOdZVQ5ei7ULjyynlWl3AG0RXrpVdqPhbJ0zhd2RzkjzWtfQRt3OS/71/AlkS0HdP32Tgs5qEL4w6aY/7oNWDeGPPYLt0TEOu6A5d95o6NQOwdftM4Nk6fIQnFNQnJEaN/uLIeP3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754474994; c=relaxed/simple;
	bh=/dGnnBQCMVFYJS34AgxHbZwr4YOAqjLY2+1xBkI2U+s=;
	h=To:Subject:From:Message-Id:Date; b=ahETXSJPtWk2r9A+Fo7Dd/qPlYzRlTkX9DQ7umxLXa+dOK7sIJx871kaqM7fiMt0+roQv/ksxUxVUyHWHCdNhs0++TQqeWdJmZVlfbv555Bw4aUeMFf6OIrudQX28gmK02Q8sQlTjioGIXH1c8cPE+Sh12H/tJWA7TUCxQLVgxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8epDrdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8epDrdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754474993;
	bh=/dGnnBQCMVFYJS34AgxHbZwr4YOAqjLY2+1xBkI2U+s=;
	h=To:Subject:From:Date:From;
	b=S8epDrdipaZxeVL26N0oCq0OuAVJYekMP17dYQ2eZzbosCCre8pNRIxWwJe2iB3Ov
	 cs7JNr3cApBDspvwoFovZZi8vHwaKanJzNUzK+d6VtEnCGYrV4huJzR5IrEK/5p6mn
	 jOVcvE2D6HNV4nUBsGICzaNSQu0yZAOykI3ZToFeAlvuBdTurtn8aMameHtQKPyPgs
	 Pl6mSKAx5HEN5KN9usPOiB4fZtWVdW6n9+STPjtoeNqvDZVBcai0uC5xtArq1K+fif
	 ONpSNYDjkHC+4pDeFMwGU34OD0cTtk7R21r0vFB4VaH3JWYKe+yphWqujbzxZbbbnb
	 ZxZe7dk1imlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED28C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447499357.19097.8071134389966321766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0cba53fabd4ce1e758bd7970cd3a9bb1befa22984a1aba8242bd2557cc2d4a
Date: Wed, 06 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754474993
