Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6555581ACD
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785036634; cv=none; b=uY4VmN/PTAndhGPXYn9Jr8wBK/kyCtNJYxD827K8sDS2rWSZa5EuPE4BBWn9oHQHxIKArTVtj8DUmvPfrXnL4BtqVvofOssBDAQHN6QWN7Wyhy0eX7VDko7/UA3uzyAkAUNFPhsTFJT3cCowW8bJ9Hcqyta6EkiF28zeiot8K3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785036634; c=relaxed/simple;
	bh=z11WdB2oAoPhg9Ox8TN3pvrBTuONpGUFsmd4nNEZet4=;
	h=To:Subject:From:Message-Id:Date; b=tAPFp4eMK66H4hhAoLz1mW58cezzGONZsnmH1bSb70HEE9wT7q1wXvq5VbGpHLbpHPdHsIjX/rFs0KqslOP/A9x116Mr1RESEmE+xBZOmsPXeoDI2mXA/vHNTqTm8+mOL5cIduuYAeezzCDOs0RUod4AyUvYNbD6q8tRkxeOXT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhA0EFdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhA0EFdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8122C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785036633;
	bh=z11WdB2oAoPhg9Ox8TN3pvrBTuONpGUFsmd4nNEZet4=;
	h=To:Subject:From:Date:From;
	b=fhA0EFdHgwsqN2oUwVH6bwWkKT0mBdMdg2PDCGSJiEcnpl9Xmtg8t+kdp2/d+6iXj
	 Px/GETHKPw2UPbnTM/l3+SWisJx8VQw9Ff/ncIfnYUhOLiBtEAOHSvDSorJFbBALyt
	 Icn7psBLDQeJ8aSizYQwy6hb0bWWNm8NVpd1IgKxvsTELKpU6Bmo06knWWznJymFQW
	 zXmQaNtEmBQ3X1glmnvxSygOvTZDhaqTuE/OAAlb1pgSQ5oPjtGa0PX+B8thoprQ8P
	 Hx9j932ylLgvUB6sd62yBjTF0thHPwhzd6oMIBna6Ynr9hiqOw2AGvpdAnNySAwyBd
	 rH+mUwn5kmm6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB6CC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503663368.24112.113767820101366430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0821ab1c98559ab4f354386717dbab49ce2361ed6ebfe9b152e6bb7b74fcb605
Date: Sun, 26 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785036633
