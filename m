Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161913845C4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777430254; cv=none; b=UQJhDInAtRjXcox6d/B43q1uA9Vfz+AiNkJhPoQNHraIUXJophXc8BTtKVRz96YCwejlBffNo1keHBDTiLVnxUeagO4dHio9bXhHRRjH3zRNPLUNN54NzCQ0uEDibyo/4tIhev2T/rEvniVi3pHaVl4+U9DGaIe/1GeN1HputcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777430254; c=relaxed/simple;
	bh=r/+yINBVY/8ek0/aLOJ3vhPucf+iEuYHtzSNG6jSlow=;
	h=To:Subject:From:Message-Id:Date; b=o8tGvaZ2JSd7KYU6TydmxxDGaAm6BToELKhyMIbKZEzmXr8xgGpzU/tLny3l6YDDlV086bm3KfHnc015NRQ9VbXwajF0+2ZllDu+NbQWJ6Qc7EBWIxKFrdEaMTsFPaenEx5ck0TCj11rkdhBYlXQuHcVpJfZT5YMuuTPSQcRd1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqwCNIUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqwCNIUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF08C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777430253;
	bh=r/+yINBVY/8ek0/aLOJ3vhPucf+iEuYHtzSNG6jSlow=;
	h=To:Subject:From:Date:From;
	b=PqwCNIUTh5WA/W6XKLsYZ9+PktqSdD+CnH5oplMXAsFaCg+0vo/v95a9SZ86WR+bH
	 y9iTjCwKg3ON1zg7puW/5Smz/fKbyTqyu8xsc1J6darDFJbuD/qFYvxjmCpdiAwC9X
	 po76CP+ke5mM8tDMH6p9YRe+gvmU49YGRB4Fkop2XpbNmpRbVVLAX6adZRdcy/YIQs
	 /UfyligbfVuhSeKevyKymcTY/zmW6ohkNxpG3ckZMosUssh+3QuDLflpOMvxNrwBwJ
	 9N9hNrn+krnLwthOUwFQMApKe9i5tOyNzPe8WOydmCfCPKb4OX6IfD7gtp1oU2XDrH
	 eHDqw4iLa7Zsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA7CFF886F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743025368.32638.9016236185084507653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012b093b997406037592e54342e2a1b8d13b9972082b881510385fb52fe98657
Date: Wed, 29 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777430253
