Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D6D379971
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769771034; cv=none; b=YJqNubFpU7XaP0cFaFbqHMs0nO4rmCVklMxSIgsA19BDrK8OIu9rIO0j6Sd67xXRa7Ij4FQyh3b9mDaayH85DynOlK/TPqXfwzHW2LT+74zebmIhRUzwhd8oe3GWzyfUyxxxVhJyvhmJ+QQLb6aZV2Ov17XrpB1SInrHhF1mp7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769771034; c=relaxed/simple;
	bh=wJkTRF/NNCZrDLec1uo7PptdV9zrwYi4MlRCLkJAlhE=;
	h=To:Subject:From:Message-Id:Date; b=tICgLeM2SSRHbYpyKi3/RkxEC3CRqU+4vBMi+S3mpj4cWxKbM3EI0h1UbXD7yn4WKN0ZryyxJ/RpeC/xs7OExqaD31OWURlAY+mM8elGp+VgNcALJFjqqsEQ9JYZXB9YfxiyeaLen1CSaggIvacL3lLul+MvYmB1sZZK8V/r9VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mrh3Ij5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mrh3Ij5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E7C19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769771033;
	bh=wJkTRF/NNCZrDLec1uo7PptdV9zrwYi4MlRCLkJAlhE=;
	h=To:Subject:From:Date:From;
	b=Mrh3Ij5yVIDlISOrebDwt3DXPpgNX2Xz99WOtUGNQlAoWEi42osuU6Q5jPBxoYdv9
	 tpLX6OnFaWjLxBco1Qa5KQPqdRHjMfBXUp4ANCLKAwkKCN74F6GInV+8CDzuw1rG+S
	 OFFxlSf/F6eA2FHbCpIKQFuydAqgjAIpm9k4LNdx2mRvTxPjY8eJJdhK60AOtbAFqH
	 FnFg/rGmyz+VKUkU2nNmY5Xo7sq8KwnL5YRgEeORuGb886/vsulN2TrQUWo/4k7770
	 Tpvehidu/A0qOAqbE1wUlB5tK0xTsEahACxFyXx0/781lSwI59WMXat89MBAzyrtXP
	 yN/SqjVPKUmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A12D49C92
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977103358.17297.8118355515068699836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2bc072def32046ce15fc9eae6c37c28774c6d1e4f438227a9acd973217e61f
Date: Fri, 30 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769771033
