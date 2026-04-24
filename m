Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391AD13AF2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776992254; cv=none; b=aZpid9mCWyN3xYBZjiEQSZMzAAZxlspawCrSKruinaAH+zl/N5xgJ164eUL8ei0T+HtYmMjf9aOyMbES3WPLhPF6TTHDwFBUHR94rB7xsz2Rbl9Lq9dv9FSPq4YCii1qlO6Gwo0iyt46oxE7AqSxG627s7YGScEyCduexF36ZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776992254; c=relaxed/simple;
	bh=Z6ctwQ4yRBzMINKAruBMuhwhx9puvHgBh2Y+21V8/04=;
	h=To:Subject:From:Message-Id:Date; b=Mipv1GxUhc+EsUenhA+lmKw7XXF8AfBZvjqJwUi9YjC+OSmXAuM5Q0OLLzurr4mYu63r8jr5W/Y32kqNDQatHgvwGlE3hEeQt04Y8hdH8gRaJw9ShI3z6uFoXwK1v/OV4atWJCyyYgToupOE5gEZNdnMF0tK0jrmV2LKUcvnQaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZU4VZCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZU4VZCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDADDC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776992253;
	bh=Z6ctwQ4yRBzMINKAruBMuhwhx9puvHgBh2Y+21V8/04=;
	h=To:Subject:From:Date:From;
	b=CZU4VZCsyrkNNW8+XfEaAAjSsWOx+FR4sruQ89Knl7NH7us4LIilLLIR4veS+7lhk
	 LU6cEROAXBiHxwNrzuDag35oBc58+CVFNofePuw0+FKV3rTt8hsRJ+Ear9x6I1eI7G
	 YVS9+Yh2uxA1qEB1/8MdgACFtzy3DCNQG3wr+1Fqdn59/Dr86A0OPYceWUrddNnFj4
	 q+q220D0MP9CmjNzaCjuUhkJcFJsBgkzrQ2J/krP8gzBelvOKDBTkVfJmuM/zCH9YM
	 1FWcvEVSOnb+1JGgOu+cPw9NA5F58FF47tMpK9E9KCHj7Dj4A6efNB4wdlPeJzvn62
	 MB0D6uMzH39oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0DFDEE28
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699225368.1590.4427690587341653746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33cde054270a0c8247e6c41c07a667e418ef8e4f5d6a351c75162cc014749fb
Date: Fri, 24 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776992253
