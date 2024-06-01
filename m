Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A9517999
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717226063; cv=none; b=imxe8iifgnLfzVy7/m6uTAPbzAocJoQrsohRbCdky0PI+wVYlWJaKJL2Z24ORhnRTskXa4Db8j1crA+UtmNlb1RHjk/ZhDhyPySlW0T42Fk6m7AzvdHqKVtLjJYyhJrNOrc4FURxU9YIFvf7YDkPjk76M+zQcW6358XtW3iJtWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717226063; c=relaxed/simple;
	bh=sT8IIKKm9j1OAFo2k76HxlTDmQbBswVs1OxIXfUvesc=;
	h=To:Subject:From:Message-Id:Date; b=o7UN79zbJLj1F/8RMALa4liVXB0F6bsiuvDetCpvnvLemV3nhNXnI7lnn3mmRTmfFkPq08yBPhje3cBcVcHa5UwG1hj42cNvlx+SN5tE+fxEGmhRV8mpp6XC2luMp2ox59GrnEe/RAS4YWUiNnSh4obCM8oaUzvvVB6zNdmGHnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5o4n5Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5o4n5Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5689C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717226062;
	bh=sT8IIKKm9j1OAFo2k76HxlTDmQbBswVs1OxIXfUvesc=;
	h=To:Subject:From:Date:From;
	b=O5o4n5Flfx03g5tpTxkadKJvLwiQtByuo5HEEvFLJ8tiKUJmCedDJfqUTHQ/qhRLZ
	 4Fj1M7ccnEQPww0Ne5+a77I9d71D02EMInjj/+c+PaOG4APeULnTC+M0z0/HZf3Go/
	 d7H4sKVBp+JtvNUd/T+sNU76JFUFv79xhyOicI0Uqda2uIZnQp5KacUDlw4+VgYkNw
	 ht9JBx2g093FnUosYWgHewVCCi8IVFZYe6iNqNrgGN/dWNCPJGQXtBcHKOpOf3O6F6
	 3eOjfWL1vFNXdExT/qvtz1984XluxYYpSttrzEa69QwOVHqAO2RiKzlBfull7y1mb+
	 6Vmr0jSGKSASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE226C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722606280.32025.3500329531187547014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779ac076da99c62146bc51c34fd6855a7c487ce45f23d24594e0a2eb056a86a8
Date: Sat, 01 Jun 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717226062
