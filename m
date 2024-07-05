Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365EC149C46
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720180523; cv=none; b=gklGk+2d62ojLFs99DfG9BlUfvLljrNnThD4fS/p3BUQsYSP8hrYzhZpa/bJyS6VxoEps+r/5cFw+lPNIYQJliTtAr+Nsz6HVopX8sM+ZLLDfB3qMg06me3D1mJFRnuHiCVv056Yu8YBlDbncltnlUJGgpAZy84MuezDAYqm6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720180523; c=relaxed/simple;
	bh=uRKw5n4Gqz9Lp3R+nJ0+eMpWEG83o8SUUQkTI22ocs4=;
	h=To:Subject:From:Message-Id:Date; b=Ct/5ua7KupLqYe1p/Rxboq2+yTKmeFsNNh3j0QsIAE1Sd5ScEAv4n0Eoluw4RjDjqNbpOf7zgupboeoTdWeeWERROigNXxCwWSB7n8J6P7DypHmDH4uGs2QMiKw9QPQuswtO8YFpORgbaU05GHN1abd1HeINTS/GDeJoLTcgTDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXrT2dh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXrT2dh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE51BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720180522;
	bh=uRKw5n4Gqz9Lp3R+nJ0+eMpWEG83o8SUUQkTI22ocs4=;
	h=To:Subject:From:Date:From;
	b=SXrT2dh8XPoHG+K0wLCAm3ovPWX1uPpwEe2dAMB8vFugf2EOljVE1KZTBm6nPmhB4
	 o5amHEsOVuOIoepDoG/26u8GJLqqMTlpr1Lid/alQUuOhbeMi7B5VW+n9Jh6W1Yw6u
	 d+i4NKqhXe2mbqS+UAPXt6H8uNYxKtk0FuuxkuWHP+qud+IgOM3GnifTgyu4cyIxcE
	 3WmDClEr/zQp0R85iUwkjniIUUMSL3zd9I8i/zo3wru/OhQ/khW2w2DVrfOwt6kgiK
	 n01vCfucQmGed//FQfENFPkPO5+UtT3ARDgdI2Q8Ti0MQESJXm8rfKZCDq41V8Bxs3
	 5HWYkgWokxMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF290C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018052277.807.3368502179932531681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a1947b29c1dbfc8fc6f7f43a7064694a1054ee66a7dcc7c854c12cbb6b3324
Date: Fri, 05 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720180522
