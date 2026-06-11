Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797F3EC2E1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781179594; cv=none; b=WSQm01xB2oafKouNmrllssncry1me86rUIfohVwOk6roGxdTRa3+9FccBAnpBPUt642sfoDw4eshIrp5Uk7CsHtu1NsJRDtM7xjZIg3xHQrW4QpRUgKereY7XcJv3dpN4bAmsf8F7qVmGr4MQh7pKZG3NhJfh7g/0YWD3AsgbVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781179594; c=relaxed/simple;
	bh=QeGCYyhHJ8vvTrJMx9uO3HpIG0EN1gnR63KHOHymknY=;
	h=To:Subject:From:Message-Id:Date; b=beWmfhSxkyh4PDu+zEjoo1NW1puH/RVI+gcJQ94EoreHBiJMTfpusbJdbhtjJviWqD8z3KCMQfL4fn0V8AgyGkzAxFJ9QXBIlxTqACtNbnD4JK1jNMD/V0rGbG3PkKM13DvQ+YAmtDiraljQNqerBBOT5jisgMzkkIfT2OZFTl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIWcAqsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIWcAqsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61A8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781179593;
	bh=QeGCYyhHJ8vvTrJMx9uO3HpIG0EN1gnR63KHOHymknY=;
	h=To:Subject:From:Date:From;
	b=oIWcAqsYFwVe3VH9jGcjRcNS8plrLYGZdNuuh+XLzRRcXoQtOLWz8shO3J1XP+MYM
	 lWN7GuCFnzY6XnCNTss4MKw3u0DX6WnQqBB4SDSWOZpGvIe6fjZESSy4tk1kZJ4GV9
	 4MloaPMY+NKJXSMogqcLbsbo7/jbTEZaOT/zKYgz8cIHxQvgH7dvvtwJeSeFYBFGsW
	 C//Tpk3iyaTvZRnUIoE8aYwv0IHO7tI/YYzBuYBGBv4oPbBAmVhRWmm1BuNP8WVpoz
	 +gqVVKqeUJwW0KENn5J5OrGeIj2BZFoo2ydIEXFJbXDy8yGo8X58v9iXXG2J37X6k6
	 gVZW1Y0XkgFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF31ACD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117959376.2428.17852775582203632976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e143b13c14d559fad040d6f6a43ba5e5b0007df579733b814ef18d20779c9a
Date: Thu, 11 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781179593
