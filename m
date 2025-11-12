Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C9D2FDC5C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940394; cv=none; b=avYDBXqC+OnO9gM/z6HP0fpUfJwfvai2y5wOIC/x/R9YO4CNzosCmj3XKG9+mXWZI0J62F7FUy3qSIq+ql3eKxQRcrjW32tGXg+KjpFBBWumTylS/kOuqBLPIF1W97FEnnFUYYmmbBr5IsTN6lxbRAiIgC0mqFKcNdp/59NJKDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940394; c=relaxed/simple;
	bh=bLBflHfH+QOHWYurpFdjZ3IIvUd+LzECQdBzl5L7JyI=;
	h=To:Subject:From:Message-Id:Date; b=DK5wzPS0XOnPlbwIug6rNaQjMDDPsYCszYru7TNtZDmrfWWbDw12cBnMlDVMT10+6ibQ8cTLmn0K7IGWBvJ0aGlW2MXOeMCbALnrKv2M+ibPesiFrJHRmu4V8mhWgugCu7DcDj5BHv7z8bqL7O9CbJejBr8uew6nfcAQ35HgUsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJyzgCgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJyzgCgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D74EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762940393;
	bh=bLBflHfH+QOHWYurpFdjZ3IIvUd+LzECQdBzl5L7JyI=;
	h=To:Subject:From:Date:From;
	b=dJyzgCgfXeGDT/Xikzauesp9C48pkfY98mb+/DrPQ1gaY7TcSMqae9oZ9xwLkCNDg
	 Vncl0PtADlEe7hM7WbRo6YzAQdPTnH8AwohydU72EifvpDCfYcGNW7yII3ghXcPalW
	 M2mtGpxbPfqxsA5Fp84P8GWOfhRgbNHYTFk+1LaGRDYt+2tuW6/c8Gw0591JVcEOAl
	 cX0yfWUndoUrI24o27JSVgAgkKh41yYhQyW7J2yvMHXLToJk6jTFYd8D+rBY3JkxiK
	 /OxkA0kpN3O27fj7iC6/YPe72zKevIIMuGrQcJ5939A8tv9Wpu/HtPqm3vtoge+XlH
	 48Dwk9qx8dBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7DCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294039358.29306.16020360455195826787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4abe7f7e124a56f63c870703cca8536a4113d4e6f555bfe3921e6f9db4d047
Date: Wed, 12 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762940393
