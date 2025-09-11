Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C28422759C
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757561394; cv=none; b=hjPIWPi+njxzjkzeZGKNFBKV3WSJyImm7292f/0BqYDFgwoVXDVtwOhTeYtoSeIxVcIXqjSEco8WXrNZNxUA4uMJs2l3WF8je+E6kuDLHbFfSW3fhuex93/oBwLWSGITAonvox4jmjOsXb8bx0T/dL57NMil3tGPakeQq6xNdHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757561394; c=relaxed/simple;
	bh=5V1a4APEmtlSjxf4KJkMuPvmz8kFmjB7Cq1jjf8XlmQ=;
	h=To:Subject:From:Message-Id:Date; b=WC9YryWVlRa8ID/RaPNauB6mMWUaYP/IIHBKM/nDX8dSXrtRbgb8qHtsHggl0ffMIQlEg+7w8FsjcooMWlA0QEAVSOPxlfZJqkomE1HYi9NkR0dfc6RVlaKhFFjkNc7Py2Lxqppz9fq82omW3jlDBPwBKAbNhurTyELii1m3WO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSxjTqLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSxjTqLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C89C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757561393;
	bh=5V1a4APEmtlSjxf4KJkMuPvmz8kFmjB7Cq1jjf8XlmQ=;
	h=To:Subject:From:Date:From;
	b=LSxjTqLt82JYWf+5VD5dSOA9Pq8ZJbswEPRNXmf17uJghIAt2eKz95CAd8U/L3isB
	 galbUTZhZDRk7yuGq80LoeBTzdjN9fsP0BaazZMlEzQ0n7gckei/vw7/ovV8HVMHTD
	 BDO3Ae0ouafb4Tuqmln/ofK1vwT8O7GYOPogB7I8A10wEp+DE82iFN47G71vlIWEML
	 eodGvpRO9Pa4rvCjikRs0Fi1k6DtTsigVzZXBGAvrfcZAw6O91cocRQuT0mdBgNXen
	 g6v+TDrtPMszWQTTFRcCX23I31oLiVy1KDRbjrQP7V6bBlvfX6sutHHgNVLCpy44mI
	 a9Cc1IiyUqMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F249CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756139357.28731.14575241035714587081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf08276d2d05ca5520ac15abe0f4e9136e5e285bef9c4dcf8d0e2d023524db23
Date: Thu, 11 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757561393
