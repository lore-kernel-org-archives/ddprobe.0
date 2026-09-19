Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA01136351
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789840834; cv=none; b=OLSiOEU1iqm/pwDwD5WJ16TFMgTu8BRWibrFD4l4QRPkyJ3mPsvogXStqaH6qjH+F7nYOKXPysYkp4X7wPqYIpq78N/3k+okvkVaewj6d8fsxNOemsgOpqKm9lF5TNvlXPc4vxokSsLU9tTrNC3QHuliPvcYAXOIwd+UrRt9zLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789840834; c=relaxed/simple;
	bh=icG9/YRMH7QoopcFtMGGvObxKJVQH9U+RIqtp8+CoLE=;
	h=To:Subject:From:Message-Id:Date; b=ZFC3j8CkPisv8DJII7zmyn1UHmRPzqh2+77SuMdjUWsBQCrqbiZeaB8cmMJDCDpXYML35P7sPcZ+J6aOY5BrHOHcU83wG7QtBze019jFvMU6Kqe+Tk6rtNxbdC2QZVgg9IP0zBp0nnZFVEcqXlMwuM8QaxlZvCZcM8XAMYj/mwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9Nhim2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9Nhim2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73FAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789840833;
	bh=icG9/YRMH7QoopcFtMGGvObxKJVQH9U+RIqtp8+CoLE=;
	h=To:Subject:From:Date:From;
	b=j9Nhim2H9d99P6JJoJ9oQgvM0IQjuUUqU2wXsXXZChUN3w+HWGeXKdOvyvJWT3054
	 dys8pejLWZCyOUaD7dZbd5sRovjaPSEPftxTolaglyc3l1bLNjOFDkdatZIPnQeOuW
	 AbAMR6uLkCd6IlFQopqhd0bN4lISMA0lUhtlR/rAZHjncu6KcLheMdATHzVbXAsW42
	 6GQnWfdusGZgm5Zz3Fxchu1eSC3WceP1lCfLiWcNF9QWQYv8yIWZztDT+NccuKFaKI
	 9tme76Yqf4m5Y1bSKCQ/mwM5hDRD9sb0lUKHziqkIk4lp1iK907/DggqlciagiFG70
	 h4AbkBTQ92imA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0811C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984083368.25361.9146049290815464269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4de64a30f17fb2f5a7fa067c15070c4daa944f7486967b1c076aeaaf78f0b91
Date: Sat, 19 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789840833
