Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42274449B19
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788774034; cv=none; b=KJmj733hBb/8qt88uPvE8qo2FJxa7pK7SD20MTMEmys1GlDVH123V9PqsvufxL2iYm6PyLwJUw3L86tLnEi5QaQo1+whHO7t9d2u8VYU9/SUdGgH3GlEE0dgo4SSrkMDfkQD8cPp/YHYpG3XcZOt4ackINDPsscDhaPszN9aBSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788774034; c=relaxed/simple;
	bh=nDWrOJ/+Ko6RnerFN87J6mvhoWqRogFxgDA7mtbUQQE=;
	h=To:Subject:From:Message-Id:Date; b=HeC3gItXkYgBUhPq/NurJuh8UCaG0avYBcqu/UH1RB4VWUaaNGV38OrZJRHvdr+EJimPyBWl1IfRGFVjrwppIwJMTgvJtDQaViN8l8b0JS7GDh1TNsp2o/uGu5pvqEF0DvjLO4RVgskg9rG7zfH6Blpnasjn3FPLlYirAgT8M0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6OAVGSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6OAVGSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB9DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788774033;
	bh=nDWrOJ/+Ko6RnerFN87J6mvhoWqRogFxgDA7mtbUQQE=;
	h=To:Subject:From:Date:From;
	b=a6OAVGSwfNa7mEXWFEXrMN9pU65IXeGnA2nz0HIJNbOCUdzTcjdf143Fi0uq2d8VV
	 PO9xm2U+Ev4UFxQ9H8sOYe5vIKl+xxPtbjiYhmXLsBJMpKxLlsl8soE+DLBllk5sgM
	 ujEdKVkBJz5isyif1R1sdYeR5BnMP7GBnJay9vHGqGkVgi0JtLCtAjjSiRugFVeYAk
	 u4jsm0l7VrrtfWRqmOeuEzbmt9AUi+97n2mijFEKiOUfhJyUEhnmTE7X9VROz/ubXQ
	 vxqodHJVRkiTRYRt9mCxJaFYMamHUJg8yzd81Wqk1O1eCjfNNOGQ6QrRNP/JQTkXck
	 NoTaTG1YuGAsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB196C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877403369.18740.8551466973707972744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a7a3924df69d9a82424660bbb66632136b164803fab79343d805300c99211f
Date: Mon, 07 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788774033
