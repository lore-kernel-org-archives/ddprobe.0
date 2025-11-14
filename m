Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510482FE04F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763109594; cv=none; b=mMcyr7FbSceH7t6DVJTfFsoCVXCpULyq4T4p+3vvB81MouabGyg+H87kYZFvNWNY2Wn3BlCHnHRh8I4PEDfz3XDK5CAXQWF0DI43QjVIZkqkziPMklCKIDDT1d7GojU750qP1fVauMx6pSm9RK4KcdOnTf4MZd4hji2Suw0qj6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763109594; c=relaxed/simple;
	bh=LcDMP/iBuyPk2jTqdDHs8xreG9toB22g2AAiO98e1ew=;
	h=To:Subject:From:Message-Id:Date; b=POO9pteia/4ujDqgmi0KNjCQ8iZyY19+XFjQU4oo1Ris8HcmHkUzdB9LvxicIeA0gBTwngAnHkI7qCMmJ62BdgS7G44E+sBOgr/StBifseYSa2Q3XEfRO5FUMqA4gghbMiKoWP8FYB1fxDEWVFEyQdKoznRIUL3ODigP9bw7qUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEhrp1le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEhrp1le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEA9C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763109593;
	bh=LcDMP/iBuyPk2jTqdDHs8xreG9toB22g2AAiO98e1ew=;
	h=To:Subject:From:Date:From;
	b=HEhrp1le9fnhdRuFL8jbnpetV9obKaz0F3OuiQHZEh+Kbro8ff07ZrG4lpcjBXEzH
	 Ypa3AgdvJE96XLmWR5BrNMbv8xXe9etrC0iCLBXBUryo9RLGMEHf7KoKWpfJNwxKvB
	 fTo4mvswKl8kAIju41QcbRUItLP7MhVdOPSPz1REtFFJICxrwsDtENn9bFan4LqlCg
	 stIzmUe9lmUyYP/Ni/qojXEqNSKAH6B3WmHh5d0LIuGwD0G4dpIOH7Uja2V3N0kRto
	 FfzO5ra63JksL7x5Dsei8GnuEz8XMPX4iZiTyvVouD8YkwwsUEKelWQ2ArhunjQRAQ
	 6VLuuiA5PJ5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C83CDE032
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310959359.32693.644543423154514430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f51f097e6d31bd7fddba90d2e805a6b864fd3dd9d62c078c981447d1558721b
Date: Fri, 14 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763109593
