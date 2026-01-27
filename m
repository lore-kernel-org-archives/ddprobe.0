Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D60D1FDE31
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769545434; cv=none; b=OXza0OJDF/wsW2VbzcRjI7HfQxL7EAdS0LCbjFdgZCvBy2qD3/Rm7xjKzKvd41lMF2wh5V5mVCXvghwzTOmip9aVC9wR9yfTYAPzSr9LwRRiWw67bSlOQI8aEcPMY5tE50B81JULKJXfjsNUaUGwjGEmMQMRg6c4c6TyOYAG81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769545434; c=relaxed/simple;
	bh=3JnI8iezndG/lkVTIkOAPOWPCey9pTKa/XmkMkeXMws=;
	h=To:Subject:From:Message-Id:Date; b=HM+pO9nO4AiH7G/78QDzqD4NLM8hFMFgXVp2jbMyOiLbcRfwZKxK6h9TuWIyyix+KZXs/HnYrFkfqG3WqIVlsg9Z8ZAuxevout/KiViQS4VnnGIj6s6/FvdtE6U0SqfFQgJFmpDBuy3SxYLxbik37ST3sc0D/dX7SGIFX/QZNU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azqmAu4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azqmAu4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C4C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769545433;
	bh=3JnI8iezndG/lkVTIkOAPOWPCey9pTKa/XmkMkeXMws=;
	h=To:Subject:From:Date:From;
	b=azqmAu4ERl5UaoSJZ5aKclAP5CZdkdIPr0GkkF3apdfdArRFJ8utC6BMHxY3gU4Dg
	 Ig1e4uzwEkjBXnFT+O20JYflnlOLKLKsazTAn/l3m1SfpkInKm2jdiE5hAs2fJq/+i
	 tV6SHFwUsn7MHlRaNuTD6ohTuhP0qpOirAuhQq0imDiJ2aGpjf/+ooV9cOppLEWS2U
	 k0xqDFe4c+JkZzHvfYQpNSX51dpjt7i1TfUfJraHjMJHjLfOXE5s5QRKbZUMm9Wh+U
	 jYkn8VLmC1X9Z54pnWCUSMWirifMRBCGZ8YGo8dKIYl0AjD3Q7TdGstK4UOD6a0WPF
	 5jOLtuJ4kpZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5DD2FEDF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954543358.30959.2935113807920475192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5deb879a11577c28c2c38141da1a310222c68c91a830e3b4e06cdd8c51b865
Date: Tue, 27 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769545433
