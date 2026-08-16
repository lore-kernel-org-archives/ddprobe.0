Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CB52FB084
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786870234; cv=none; b=lpRxe9HtQtNpgp9oho/iMDIvZXU7V3ep6IKvr/9aCAhL8A7nFFj5SitNfQUV3xJZyIgEkSCco85f1ItIw8jxx2k7A2lxDrt4iU1Bf/73mtkkdd2o9bKEvdEmiLeKSzpoGykrzgmq1YFiSlS4NfutR8MMZhUfwPYY3oWGRBNWAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786870234; c=relaxed/simple;
	bh=Tvh4Gsp8ZZh7EK/qOI0YpKmdAPya0JjpzZByf+lmz0c=;
	h=To:Subject:From:Message-Id:Date; b=rSHPNZNwP+LWUNrEcYFq+eEw+OB6EltNwpSaRrxOKgYJ9F2/WDCaHDJGP6p2uO/95ykAfmRrQuADlclkYGGA3qaEcuDzV2aFYHHkjze8JQZ9/EKcIVdIzUCQcbXm4w0lMqXfyaPPT09xeuW+egv63hTSkM6rOvFjaD5ictfLVGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWit28Vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWit28Vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8538C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786870233;
	bh=Tvh4Gsp8ZZh7EK/qOI0YpKmdAPya0JjpzZByf+lmz0c=;
	h=To:Subject:From:Date:From;
	b=GWit28VqEh55tc3yno4Rzk3YqxlWW6Z79by+qqcLnp/esUuGo4EyQLQ+eIfgI/dMc
	 ljrLw7JCEf2nLkjl8oy7HclS6RAV5ICoQMcsJMMpBTe7kAefD2NGIAluXvdBnqogP2
	 U2oxoFYgj0jodifY3Ani+LsuSsrpC7lO3AUM6HGjTKbQNAwnks/PWjDJawdl7BwO1X
	 pvHockpiHDHY7m3OlJyTS+f/aVmSigaCSrhXME3DW/9khnINpta7qd5lLZ6m36J79u
	 sh/MrIz8xlx8sFmlMnSNT961AP8wFm1ojeVwrZauszEbJmV9FM3J+xbMLk2rTqIPh/
	 9vSZf7MYV4HWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA7C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687023369.6532.7982124015791751712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc72c787f4d14ef941b0a93c04793b1ff39d5879ccad1cb98f679c2fb9252d0
Date: Sun, 16 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786870233
