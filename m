Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B69930C62D
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778072254; cv=none; b=LFvKtZ/nX4tlaHvn8IBWbXSN7K3muYVe6TYhn9yL74nuvATSkVnZz+IPXl1J6ApP/ufcYIbqKlCuGF6IeQPQyWeYnZHQVJZ7wjiqRbiIJ4LAs1DKDpZRJ4hcGp7lAJ+VOoz3pC68laGSddMaDeo22FAbu91HpXTzdSphKCM7j2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778072254; c=relaxed/simple;
	bh=99MF9G6f1wJEZtEOFz8UwVYhyPlLOoiuIh95jvrTP/g=;
	h=To:Subject:From:Message-Id:Date; b=tZ/OXgOTDr1xmKKYzZAbZFZczxGeQBKu8LMEhqufBqB2aLin6nWypUcgcQRJenYWHCfs9lW9XnWsPD5xO97egcv6kpsgUOSRMWsST5ATtgvAZ7QLWlZZ0kxbNNShLP5DrTtuadjlqQrhS5l4vO4UviXce+GYpAGGONQTMDozSqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKyHzxgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKyHzxgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B932EC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778072253;
	bh=99MF9G6f1wJEZtEOFz8UwVYhyPlLOoiuIh95jvrTP/g=;
	h=To:Subject:From:Date:From;
	b=PKyHzxguHKRJhporykrjpTQVfcs+pTZeHZmkL7UtOiHhv/Q1Ss4Vc7loR4JNQYrrg
	 zHjPAogwBcgmQ4IYg5QmdUShgWOaOBuY2WxCteGD9nB5SbU8laHJPOm8iBjqzBgcIG
	 QSm0NPq7kkz6u5UH53pi14jwUVlDl3sOZ2ZW/X8Y0ZZZGE0H7QIBt9WDkKzxmu84ZD
	 KSRH+sYbHWgls23SgBX4bPbNIFxSg3EXsx53fh6mkTScv5s4tUmD4CoNkuAVavdHJs
	 xakvyjSZX1sAr5vkNQIa4Z+o9m+x4a8whTRNDB9yw4MiA78JPGzXeiFLn/43SSbYRG
	 BAZBwReLMYf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA850FF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807225369.12693.12185399807202166236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435fb85564ebfbfe0f38f4313651f971bb89b39f12e42b56f5d9c0a44993164e
Date: Wed, 06 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778072253
