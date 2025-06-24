Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372BE182BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756794; cv=none; b=gU4/sV9ZbCbkOAvESPu1xagi+CqOgMTafRnePWRvcpmfvvmpg3U+Bqcd3QqEtgcYE7tg5EFmfVTgAaGAojZd65XH/OnpANbr8vfunrk4RXoUZBpMG0oJrjuWId8ewcnvndI58uYeyzlr70kIa0C9atmTwT+Qm/FfdAqUMTQjs/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756794; c=relaxed/simple;
	bh=A+l5MYBr+VhDvS+TwVvwVhWrM2ed4E9D32jPhL9wxSs=;
	h=To:Subject:From:Message-Id:Date; b=lX/Nn2IF0FRRs4713e5Dseft2CEDk5RK1KX/hMBzCRk+wsSD0FiBJs3tMDd28e+jY7TdlS59zbwL3/CX2btDFVFJUu6tfoFiM47dF+0dIMjUktTw5MBCHPdQAP2vS//VCEW7jxxSAux425GUmxgGQOBI+kX2v7sGwqH1QwKUiB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHMOFcFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHMOFcFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A95C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750756793;
	bh=A+l5MYBr+VhDvS+TwVvwVhWrM2ed4E9D32jPhL9wxSs=;
	h=To:Subject:From:Date:From;
	b=uHMOFcFqATWZ0hxqFGppbdhfdRH1hB6HbzCue7fS/q4T4G+dSzCfK8UeL/O68EE9x
	 Ta8c9MPwqKJg3bL/9M5qXypo3hjdb78nNiIj1DHyGAqSZm3aWmPHCR2V9T4AG1Rocm
	 NWeEbYRNN/3rPkszVL/x0SGohDj4khVH5Q2B3M56z+TtxquHnOAielUatfPq63tF9R
	 YILpJgTgkMnYF7VpP+Vo7CiIkwrpAuj/5VLTip9Kc/WZBK1l+/XVDb6K56AiP1fkpc
	 qAYjEGFJTHivSqTWl2PDrVNxfkiENUiRcBKzhPHaCT9kr//dmOpjQIxkrLzZDlVb+q
	 lvTHQoAUfAxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F518C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075679357.17889.7815623623521347226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff8f29447ce5c731b96848c9a128b9e4a88d3d66ea1234edbdb094402fd30f8
Date: Tue, 24 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750756793
