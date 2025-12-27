Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B6287256
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766802234; cv=none; b=eA4crQZUu0h0fiUwT79wOjn1Z60uDlpiLoPIrTXedYp2D9XFleT4kVrECF1af/TwlB0r3LMhwsdbYKwUryEhaZNZZasXzwtph6W5AXJTZFyzZIZAc2QH+Hnk11h6LLZJs+Sla2n+vh8KAtNwyhnVWkiOpQYMVMxTlhOGo4/0I5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766802234; c=relaxed/simple;
	bh=4lsBJTwju477cfK7eteV9TPOITA4Z3wvVS5JdZFltjg=;
	h=To:Subject:From:Message-Id:Date; b=J+v/mQq9WViwkUtVDQfty63U6ThHcaEcHVTSTt9cAayPJtYNHuv/it643OPIwLTZNK+SJQRF+vSjpmEg3ingU2nOCjPzwPGIlPCAa/cPxj7k+30ldcYgxap58C3dDGHQgjjkBFo851ug2e1CqfVYJx+KjpeTIDpEyRsmVSEqbtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpCKJlj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpCKJlj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D87C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766802233;
	bh=4lsBJTwju477cfK7eteV9TPOITA4Z3wvVS5JdZFltjg=;
	h=To:Subject:From:Date:From;
	b=cpCKJlj1mc3I68gx5MNPWNOb/PoVlg+3C44HQI9W7+uY15KaLUp42BW8LQEzOH9W2
	 XL1Jt3x5XEf+9LYMpp5JFikw/B7UCG/jt7h3gMgLwnf2RQzehBYa141JNJ/jxeIqRN
	 quRRNBuIzDyhDf9DxSaIStILNuvk9eB791uCsYiYFfMiKqJgoyC63KBi6Uwgvy2x3t
	 8YOpy65/Yfqa5laC7irGAuDwecOx2j0hw+dbS43eXOLYXpgzZSneimYYoVCAvaf3xt
	 02/ozYVfdxLUdM1pT5ljXqKn0ginIaBufhj8gKrWiQsb8sXrpPg0O4imq2AUAhl/Pw
	 Lx6C3zmGLykFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4BE8FDBE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680223358.20787.6613946742667813239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bee0c20813bb8eaab672c32b7fc84f7fd44a49cd252780461b84643d2d4b545
Date: Sat, 27 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766802233
