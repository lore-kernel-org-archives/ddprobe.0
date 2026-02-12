Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246411EBA19
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770924894; cv=none; b=YUBUHF51boU0hV6qa1EA3LIAudlSw1xqKzGJJXRBgvluhRbwSLP64dc764lzrTNJ+wAeWoiMsQxYDirdPj9GM4sUPYEq7yB2+B9Dv8Mw/OB5v5RKbxjij6/5czZzSJTr21OSOw1hbe5fVxip4/HNHVvJE3DdC7g4UjNf6PsMVEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770924894; c=relaxed/simple;
	bh=AgBtG41Ytl/pgVqb7iaFZw/1J/WJ6O8eZuJhlpzfmJs=;
	h=To:Subject:From:Message-Id:Date; b=meGrjtm5ksLOB4xz+4VRnM9l3IN8w0kqsEQBL8PRGe2tCqFXZWSBbb9uAmR+sm+uQV6KcUc7ApQ3XxyADTz8e4YqvyolnOq4SZ8K7CXZjQ1Qdsbpt7wVY+vSz+8bh/9Sbw9FG6sea15GgRoCkVg0dzxTccC7wgo4JbYssKiZcZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVyhuI5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVyhuI5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5305C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770924893;
	bh=AgBtG41Ytl/pgVqb7iaFZw/1J/WJ6O8eZuJhlpzfmJs=;
	h=To:Subject:From:Date:From;
	b=IVyhuI5/ApMcV/noF/vl2d4+i1T2jHBZdjL9tdKnAGqUaW1UrKuuq7QjXlsdrikSA
	 9VHfaAVd9TkIJRETbfKH9CoaDhys9w5a0j762fnW6H+I+rhaARtkezlVOwPEv+/MdG
	 5mUVCraAJ/kun6wLzM/mfvtVOYIkfTIlWqkVItU1vxzQ5nktKj+gqQSqkvxsXvnDkL
	 6Zgc96R77AI6lf98b/Py1EjLiUXL20Us5SnQTsBn6aFxaYgQD5nrfguEMUBv53Tw8H
	 6/dx3A1wV4JGMsMnSnhQMkzCA0469i2eaafwMrxf510V8m+y7uEfyf+o4be/wgH2DA
	 bHepy6cbJ+fiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47EFEEA84B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092489365.664.10546221704687956240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6c2d2e29d9d4cb9a42e76ae398d458b330095d6eb0da945230b6d2fd9fbc59
Date: Thu, 12 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770924893
