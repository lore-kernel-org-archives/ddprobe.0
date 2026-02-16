Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4452745C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771257294; cv=none; b=fFvcymwte3DKkQA3qfg2Db8Xm1P94CfXVcx+hmF6LGO8sn/WhZAPu3Mzy6Q/O0SzhbZnRk6yeHhNDFjK0VIh+iF0IuofYukTlv9/cH4/waH+d0C4U7pumg0nqqMqCO5MGMJ+2TvZEnM50K/6vWLuVhFh1LrnNt0dmBuYRokBYBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771257294; c=relaxed/simple;
	bh=0QJWFXT1kJYgnQzxKNyEu5n9GjsphY/1c2QV9u82GCk=;
	h=To:Subject:From:Message-Id:Date; b=NVrrYjybqR0S8fA6Hhhtd5v28rcM6hpFjiWPTCidmgR5SglgG8vniRCpc5c2ZAKlppSQqq8yizrtvfMNK/ZyfoZKDVPRPr7OzegH/II96DZ940da/zJ/Og1E6zoeFgHchweb06flDXIIEE8cdFpRkbYLu7CZtBV/5I2kcAX6gls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4Pe1lgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4Pe1lgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7F6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771257293;
	bh=0QJWFXT1kJYgnQzxKNyEu5n9GjsphY/1c2QV9u82GCk=;
	h=To:Subject:From:Date:From;
	b=b4Pe1lgklr2+GArrZaz+ah37qrijXCMkFKy3x5XSVDYXwb3oioX+81hNOHjCeRp7x
	 JZRO99dEqHAzDR855w3kXlXxnAoaUGgV5+zZ1DoevXKmZcEkAfoaW/pKkF4kn7V+zl
	 sXs/FJFbBCyHe2fSCL7XWqz+LOL11Q1K74zjcw6CDeEg5gcZyfVo22YDKGOeKgPuG0
	 QH7U/mcdpGCp6OBauMHfh+BBeyEccR36C7OnT5UkOgI+kGZr5DzfjDv8HqSPvTTyZT
	 0eT2iFYJ8hKIEhsIYS48mLBOHi6jzJKutEkspO7Vk0Np0VMKlT6n6jorbrw9YQGvcb
	 OHtXg1M0409AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257E81A3D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125729358.24821.13736269336845260191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869e2fe169f7c0f650d06e1db8d4b8a90fd9169661ee279e9cf1379f9f26a05a
Date: Mon, 16 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771257293
