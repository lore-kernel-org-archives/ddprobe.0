Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532664908D7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784962234; cv=none; b=sjNil8IJKlrdfKxBowUCXZq8rXoSAu05egEISuL+D6OWH2cZD65x7bGL6bFmpEkUlmmreLmFAuuiDRSWrt/5W+DA9jQTACF5+lEmIilDa6ISUWrjSwcklxkD+UkAwSiYysruyXIEijI79qCKxXyBpQcsjH1HBc+dr6YABOXyT3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784962234; c=relaxed/simple;
	bh=Zvs/V2ytgKr1YmyRJFOBGJEh2EF+Sw7HOA5LNo/7+Pw=;
	h=To:Subject:From:Message-Id:Date; b=SriFBUOjZqUnZtnapYawL6lKiSOPYg8v4p4LibBH5bPjbwHHFOOEyx5xIv6alTGRZxcF8dgV22dW2N2PjMsmT2TLK0J2I1kg5DHhFowxUselftxCGdICZXaIHFkTghvWv8FbTILWlL6IZPpSenqVt29j/7KeW+uRZzeEtsshR5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzEPkvy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzEPkvy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784962233;
	bh=Zvs/V2ytgKr1YmyRJFOBGJEh2EF+Sw7HOA5LNo/7+Pw=;
	h=To:Subject:From:Date:From;
	b=gzEPkvy5/D6OE3yGv50x1h0I695HvumaV7DvAB5slUhIx7tWXKuRu6mi51jSKZYS6
	 tiAQIzNwurvIGpkrmPqOzw6Bbti3md+gtHKfH9wfjyJ5EL6gEQidvBvL3o3PCRA2WW
	 5P45XtfeHt/fuFFyEWMLVo4pgeAQcifhGuqZVuXztMIU+Wsw4XctkgQtEQex/mctYW
	 Q8fshytSkEtURkadzrZYY2UEclHsRzs0tVkQQxdzubYGoVArRVJRP2lK9qrP2bg/D+
	 +Ze+/bEDkkXDH0+qV4a/flqdGTxgN5gRC1ZhzXmdDYn11T49QADsdlFMBUqVWx5DCM
	 K4UmCzfTRehAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB825C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496223368.18679.17371377112692558474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5117a0ca9e74f3dc0a88d7798f19aba6289ac31fabdf1b39572ddbb6fbc6e71f
Date: Sat, 25 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784962233
