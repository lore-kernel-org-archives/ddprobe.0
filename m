Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FB321B9DB
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740898134; cv=none; b=KPkaPAbsGLA+PlZEMNUb6vNNo2NsEc2z+enxDlKZg+zJ8j6qnZGP782YFCg765tRunm4BcroA9a2lMegDCjpRigufWdk5myl0dBdu3Pu4HdUiRQ9Dbz1fBzW5rvxyXZz0sz2FWhZtaYPETlcwR5kJpn8Eq5WLM69h2C7XdjitiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740898134; c=relaxed/simple;
	bh=iSxRui81R61sSlLvdWSjKLSaWUciPpDkCPz/ISVRQ0I=;
	h=To:Subject:From:Message-Id:Date; b=WA11AdCLR8vSMGVkfS6X5jYmlnbN7kPtMRgZZLo0nS+lWIBZrTh3EIwVebK5ukaqfA8Hj7tl+mxkOM9CKa9WhqNfswEhPnPni/ScddUcdewy/l1uxvbe9CS4Q+dWVG/ZGDhKhab85ascNZCUpNVdZcdDEgsonZbHjPBj0i7wOto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwZuO3Hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwZuO3Hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB004C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740898133;
	bh=iSxRui81R61sSlLvdWSjKLSaWUciPpDkCPz/ISVRQ0I=;
	h=To:Subject:From:Date:From;
	b=NwZuO3Hz/t7/0pAxre0z+/INaojTuMICzDpt0Cu6hCo+q5M3AzvmZyCGmfw2s5l1q
	 ufh17Vm6w9EApC+R5O8gsQaPgZHhurxfMu30G4exIcq5bA0XXRtRBmgc55R2Qyl+z+
	 UddjiYxfkenqRsCxSRAQax2Uvr8vhSR/TpHQAbyN/2vNqDkSQFi9TZFTbFfO3U6KBF
	 Gg++WuttlAkjP3CoIHiMwueTYzJQzPRHNMiACG8Hp7qztAeu8GLuDLrhJl+izcfrNW
	 xmga4NoWB/ydpLE3cOGIN1H6wXhV1r4tugLIMbzkBdH+XodCZyKVEm+4KUHmAbywB+
	 CCQK9y8koo+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D16C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089813358.17080.17837523948898501155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca6d0775387a89ad0de5c0137d22fde47257e5e9cb0ce48405d05ef257232c4
Date: Sun, 02 Mar 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740898133
