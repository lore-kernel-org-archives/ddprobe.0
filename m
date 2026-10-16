Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE8B2877DE
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792160434; cv=none; b=Bgtz++n6pvRv9uZCK7xdmxBJ9VRhIk/mzup9h+dKssjUNV9ubT2BnixjKL6gFDx/sUjhRwMUjHu4IOwu/r57eFAKKFWVk/fCx6da+GANMRsUwX6pXHrjQeCxFsPRX40j3JwK7ag28VHx9+binuFI+TwCL9QrXlQCaSZcG5yQzfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792160434; c=relaxed/simple;
	bh=W8YAZK39z2kxSOLarwZ9Tas5jThpUDw4aMu3qlGMSyg=;
	h=To:Subject:From:Message-Id:Date; b=qUhcHUg+OhKNnkyH4W6Almn6AZ2oSdsad917ELid+YFIzNagU2v6BcPTlbWAKuAnQcK7XiJSIQAhlbxKUqKUlojcmKXt/UcKtjJdN3vwYOFPDYiLkwl8FD0fWUkMYdD3LDg5kLoXFKzSDkxghFZVn9+al4Giww9u45n38j6x7xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIPm8sm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIPm8sm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CB6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792160433;
	bh=W8YAZK39z2kxSOLarwZ9Tas5jThpUDw4aMu3qlGMSyg=;
	h=To:Subject:From:Date:From;
	b=pIPm8sm0zyT4cd9PWT3sr3uLaaFDFc422KEQrTetFXY+oBq4g9JoJDfpndSyT+qq5
	 IzhSveKskJnP39y+lqT2Xt/I4Iiz9NRjhctzpBzhQljA0/uzcY+JW/pcfLcjQ8tRCB
	 2f/bDLDWXCj0o5JTdij3QNKE6uEzbQayCDMusmOQ2tPIDc4zZY/tIsBahurQad2BAL
	 xfWLWwRszGv7mnw7iwMF9uZN/41EosVknjlN+OjTzjTDrt4/JIMFW1RH+bOuYgaH3Y
	 La/dWbaN6gwg0w0Cnr/ipQLvU2Yxedk2zW4H1ND1uXyibMIhS33jN/aijXlTlSDEtK
	 2+rtV9C0plwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C7CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216043369.21154.3903590510131568544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561cd492325d952d2994aaabc3a0c8fc509a14784de930fca67048b0df366c70
Date: Fri, 16 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792160433
