Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C09D1DF73C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776863854; cv=none; b=ohy2QNm13rCCkjPJgPS1aCGJxg2EL6LdVCYudmStkhXJKcYfi5b+EFWPxWo1ftzgKoEDWQLWxgJlc2Y1lLnyrsjINpNMZNrJ0zbIP1/Q7EYgOeamidFky8zabiBOA6Kvu57DZuW9U0dltmrXmP+B0j8wbVp4Yw79rTl52C5bJvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776863854; c=relaxed/simple;
	bh=h6O7jhZ7gkMQvKK+hkdLPwA9lHW58gF+kUOu64CHLMc=;
	h=To:Subject:From:Message-Id:Date; b=nt38MTMfEAkhT9pLbE8ZhoflnnKiolKAzzPihK45RI+mS/v1hbYLemJC9QQXrwaof5XXBqUjrnqvFHOcN3mUDun8Uvy2H8hBhxhxkgug78JIFIdXQbyh0rZsdj6h3aqhLOC04V7Yn0fJwgu8XUyDdSMP1YKNI44z3K3KFG5GIXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL6aTcRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL6aTcRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78A4C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776863853;
	bh=h6O7jhZ7gkMQvKK+hkdLPwA9lHW58gF+kUOu64CHLMc=;
	h=To:Subject:From:Date:From;
	b=EL6aTcRt6ezY5hNc2+9F062Srlus80O9kCQOG3FecF/QkRzn9iAH2iE4NFiXUMBsv
	 7+v0sp54/SexK9UPPzEhVAoCtw1ZEKz4DtkYueTsq7/oXLg3VZWGVquErb9qkwbmQW
	 tnZYi4F3qf3NeTKom/V9MUU4tsT+rQvj4zNI/VoTGgGCQuk/yeg26JPbN/YiRbxShF
	 NCnXJGfA1rNa/Xls7xm06WEGBnV9EU+iJuAYOtBSXQgXTxMPe8s+XmS/jLuQkQDVTw
	 C3TnnshgMh8AV4ffFqUbJ5Qwp4yBRZHK9dkJfmZis+tt6iVTaI5pFb5kodhjkG1CHJ
	 S91mYxyQBw77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93AEF9EDC9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686385368.10210.8480647749098882874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b49a1e60010d97c3e3d5831ffd3787d8310410e99a676e5046a149afad10eac
Date: Wed, 22 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776863853
