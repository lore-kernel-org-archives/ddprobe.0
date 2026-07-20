Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AFD3090DE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784516314; cv=none; b=lJg00Aqf7lAuIQN3NrPz9MeZruM9DyhckghtHHDcxxrrdtyRXbu2ayoeYWxXlzl2VXhyR5/i9hs2LsDzCPYnVas/uPZrv8o81B9RKH3+GvyCmOB7/PXNrNvoyhwnDtzkue6QjnCZQp1hVWOvHrpJTKbqZezvThTbOnzn8UHhrq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784516314; c=relaxed/simple;
	bh=AwgmxC8B2sPCMbIxyQs/ehqKD1ldd1afygVt4+3FSG8=;
	h=To:Subject:From:Message-Id:Date; b=ay8mqPE7u8puduPNhUEjGQs8yB7Ba/QIAKtbRc/K12xfJbF/UukUV7TOYtNBFV8eaq/Tj4UL9cTG8OjICu71/zEZVG+UNf0iezzvAKwZYYF96BbESpt8WERg+DSA/8TQBj24nIwpPPlv0cBW8rQhYrhAPMN5iOtmk0gk4e2lkCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfX+YH2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfX+YH2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9306C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784516313;
	bh=AwgmxC8B2sPCMbIxyQs/ehqKD1ldd1afygVt4+3FSG8=;
	h=To:Subject:From:Date:From;
	b=cfX+YH2wjT17gMqNIJoNTYWpzAqL/FGIgzoNWvmi9B5OieW7DiN61ETvFrYy3zGrO
	 NyyQBGPCX/fz/VBDeSqF5mOdDOFRoKiUlsbKApQuq7W4SKKLs4o85fWSYKD1cm8vWV
	 o43/9Ei3lWVOB75Jgo0DG4ktS2GVLLe5FNK79REt3TbQfZKfcsHLsiZX1Qzk2tBiu8
	 5uho10nxhGBB5LtTz8kCSwizQUT2xJ7zB+/sI9FZbkuhB7rD4IulmaTOWawIa0JW9/
	 R9AEE/KTGH16pj/2nJDq/Xy+EK7JIfR5UQri6QDxTgJQjpn0IMQSUhZRViNnAmhHrV
	 LBALuIDu7BFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C82C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451631368.9226.15578793504228189970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1b8bc3d39f23b41ceb0a8971a72e0c50f082e934ec4bcae78ac5ce39c183df
Date: Mon, 20 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784516313
