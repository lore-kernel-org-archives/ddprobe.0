Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396403793D5
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787130034; cv=none; b=PFG6oulSp8yF7RlrEDR2L/JiBTR464UwzPmGWuIdQq1qs73Bm2cPc421le+e1fPGwde1DzQ4gWH88pPZc7fpkkDBRNz0grNOcxNzd6bmG0ZWhaCuN1xECAtsC4EYROH8i/WszaxGGuj7nUc7dFdWsdHQXTALKxAQNKiNP1TsJUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787130034; c=relaxed/simple;
	bh=XZRsXt8vUsBmOIs2XlD2VJFRm6f11jXXV6/dPKsQlg4=;
	h=To:Subject:From:Message-Id:Date; b=NmH8Fln4OjrPiu05Vec1fcpt2d4uLyIsyaK7z1zibBQ7v+dfg5d6+uEyun2Vnob/B7qeZNTlV7lnRkpYomhV+XpyyKOgPjj19EVfDigjbo0OJBoB++ji7eu4BrOHrLfDIX4dKnMfqZfmvhqdqJGrl1w3wMirLrnTQVsoQbzyiI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgSKY3rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgSKY3rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A4CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787130033;
	bh=XZRsXt8vUsBmOIs2XlD2VJFRm6f11jXXV6/dPKsQlg4=;
	h=To:Subject:From:Date:From;
	b=QgSKY3rsowgW7B7+MSb61WTcgaN05uiXzN/eZhXVihGzAM66MjWT54w+SZWB87Qfc
	 ZjqXFtLf2Mrz0K6LrHgEHd8YVL73wMEOE/6eqZjHkCOyniJRGVLf/2LgleG+oKrRbo
	 N9UEKHdZk3IseVUtN3NEfpLRV74CX3ufxrpM4FE3RcqanFj0ko0QN6S4rRttUl7jJs
	 qDMGq2TG6yyUCbiON7Dk1MFYII8FXBq6H/un85hS3ugj3oANDzr3KT/QxYkRAx4paV
	 0AYYKdrILI9zjhxXzPN21rzF844XPxCY031JvGLBbWEtAGF/Epi44Caz6Hs5ti/w63
	 sW6HHTVSjSb/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE27C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713003369.27625.16135350099576257864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b061ce14050964b7a01c95ef71155097202bf00ab9e156dad670f7970861439
Date: Wed, 19 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787130033
