Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB8A9473
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716654863; cv=none; b=qYufjJ0VXgvbqzk8V2XvPOFBkPFhvOI513dnMRHpsWC96u3jppbZeO10vSDxmldUepRZN59YmNDq4d97CfDLLgPQZKTcrZIJeadJxPuq8mIFFawOvZo+HompUmwJT10m7HSQWjYPzN9xQbneoeoVFbByaYutBcQwv20aDon17vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716654863; c=relaxed/simple;
	bh=KPtJ78EJqMgUmbJdW7HDy8uDlBPhI9DGIT9OOp4hsXU=;
	h=To:Subject:From:Message-Id:Date; b=kBtPpKj/rP3OFTEcW2BHjWdpcttSOzT4ldN+VU9GdjpVBBJ5kJp8SfkRKl+ENS4oqQsNeaWZbclwaRzrBURE4IZ++Yc4hpXwn4WySr62DNs156Ug+yruAJpyxA2q7pIJpd/RI0HL6Te9vOzMElTXDu2JLa3zqmQxNhmBesgtD7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCCBRKZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCCBRKZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FA6C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716654862;
	bh=KPtJ78EJqMgUmbJdW7HDy8uDlBPhI9DGIT9OOp4hsXU=;
	h=To:Subject:From:Date:From;
	b=HCCBRKZFrj5nA9DsBjLw711VmTqjtlvN+3Auf5sU/VFmbjQUy6ibnyPVDFeG86WTL
	 n1NEo1WVMpkjm/6ivuyX1hOEIifX75RjsbllkOQlYQp6pxUgUSSplptk/mFaDXdMS7
	 /v9Lfu86UHj2YQV7ttNUG936C0BFf9rCSqSr/XN2nza6bJEVv5GvGhCfe7HBWfplUF
	 aIy5n77TGKZsU26WWp63BPmLoKCYRLkEeZ7BEWR4vR6HZPahQfnIOxYeZcEDz83G3e
	 OdURiuXQSR3KNqw4m3/Zs54zYsRxYQq1sbgJhGz7czwLhM4qM00m8mEBo3m3o7TrpJ
	 jrVGu+i/BLPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8619C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665486279.8474.17068527940425100424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac6c964e0809cbb53f42be7d86bc47ac281e66008daf079d17d89034bfbd437
Date: Sat, 25 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716654862
