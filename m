Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549D7BAEC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735640754; cv=none; b=NcFXSiR8hZd5M8fkPwfNtqCs8eegSn0W+K8IS8teujR845ZiOt8zEd2joqMdR7jpmRuLrTg3JJk5m2oNtsO9kPsOPobKk4trGzNviLzNGyFDwcE0DHFNfQp5nngI0qhH7MBteJnn+G7mUESzrvSxCALbEiVsVQpmjUhKGuGBRDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735640754; c=relaxed/simple;
	bh=tA8jRemdRLppBz+qlKtUVQ0B1I7xc9/0vU3y+p4ochU=;
	h=To:Subject:From:Message-Id:Date; b=PtMoAY2Gum+JOxEdFnfsQrLlXXAUC53ESDDkfrK/QXkBZ5eYi94WrTFx84GWBkuQRvpfLbQUQTPIgytPhjPHN88RcphM8odRzANi+6l1uyl2FvG/x/9sZsCihp98HxK+4nc49RSIeGBp5SjRnmvdeCA1diZjBNMOoMjhA9lGkwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBoBrgAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBoBrgAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA748C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735640753;
	bh=tA8jRemdRLppBz+qlKtUVQ0B1I7xc9/0vU3y+p4ochU=;
	h=To:Subject:From:Date:From;
	b=DBoBrgAofQqKWXyOrc4qYA0JNu5itutZfaIZ01tfj7PdxKEd6dihBuP/b8tQnFIYA
	 zEw33J0yJRxq13TgRoSKyi6ahEPzm3a/BniSa/c0YporTt+qeuCcLfR4oIlARW2Q2Z
	 Vs9vVsnjFhsyJ2mWa/ofvmKU7UUSkeVytYSCQajagREvclYbu1nHdwSfAqooP7+rsk
	 rYlu6rFtBVPh7mga1BXRPz0mLGmY5wetWzoHBnlODfskJ/w6p5Wq29xeRv82Cfgpfs
	 7arGSxLxTzoM5Hv+eXPMwlFFXKpmHUYhshcjyAR1uZ1YIO8UksIJzhpPDSyP5lRFTj
	 90oMJctxNtTaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD20E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173564075360.21029.19592934269481906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2309e8cad05c1aa25c08681ea8e84b65d08f0aef0225ca7a9a3e5c661885f544
Date: Tue, 31 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735640753
