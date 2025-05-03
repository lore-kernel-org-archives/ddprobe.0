Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1DC2566
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746271194; cv=none; b=kH+VjOKohnEAw7zvZKwOppmkCLU4u0NCiOehoNTJJ8HvILC1qrsUus46uPw3yEt4dVj5A8/qLDBF+LwyDRUaE50eAds+NRRWjlhMVH4+6yVXMe730MZqpe4AfZpiGlaNIVAluCRMYOjHxWrZLQIPRBShl5t8rQjMLPLnd9OS3dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746271194; c=relaxed/simple;
	bh=BC6383/ydXl2ja2VChhWQPXWB5ecgF3I225zYDhRwxY=;
	h=To:Subject:From:Message-Id:Date; b=ICgk0Ii4POHmbXxrwZJyotz2JRySz8HR/EyeTsFnUxtKWkLKJlHIetrVkNNSHqYDn7Lr7SbadL6wQOwABxE8uqpRGW0Py+krtIed4D2/U038l/P9h3Rq8MEEu2+R2IpYusybUVUl9nIend1q3SgvF4Exg4DCP3O2N1K8Xa0b8uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1ILKVFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1ILKVFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746271193;
	bh=BC6383/ydXl2ja2VChhWQPXWB5ecgF3I225zYDhRwxY=;
	h=To:Subject:From:Date:From;
	b=r1ILKVFnKTxp2KX32R4euLadbeI0PsXAlKtEKObCHfzWQNYsHmWctcNWpNzeT3a+Z
	 aQa1V9dwjsPJKUdQf8jF3fE72r2yRF5CSplZjgvet+oaoeSrHj5y9xCV1Q+vsv0WfI
	 ptrYZjcyedbP4YZJ93J9wOaknSn5vUM34DbOF7SZOCl/Tv7Zfn6GdfRdI+ya17N1R/
	 S8rKPOc9ZdjjI3KOiQkMgChXL3amplCm2ppS4lB8MaqrNzsxEddHNgH4PeT1Q9hDuW
	 klqtKvDaaksyU4VoTi75F2myrGbIHRm5h+/BOqV5o/++8IZTBmxtCQXwTYQ6PSc20R
	 Ow3+7bd1w3DBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92768C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627119357.15835.12531321317207459044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d461002a9fcdd17e327a860620dc9beb1bfc962926057d725f9b3686908bb0a
Date: Sat, 03 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746271193
