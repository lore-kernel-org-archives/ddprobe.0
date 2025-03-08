Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C381EB5EA
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741457934; cv=none; b=CwaSMe3qPugzl7R7nVzBVl1soMglG0U8AM3BBeal8HsLxqzuxJSg738vPB52oh0YMK8+q530w5tSBO+XOuCfAI26KTLDB1dopXRm1L+jc4SgT5unD92fpLPFW1Ua/pfvOdcqB3DtJY8edCmpoGgeYlGOafQGFkh0KKqKlgiFg34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741457934; c=relaxed/simple;
	bh=U0yyOFTkf0otzeJAsf3/nckrNpY1Dhiga3D66uc6tLM=;
	h=To:Subject:From:Message-Id:Date; b=h3ron1SCTY/8j5RAFGOw5E26hvXhmepxTWuFbo66i2clRDiIWDhVWPS/Km83IGaka9lemHHYwYm/VL44C46f6oZgSS2KtgYFSTssexZFJLpFmnNXhaEqdMNHkq3Y9cX8EzPO/3HZ6xuAZnWoXylYeeBdv13EPG4rVnWzj3hXE60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmcm9an7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmcm9an7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB559C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741457933;
	bh=U0yyOFTkf0otzeJAsf3/nckrNpY1Dhiga3D66uc6tLM=;
	h=To:Subject:From:Date:From;
	b=Kmcm9an7sFvXQiwOwd7EqqnWXN4rxOOHocUo6pOZpQ1VU/PurPXQMS721d0OvqYWJ
	 S/4E8EKzT79nzIC55/zGh5+/1YSdGkjAJZiGdNSYY98dHcV0lEuuaJ6Y/byZpRfGZh
	 mLC9eCuxqcTBsxOfG9+9w25Qgi818+72tdTtIMa4tmYB+pSDjBfDoKQt5imBj7LBi0
	 Zy1l2O5VCqTHzSKCHq6lmI66IYUNWtvRO2CJ5iH3rghapcfGwprah7s1U9aofkLXp7
	 70QsZtn4bVUDA/FA+gSLFo3Qvq5YQ/YpjCvXINNvZodA7Qsdzkkp6Y42YzVBCgP9cd
	 5oiT9FBlQC5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145793360.20869.12578548745245814540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9124697d7bd3f8a517dca36861f070c9858d34f90f71d8f3cb03ce639b9a6181
Date: Sat, 08 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741457933
