Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5639D1A0B06
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717020863; cv=none; b=kfs6M9x75LwBdR6RO2gMWHX1GYoBUP2T0Xpae0eQY4aMwCefGqQ/ilVa1EtOfflrK0oIK+1gKT5Kn56GKS9GrdsdypS/AoDlXVKnXs7Vz4h7B9RBE2iAIhesr8ipRBcwEQX4mHt3CChkUHZrYQVkCjxIAFVSP3vvCenVcbIUSH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717020863; c=relaxed/simple;
	bh=ixZPedSaA2Mc6b+5gBCXv1v2raVVTzDIRVQ9cfyrmQU=;
	h=To:Subject:From:Message-Id:Date; b=M/ukq0J3lkGern5Ruqu+Kj8YoEMBi8lf3rV5o7NVDLSyboxFbcGrC5M9fLO0fBKq0IDtfLuvDTk6wMx/oPz5OpLD3tm86P0a4mBVZsExT/4CLCKOzn/SgmmwWWLB0pZyp7iBXjQyFGmBwJYxlMfnS+D9gk6BQ9yqawYufUAZdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ8Fd98c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ8Fd98c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF3C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717020862;
	bh=ixZPedSaA2Mc6b+5gBCXv1v2raVVTzDIRVQ9cfyrmQU=;
	h=To:Subject:From:Date:From;
	b=NJ8Fd98cdqgEwuNmYO2TiEUJP/rWm2xq5SFec/LjAaXC0MvRzoG0MWZNcQpHSSSy0
	 XV77HQ5gzxnqKcG2S8q+H/xoegQRZtH9CWYioa2R0zAvmmTu0lkIWFHOe1S3b4f1ts
	 LS8rlcGxvvxLxK+O3hMdlWYs0wkfSIYJXJLAe0f0vR8et9h8G0Z5rJ/nhDg+HloCLo
	 K+ujetz5n0fHlP8W06PRkaFAiPblNaCXgE10+jzuRBN1mdAByci3T1k6fmMfezp4n+
	 Dwf5abTJ2ckeTVXPe0u3hu1h+a3IFF9Cg6qYcWjRIjocwFZPOtsUGazF25suRhwgYr
	 z3ds3hGJO/AqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE2FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702086276.12714.3731525062032741653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a8b677040ff87c0bb531f602f9f2f9b75a656ac9060941e7b19947bf5594bc
Date: Wed, 29 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717020862
