Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA7A1CAA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766764434; cv=none; b=i9xI3FkE74sW8uRJ9/oQoxwOqMA6dTnxxqTxIT25K/Z/IAvAt0cFOpC3JxXn0kbMeYrj6Q99bQoUeozRs7D0V2ykwtcEwQm1roK1qSzPedNLb/7ZHmizVhVueGPMxQrbeDK2la4HqJ+n2oDuEiOtWxvt7BBXyWTyqBJAB7XsfEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766764434; c=relaxed/simple;
	bh=EFwAzBf6931Xsi0ZtuyoedmOV78hkem5rbs+V6++WyQ=;
	h=To:Subject:From:Message-Id:Date; b=j+2tZuBJpvrQW5CrjucC0Ug0ChsRaYJDbsxqqY3t3EqtBVljXRHYG4OYacFDFVgcHLT5jq3m1sWghGmSrtVJJzhRjQ6jm783ZizZy4+9gwJpMI14HtfEHEsPGXgmfq7Utr/u/2sT2X2/uRIwglEzLAze2vMw3Oe7ygSgGIK3dVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZcZHIG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZcZHIG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA7AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766764433;
	bh=EFwAzBf6931Xsi0ZtuyoedmOV78hkem5rbs+V6++WyQ=;
	h=To:Subject:From:Date:From;
	b=XZcZHIG3C3KhHbuRb3vCdTpJLJrlhImzcJ161rTlW2Om74+TxAjGnnsMlKkTtIQNn
	 2Nqq3yYWLNEtznfwPAv08LdM3e8sgxqJKK47zzV76oU7ByGu4CvABYnqdo8ODg7mpl
	 nQfYiVtBtyB1iPN1Tiw6u5XKu6Ms4vJ48EnmdCRZNAS5rLvkMnEyinrT3yBk3aTP5K
	 KGsibCW9Ob3iN/8vbwE0YI2lpaMxUl+nuya7QeSg5CMW7U3ayT3nSv/sHzyoSx21+F
	 3yILrVpcXAsIAGC0FdrtEI8M1cielygBfXQurP3aeFi+8Y2JU0kfbhde1ZIsWmzr5k
	 eMCJ7437jTLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA7E8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676443358.571.1779373666964610707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ccb97b17a3a069ffe1226d0d5bb34977d13e9bdc77b4b9a0970c1edc5ce01f
Date: Fri, 26 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766764433
