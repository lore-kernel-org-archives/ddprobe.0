Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAE114A4F5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726478754; cv=none; b=alopIrM3LWMx/Eg2WoN5bCY+Seiy82OH/WnJcLIvD5CbBamxf6NNcAvuKqDrPsqfkLYGPwdH/VDwQcWZrXvzKTDhIMSW1MfGhMd2svkqb2YOfVjCTrVBHhjsldXVqUC2HU03RmKZm5etJqn2uu/8zVfLeEIuUFqHuf9cVQ5rE6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726478754; c=relaxed/simple;
	bh=1nX5nXHQiFiphMopd6hvQfo2kxNVA5fOd2s36DbxfKo=;
	h=To:Subject:From:Message-Id:Date; b=ub+8mMgah6Mxiu0w/OUEjEdDawzp+GVdnF7F013d60GU2mEht0v/azZ6B/3q57HeJ/4tAqSjpRWXOwgWv5cngKgg8Q+IWlxnYpwaaLy7Ieqru7e85uHc9dtXX8Rjjeqrz1S79YrjXv/v3GrzFxro8ZL+jQ/9pBxVJ/u950BxKuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhwLFEdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhwLFEdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E5C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726478753;
	bh=1nX5nXHQiFiphMopd6hvQfo2kxNVA5fOd2s36DbxfKo=;
	h=To:Subject:From:Date:From;
	b=LhwLFEddw/9RDFhpDzlOmC6OabTxrfBT6P4vqQ0I2ZF67DU1IJH+rR8XEys8YHcMM
	 Vi/d2GO3R1VD3yj0obvior5wLmCzt53in7iPRSs8pxxfzt4HbPgHWRdZDO3FbOhdvI
	 X8YSg7Ldnm6pbjK5kMWUw7yystSawSfiH6aejqxstQIwH+eIldFcep/pqVPmJ6jan0
	 Yu/oi6Wt3dmK5LZXyuoAyD2jf76OxfzknhRXaS+UNWKQjQNMvuw1ghxCFKbL09Tsro
	 Qyl4tg0a9qmzjajvXJVwHrP3GM/pwM+NOhtldFo8zwkR5FE1N8XrKyfU5kq8XEsFRH
	 7KSzdQYu896nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F1C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647875360.544.11829651912819280718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be379242b7fbe64bb8e3e28648056a67411932843945b9abdb6cb39cf708475
Date: Mon, 16 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726478753
