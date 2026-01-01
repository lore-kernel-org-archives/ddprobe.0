Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BC815746F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767245634; cv=none; b=I60dO38ewZex1tQmvdwipPystCofvFWyFK2VDJHsIS2mf973T9G96rYGWFG6Uhsl/6xSi9VEp/SpJceQolQxYIRsmFO4LK7tXqCOdweC5fzElEg5EgIW1B7ou9yQUozJEVeZoVrNznhluZGK3+cNPCuJyxpsGMSjqMYrlMV2ofo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767245634; c=relaxed/simple;
	bh=Rl8/u5LxOpLQ9GKlOOJl8xGlpb0k7H90M4WE7XsCS9M=;
	h=To:Subject:From:Message-Id:Date; b=qThCJOW5MaWJhWooqXHmtciFz9udPpyjfIXsxTmJdxlmBADQEWYMcZg7mGb8qLbA4QV5nXt2YtKbpaGHzi+8ZZ0bMmO9YGjpy76VTs94QtfyP4Hx0hCZGqlI3q/AQ0jdxU+gCvK9M5V3nT9gRMR2fexeAIisGKZBDlSfiS53mBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezkCTGJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezkCTGJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70C0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767245633;
	bh=Rl8/u5LxOpLQ9GKlOOJl8xGlpb0k7H90M4WE7XsCS9M=;
	h=To:Subject:From:Date:From;
	b=ezkCTGJxkChV52K2cZKf5AVSit8Q8/4/EIgX85eLI5W1HeL8Sj5vMDZtCEW6I2Vdo
	 JXwRfVgZX4IlrHAozQC0M20Gr+yubNg7D9x2vmUm7eXfZYWWH2aqTPFm0rI83Go/u1
	 15KIL8hoSkxt6OkXY14/a8zf1M1a1WuR6+mXYH+lx8WIbZ6q3093Yl3rcagRzygr+F
	 cxShSOYc31fXLn5vp2DsABNdEqXCDtsIvoD0liLTQkbMpNs5R3DR85scbl5knljTq6
	 5G96hFNCvSvJ1WVOcQB96tzeiXaFoLXoGC8E4nfPcGh4xGVfH9Z9EtUMGOsj4eWYf1
	 Wf9eqor7z5wHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578AEEB56F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724563358.28376.4357261940823030808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52031ba0d35d28334b1f6e108222ec6afeaea0c65a387f33b12bc7f5e0d80d25
Date: Thu, 01 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767245633
