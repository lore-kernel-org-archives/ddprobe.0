Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7C232395
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776913654; cv=none; b=Sv7K6FI3zyyecJqMlNXcovj7+5E+jf7ymwyMu6XuV0BBhfn0C+zVyNJt+zibU3H+c5j/2UFmnkfQxhoVI85zwk6OLGoXjgxUpxu06RPXn47odS0fcohQtUN1MT76KYCIRUuv0xWKiQfb1nBzqGsGY7juSu6R1hDlZcITTNzpx98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776913654; c=relaxed/simple;
	bh=W9YRWgt863Ig+7Z9SB9kZZYQ5bkp4bh2xgbJueppvBQ=;
	h=To:Subject:From:Message-Id:Date; b=ow3LHnwQnXdr5zuqZe5lF71ozuB8+TlNlelM9859+xRJaMqYgKU/HIIAJ0xxuvSMiwopUqvw6RCB1bfSccRYFKtoIEDGG9gzCdJjfY/vXsUntfOwOmFApIVsuAhUuOBUHhRD+yyYTwo7OHfcybsOvXXKwWXInJIKg0L/rm9BEXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of/zscHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of/zscHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCBEC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776913653;
	bh=W9YRWgt863Ig+7Z9SB9kZZYQ5bkp4bh2xgbJueppvBQ=;
	h=To:Subject:From:Date:From;
	b=of/zscHZD/EUbEPd3bJcEnNQgieiP1+KmRFGYsFHj7LHTbYeefGbeAnG8hi9OZFYy
	 ipk8lWrJIffFdYjZOKx0UjtJMRXhq6P6lg87IaAjbhdI7fVQszIb814z37bsv1k3zF
	 IYhlTAinL5kE/mzib65zSdsLw3rdlm3ggVxls+KVGCMWEDMvvkynvDiy5A0r3O7zwb
	 UHQhLfnrcDQOBL/zMGF7VwFsR/biTbLTTjeEAZVo50MJHmPoDAZoIyIUnXfELyZv/S
	 kXapd/LsZkMnecNGJ5fZy33TFpymorwUcIciiLHcr66+poPzfScmUVCy7z3RqZt+qd
	 +CWkC/6NbnCoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AACFAD3F0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691365368.4172.71044408335026942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc3579d982dbeb4a7f754520745fafb9627d3465b2277c38ec3074a47668e42
Date: Thu, 23 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776913653
