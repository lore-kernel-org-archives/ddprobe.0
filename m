Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074CE329F1F
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758646794; cv=none; b=P05rgkPzQvCjLcjkwoZROLhzB4ImjgIFcA82qxxJ0m0M8PH4KmaaYGy02wMCrbO/XNgNLxfuKpTRcYs2KrPOYfh3w9jYsWP7HNT8mnaktsPfOyf/c2ditC0ZzCOfTIPKDHmH08HXRvORyHVwzI2AbSdFOPK4iKMgm7LnJAdbiSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758646794; c=relaxed/simple;
	bh=mES+bzeoisy78tmdGdIKqQHv61RkDwKI0UDW9y3IXa0=;
	h=To:Subject:From:Message-Id:Date; b=H8Xhj4NK4Ek64qIMTyCGwG8RM1QI5I044y3DT8T8nWs02wh0VNQRHzCzsgYn4+zPt5vKjgodkdeDE4PElyU8UAXiiZEDiXWAi5v1KFzZCTa0JngSgWGH5lKdaFlz/V2UorB3hzmRdxqRqMxewLoqNtSp1Fq2Z3EsFLKFu3I6vew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMI8NwO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMI8NwO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758646793;
	bh=mES+bzeoisy78tmdGdIKqQHv61RkDwKI0UDW9y3IXa0=;
	h=To:Subject:From:Date:From;
	b=PMI8NwO/Jyh09q2XISkap2fuIEGP5l6rdhqRVN+J/OSrTCWkgxkevYVcESJUnU/LY
	 s+XGXzVhSWwM2eRWYbwiRnRL1HU6axrKtWHvZQvPR1HRpdLxm0xOwgQb2FCHNWNIC6
	 mrtj5FqQgryHohu/oWCXrGbOgv++QUxf7WitSki7XCxjNIgG6gpMozo/d6A/Q3mfyH
	 wjPhEQk8cTsInRQXVbak0R4JEPXTzEbMh3ce0nFWX9udv+EKz9RnF5hPYuTL/5QFq2
	 ShksFHt6KffaXoL3Nz4irsPpxRKJkykYSze6Tovrm3ioRqwi5G+Z+xZbChWTDuFC3K
	 vaw/4IsSZHDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E52CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864679358.21822.17305503910236453710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a341ddb3957862f4e5986a07a983cee61dcf63979d91d3acd9b7996c295517
Date: Tue, 23 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758646793
