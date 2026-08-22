Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B83D493643
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787378434; cv=none; b=cbNQKgm/GHr4io3g9sflRwcQQcCdwOQ5Cc1cm1P+j5gMCFegQRI2G+Da7YntwhkI0IaY05Y1T21xOHfa9RNGin3/Z54xmMq25nQx1M/SACMqtKBhMGNEY66Fp9e3P9lHkj/e1+YHeYhv563Da80kmJlRgfqO4+H8AzupQK65Ync=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787378434; c=relaxed/simple;
	bh=/ac6CqVZTWnDzFilRHE5sEGnqxrAN0yfCyoUriXdBsw=;
	h=To:Subject:From:Message-Id:Date; b=XtBjBQ9JWU/OKuHRgV0qWds1kR3DvisQquunvvW3pnAEgJJjTgLmKJYgdYsc79JvGUWDwXabQx2tF/FbZdiXQO4v5vmvXp61jXAmhSsr38cBfGFSeTy42WbW0v5ohBaMzxs3QfJdRw/Qwu2++y26i3BER1z0Q7Chqi/CU6WvEks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1KNrGZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1KNrGZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFC7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787378433;
	bh=/ac6CqVZTWnDzFilRHE5sEGnqxrAN0yfCyoUriXdBsw=;
	h=To:Subject:From:Date:From;
	b=U1KNrGZ7NHKUY3PSKaCkwX0Db1Oed9J3YsSF+yb644lFo4uUsHKVbspC0GKCjst25
	 7ijDneHSZJHxzT0jV+VzoLoUrwzkyepU+aebEbSkp0KcHD7yLanTkJet/cKDsusegd
	 qaFkxy1TUc+Nm+dsIOdkCwyt2Gmd0H6JhnYz983W3563ttdirQ3LDyK/ljBJ8+rxy4
	 JhbJ489T/JtSFknj91SndvGO+CkJxsj+AGt2LZfne8wPpoqMyXrQMsKPuhod1F8lST
	 yAQw2hGg7ammBXOTgvgq4j7EboCWc7tbCBcJRjN8XbdNilPB1mZUCUaVnwzN0lM67j
	 p2OMQitucwEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B546CC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737843370.22810.11957650672420473463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86831b3f19f5fe36b80abe8b3c5f5262b133239564c6f247768c8093b8f1bf86
Date: Sat, 22 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787378433
