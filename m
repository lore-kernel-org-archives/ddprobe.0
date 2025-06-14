Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDFD2E11CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749925195; cv=none; b=GZ/eZ76ITt4No5JGMPG8R5gpGAo4PXCT6x8p6QNkgIo0LmvfF/lm2YtYvuwr24Cbw7qHjzUfDXPIU6vfWpYm3DnuGkdP70D9e/qCPCn72RvPEcIrqGT+CHwQWJVxCOrsTbtHxsTvAeFXwpDGkzwi09aa+atL1MLMS6LksvKDe/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749925195; c=relaxed/simple;
	bh=qHVREzQFvqyUG3QSRg5PeASBLf8Ze1jUZqRe6371zug=;
	h=To:Subject:From:Message-Id:Date; b=uqRraZmCg8hP/cKu8VBMkzqP1f3ZdFufdv3l9fHBPq9cO76cTlU5X+k6QOfvGqTK5TvXNFcGQCOnfzkZer+BxEYql49OeLlMX7NoDjllDk8PwGfA58v8S/vD5Z8Rn6Iot/vvbJ5myILxAABgNrTOv8wVxcThZBUWD+7uMoCv5R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToGFU7mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToGFU7mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3711C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749925193;
	bh=qHVREzQFvqyUG3QSRg5PeASBLf8Ze1jUZqRe6371zug=;
	h=To:Subject:From:Date:From;
	b=ToGFU7mhOXqAR6K/4JUGo2d9K9RZr2V020q4rd45CC4r2mBK/erklIXUE4parfYau
	 RDdgWHVBsUF7yZzQvv3m5oLu+Cs9fDwNuBbqyIQU87GWfkmT0h9ZTDSzRumvnrPxCi
	 WPBBI666LRyYx1lnfSYgA4QEgpMzoN1s501VjBA1wSPHVjnQXSDnae1UwdgemtstnY
	 /1WvDWmEQ57Xs1XjpVU83/bgjEMdtMN/eZnHu7k3s97p2cBOYV35lrT+VsfqS+iXbx
	 XmUn0exjjFSMoh/bBddcaNzkmPfBPv0d16KDohbD7NmgKWjc9q9ILdW/HLBPUtVw9B
	 KTWtAzAP7mBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7BC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992519358.30924.17877307031676481860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed74a47a9a96866e51f05c4db9b3f064d7ae091baa734d21d6f59c175f967a3
Date: Sat, 14 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749925193
