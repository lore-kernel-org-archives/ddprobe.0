Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A772690C0
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771193694; cv=none; b=PboQHe5u9imw8SNaDznMmwLEhXoP1Zs3aH45Ne9sILL+m7utg2ablS3LzWbHZYPFKgwiY2sgJmQpX8deR/tSOP/XNqCn4GS/OOUtJHGlCirDc2CkhUtM2sHcXBQQfL1ZzWOzuu+Ui4RnLvc9vSZY3eaVtDahmEUzr34HP/cl1P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771193694; c=relaxed/simple;
	bh=/D1tWaLdMxJyeZOfGgsBK9ofkSvw3MbhNpxRTOqZNKQ=;
	h=To:Subject:From:Message-Id:Date; b=n5peJtKZaDYk2UAIsHHDvCpJNPXh2xZQXvIOOvsTF8M9rP6oOLz+Kg/jpOp8PmvpU+91uNU/A7qAMatXE0v0jFd9F8oB1fhHhN6ZVvkijQ23wcbl/HDDl4cz257DZ/arrtcpjDRqikBbtSlJpDJ3Rp7nfUlwfy0IlungP12uAsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfIosBf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfIosBf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF53EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771193693;
	bh=/D1tWaLdMxJyeZOfGgsBK9ofkSvw3MbhNpxRTOqZNKQ=;
	h=To:Subject:From:Date:From;
	b=cfIosBf+kvl/cfO3E+aY0WHFCvFuWtrFeCG6NXMN3xJjRam5wmYlIadYXsZvtEW30
	 veVgcjnUIq0pFNCfS8FvbvvaR9QwBuOOCXp4lNudqdhqyjUNS0uuCdJgk+DoEGtXuA
	 4F0FulCY4n0B44ZvJRfs/AELdNif+18hQgVm5CWJ5+BrwjCzOnplDMCjgI596+YGqr
	 FZCJexrycTNWZ1o03sam66R1MhCgPwvZ7RwG1n9WpX6CP6qKeXSVItNyLxhFde/Cat
	 mROnDawyw0snhaBKBrPYVYdpJJEdnBM58rpD7YRK+GkFDhyZK4r0U32h096XzUuW8N
	 lJCKUQCR4T2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35E2E63F1C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119369364.24480.11118819958368020881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2addabc07b18a6b99540ee9e82b5174ef666ba0cdc935ec01b512b9cd17e471
Date: Sun, 15 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771193693
