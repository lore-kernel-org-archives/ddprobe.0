Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2397C1CBE87
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734473754; cv=none; b=uRwt8lOOZV879EgCth0LQQO99plFdAXHXb1fwzEmbiRmljygfQdo3JYfJiyu72117qpoXPtK1j8WVpUANldTQulv2dKZednAvhFXJA4o+PbvN3RP/V50Wci+9UkfnbdtxguVdAX3LrxiSRJ+lHae7aAjjA2CbkjVZtYFpv4KJhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734473754; c=relaxed/simple;
	bh=+358eihfLrxtrZa+6FmSsnnXSnfZLJij2Nt03ZkuZo8=;
	h=To:Subject:From:Message-Id:Date; b=bQEZDN6JZ6m8UACqOphYJGnGKcpP4700of9XgYo7hEd6PAl6/8hO4JpxcBd2yfoYKwlzoclZdScrU8qufKu5W5I4MGTYsi3WSzt/266RFuQo1jiIZ3vGZVf9YCVA7b6vhpeSGAzRLTwrpTThhbAW+XuobPDqtARQpnwjOUcNYek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJZg8qHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJZg8qHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0060C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734473753;
	bh=+358eihfLrxtrZa+6FmSsnnXSnfZLJij2Nt03ZkuZo8=;
	h=To:Subject:From:Date:From;
	b=bJZg8qHTX5zg/bOpqIXYhLgRU5h8dW3Kn10ZWEWE2VaL38PbsOAts5NijPD2pt8a8
	 LgHeQq0WFdsjuYxhL9DYzLy3oHpZDlNwzun1CkAnPsAnSYJpChp42W01JVT03zNNED
	 VosQYum0hb/x9wAD0xIJIkAfgsfvuw51QZy2OmO1tb9jBR31JWfhKUAuVJlu8fNu7c
	 krixt9bHFBOMoWXEKavaR0+XAH57gSiyBdYPuUjj1S58Pb5MUgcZ5LXWVRo9VNPy6E
	 f6GSABy4AGPh7W44i3lqcv2oEBNwjJNLAMwyrfI3VA+bTPp54iMaACmdavCxY2ftpI
	 UssHxreUhuJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D6E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447375360.3267.3090570138970620057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746087e1544f5836753126b904ffa3d11090902c61a484fef4542a0d6d5319ef
Date: Tue, 17 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734473753
