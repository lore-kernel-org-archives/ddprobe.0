Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEE53FF1
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714894343; cv=none; b=ULwrWL4/ekLM7nno7eMt1a1ZvS/ipO2zu4D1SAe/NpJTxFwspCjmCh1mEz7KVsf9as1v5totzdcIl8F/lYgsyiyZr+ZzurS1I5rcRXBHkrzXILoyDmLdSxfFD8uF8KQkwLG2RkXrIw9fg7mZK2ccuYJkZ96d5ER9MxYDhQ3dmA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714894343; c=relaxed/simple;
	bh=aa5wF5+KdfGB9dAq2mV9j9KNiKE6ok+kNb5gg38bViY=;
	h=To:Subject:From:Message-Id:Date; b=sJd4YGAF3k8786OD290qFRigPXSauVPOfJ/ls9u3AjgQ3PN5NtEvFqgs6zIxO94ZjFJNdf+P27WOZBwpt7kdbqi2PvVD6Zb9AA0Wv/aCyjaFedn864sZ3eE0iOn8vPVmwdBjje7draMR+bAlcspJyNH3ZvBpHVZ0Gdq9lbJDaQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxSrWrl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxSrWrl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B52C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714894342;
	bh=aa5wF5+KdfGB9dAq2mV9j9KNiKE6ok+kNb5gg38bViY=;
	h=To:Subject:From:Date:From;
	b=GxSrWrl7kkMledn4aEGvt96CPPkbr2C6G/MIxgcFt/lacROckei0qxhOUbJsQJhqQ
	 TUcHPVR2/1/7B+PCdVEk7pjTxYhuuBwzLPtsO5HZ+KfxZ4DM0o4bO5HneycP+gQZ94
	 tHgSLJUR0UyhM0PiFcQaTO6+cquSwUpqo8ITpOE2dIfEe9BK47ufZwFgQT3izGPwgl
	 pqqfHPLWzB9ZpZrpAW9RyMePCX6DlHJn4bYq2wrisqj11w/pWqnENfd5BCpWa2Xo4s
	 049UjLoYb1p8StcjsQ3zyFnKSXgRYzEcnAtoOnx5Jicpx9v2qMEA316F8+CorMCJYa
	 jqqj0CaWywbOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00ADC04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489434276.30680.2080902929656810370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114baa6f7f914f0de5348d44c08c176f7d7c571e041344ce6ec831710a1862b6
Date: Sun, 05 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714894342
