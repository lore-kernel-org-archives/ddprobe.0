Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1218D2DECBD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769630634; cv=none; b=fDJbqrOZb2RE5dYuwVCNfhHQv83/KXyu1RtFCvDqEciXCy03zKD9qGUturxG7zy6zJWPuYNgT7ZaPogHXKGQRTfz2NURa6HoBY1YfPGMDimdHs5ype9hVD3Dy6TfG28pmDc29U9nE1PkhY95+12S3jZE7vIUX6nQXgG1kUoELf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769630634; c=relaxed/simple;
	bh=hOouLh49HXLc70tDxy4tBXsXrFjkozpocGWSjaRU12U=;
	h=To:Subject:From:Message-Id:Date; b=SsMkw/xXQAuFoAcH3XNdvvM3QFrfYQQDwLuHVjPTGupdJnHz4hqfXXzIxXPa3/DUxKmTxl5OtzftZgfKj6iVcl8q6GIlQCy9tVDF9KCmhSUDg5na0yv6NQfCKPlPDetcCM6LB/aQeqWdRx9CLQyOHdrJ3TC2NarqFXga4mYVraY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX7UCtNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX7UCtNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4220C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769630633;
	bh=hOouLh49HXLc70tDxy4tBXsXrFjkozpocGWSjaRU12U=;
	h=To:Subject:From:Date:From;
	b=aX7UCtNQVrE6FOY2W6Rd47Q9IwGzbB6cQ2tPC4n+IKT3BDR0YCHGZpXj5fxDAIvDF
	 c0eGa7WknfNdAaz9ArjWQuhCZShM8sjeAaXJTWTEnJZKkHWxZzf1fovE6z97nge732
	 pb4u5aeF64j1ydyRjmQ780gMRxD5kKTQXMdD79byvqarGZubCIXQ/65bBP6UUBWCHN
	 TxuQbFLFVKIW0GY7EY0wfZGxKIwT/S14ebvS6RWbdce8DTLPejoPmPirPf2/zoRL/b
	 +70mwlgqf22M7OklLxLrsq9qFrlykm1sVAmAgOOqsmMSVLzaHyazSGcZ8rLQDDRejq
	 RRYVgVj5146Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6CD46BF9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963063359.5937.10159574525377966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e7a0da34447e0f3be9588aa0fe3f1257dd563bb89df06d48fe9083d655c3fa
Date: Wed, 28 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769630633
