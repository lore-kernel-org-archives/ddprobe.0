Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AFE1DED4E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733170554; cv=none; b=l5GZ2gL7n9lev3A2IjaT9nzcBIRDxHA+TP+F3Pd54ZItZzeDrdWEbQYBQrmBvAWBs1P3VGJwV129Br33tJsvMK8xTVksToCxLbDZ/ZdMW0x4EW/IgB7qhHDcVUUNIK3Bp+aMkzFqIq/SBLO/NkX2vJr5wTlMb7zXbcJzxLZbi+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733170554; c=relaxed/simple;
	bh=KwdihYJF+jt5PDUiByBkfjNM2bx4MTAg2v1SEg3DO1s=;
	h=To:Subject:From:Message-Id:Date; b=INL+dc3s6xr/hg8zgIug57tsZ5YSdAnOcct/mB+/LI3hTmr4lQHtrzf6nDhXbAHgmK8iMNhyWxcn9+12aonrKW0kacV1Pa+iUrPDWKJm+hlM07/dNY6j8v5pFHH8duP6jqdvfTE5itbEdK/sFzP34kHHih9dutRYa/3cjK1zugU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnJz86W7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnJz86W7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B232EC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733170553;
	bh=KwdihYJF+jt5PDUiByBkfjNM2bx4MTAg2v1SEg3DO1s=;
	h=To:Subject:From:Date:From;
	b=lnJz86W75VyDVIrCgMcbDf87VA4400uCSbAaplkFF2NgQmV4YszQNTqizxb1IXT5o
	 YdJmIDapOl886Crr3W0jWNiVarJq+H84xo4Wbg/Ii7IZY+4IsikGrFRPVME86Bappf
	 FzLZjVxjZ/yr69z9xpEAHR3560XJmMOlIzkKwSxHlaepqP8M4IF3NFiIdlSBJv05uf
	 ikEwEXglalLJrVyQpJFBB/rZaRkjz+pWqadlwAFoQIk2E2Cbt2jcITfCeoyxuAR3vo
	 g8HjKDP7y6BbvQIO9LuAiyCuaBGFG++oBcLra2hBVwy0GztxU30A/U838ihQDJ5rsF
	 QBexFumECL0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB69E69E90
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317055359.22569.11945501423521427146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08203cd9eee67bf8b91df75fba19193c2b5cafcc7bbd29ab61856ac43ad38eaa
Date: Mon, 02 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733170553
