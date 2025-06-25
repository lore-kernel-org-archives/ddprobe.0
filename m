Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA573074AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750838995; cv=none; b=WF9lK1L81VKrRnUokKCrpxPOcStwoy88qCMd9E/3AlocOsxfAn5hUmSBPzwr286fZb9hbNAR7Imw5DIn8MT+4S0oWeiwFwX8TNMS5n2EL1NoM7VV02lLKBekJUkMdvYu6E/HrXxAmt8LlwhbCfdTltAwz7XF/XEaO+aMuYQfPXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750838995; c=relaxed/simple;
	bh=Kg3EzZRUgjg8aM48fQcp7ipXKgNuHKpLyhxDcqRMzQA=;
	h=To:Subject:From:Message-Id:Date; b=aJk1uK9RqdU9gYQ2oDd/4a6ZEo2qDIPG3FdOmWmVfE1QTrhbLgy8Ag4nF5dVVrg9YfzuQiNdqVnDT9BGjyl3rjGDQbF7+IzwlR435EADzcVfknVzrh4+vQAQFzfcQG6mOdVNLmf5k6q8sE/T/Bgas88SzFfNN0MwyD8DunQQSiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVuNluPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVuNluPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD461C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750838993;
	bh=Kg3EzZRUgjg8aM48fQcp7ipXKgNuHKpLyhxDcqRMzQA=;
	h=To:Subject:From:Date:From;
	b=SVuNluPyQwBewjA85OuhAivKBHMWbCwH/i3r0pxjTgqyUGGQWafObtZukivQJpbR2
	 GD6Kz+e+wwPqq4bJhfa2XdQrsUsDSiTW14+cMKUhW1UKfZvpq6AKNO/D7uHmUE8qUc
	 8ujO0LQDAt6iJ1RuThIUsmvj8B8GN9nK5pVfmsOtxww2/JSAP6eVCrNNQs2x4K/kDW
	 9QTCFhnsT8/aEMOoAUNcGkcGkUDiO4Rw0Zhj37QLbP17MKdMrOp4k9OGgHEW3Tl7CK
	 tShm46PXVcsMf39ndhpdKqfmEH1iyOkoY5yjcQeFih+E0S5SbEYWWgXHNlTuAdkdUe
	 h8dzV2dm+pPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B016C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083899362.17957.10178203948556881446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88aa184c4d0ab4ffe3a24810ae2b086810d8286599db54464e146c74038f2d1
Date: Wed, 25 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750838993
