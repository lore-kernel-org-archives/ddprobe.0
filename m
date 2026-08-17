Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331B128690
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786939234; cv=none; b=V87HqRN7Wb04YQsLXF3gBTz0dHeH/+iwFoxwnUGfDDP8EHlRvpsuMQ6yxFlckh76rGNWF8B4vS5ETpe+bQ6yKJwYeAl1/AajCL1W7MHZSITjeDkzX6pFnJX+XryoVlgXMSaERYAREcKT20frUIj1ubGKUGQ0WjXd7HdBdJbsncc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786939234; c=relaxed/simple;
	bh=czhmpOirD6J2b91hCD89CpsYraOYOaAugJ0IGjdEQqE=;
	h=To:Subject:From:Message-Id:Date; b=BVdtfqNrhmvZXm9ay9cf7p37MZoikuTg+O8RVr4NwEx4ZFrDuEgKPjose0/Fs++ofR2O53djplmjVyZGj7dczIb13f/xhYL2DycaLJRiT90o1ahOoY8BJ6Zy9kOVaRbTt1COPKiEmciBdgZa9oqD+HF4MR+7aoybMJ1GzHv7YIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXRSzo0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXRSzo0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786939233;
	bh=czhmpOirD6J2b91hCD89CpsYraOYOaAugJ0IGjdEQqE=;
	h=To:Subject:From:Date:From;
	b=jXRSzo0B4II2W5A95JXBxF1p/o/wPtNIUk1VzHuNFaP7MFZ2RH0RICARclYuSkgUp
	 eFAFGfGjNINkV6on7SVKgVRlxjT7Uewu6TcsdpH5kGmeohKhB4ZjqAmfVzgIClRKtX
	 j/3faUSuG2wBjyla0ZZ4fmWAcdLad8KCe1SoD/Pv0gIq3KVtkAMqy+wvNSZiO/Ky0K
	 vOUlM50JenNjaJX862VfQUhXSu5I6czGfIt52dOOOjOJsDPZjbDeZrBKV5VyCJcCl+
	 whgEmAPR8TJO8Es6x8pI8TWIRu2muCL4gioh8toXRzQdFT9uxg8vJ/ER/POMr67d7x
	 DE+eiSKXaKqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB78C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693923369.5347.7162871148409561374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39a5672003ccfd8364edf7dc957866625d5b52499c718448f727a7778470d43
Date: Mon, 17 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786939233
