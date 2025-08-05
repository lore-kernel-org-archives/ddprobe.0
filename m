Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DED528BA99
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754409594; cv=none; b=dD/jpG3w8AtVa33ptIP3bVkfuG/uG0U1EPVh4RNIv5V37KAqGPoy0Tpi/9cho3PIgPqGy7RfEbL7Cjx8RvBzOAfh1QAuMzluCBXxHK5ALPHa57iad6ROnThf7Q/PFXHq90M3898vHcaYkvkjMlmrcYSD9N4rQ23p6c1BE4suwUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754409594; c=relaxed/simple;
	bh=fT7mwYExt2HphGZqaZmJNe40lB53K+ZwOkFJD0wBE+s=;
	h=To:Subject:From:Message-Id:Date; b=pJd1BnCR0hoa/RJiuKxprvK8qNnyjyFMsF3S3vQssC6GyVOuCkUgldPRWK3dbUokO4CYCRwgsbQQnuyqaMzEoDRNFw+JqoJM7t5tA12cSSahuAddqNf6ndr670Tawm/2fuZGk07Z6XCm/3nWiUTjMW/UBwKLbUnhvRHv/zT2DEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAwkhVlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAwkhVlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13C2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754409593;
	bh=fT7mwYExt2HphGZqaZmJNe40lB53K+ZwOkFJD0wBE+s=;
	h=To:Subject:From:Date:From;
	b=KAwkhVlTLVBAFYY+OHzL+omCEwuhooM6HeerhG9m1SnSDshcJYCey1eUSNRcfmdi1
	 C/KDZlSZKxQLk4zaVloqNXfq9ya9nH2/HiSw7xOweGw7S/Ut1Qnm60e2D3TyJgNphz
	 7fSSTkDT+dnOJOyWesoYPh2jwZfMHKKfHOicDQDX279XN1EzaPwAM5slXTYprsr0HU
	 e1CGKsjprA2YXFG8PutCzPBXcROW9TCP2tR+gHQ3AhS6YWQt0EBv+TzbuBVCup1KJN
	 zlVhOMCnRaViWDG3ESzoodu5c+xFdbYjknQ2n9clhsEo+Tu+3Q38B6MPr8A71kGRxL
	 CfjaMLAzS6wag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05E8C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440959364.9486.4628460743156208616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3537b2cf165bb20b57cced533d750db9bc7b764da5dfda80e1b5151e2af0432f
Date: Tue, 05 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754409593
