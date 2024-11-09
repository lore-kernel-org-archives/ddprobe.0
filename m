Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8DA146A71
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731168354; cv=none; b=Qo5HVoSxnWaaO0knC8TCcyfE7JTFqNvirPh5KwxGiHbGBLyx4/6CeSYh6aY+eFx4NK5hC0VhEEAQCyA1ttG73wK+7FQAX851IX6tqh+erSN/R9mZIlEMJ8WGzohPDLwL/1jWtyt6NcDQ6vZmkjcfZBV3FhAqXigadNSTwcLyFEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731168354; c=relaxed/simple;
	bh=aWBA51FhP4tpCtl5f7neFsAxS/e3OzvpmR/4U4/ky5o=;
	h=To:Subject:From:Message-Id:Date; b=Ync5oWr1CMFAqAg6vmDT9vLoSwe4OVTQJJUuftJcjhoBE1ctzLEJdIgVI0fdzIdz6vhEegmtAp1oSVHYHc4r57wTZL4EkBwMoa4MuhdhJQxIPmhQSdkpHQRF4Z6QvDxEfsDcp7GA9yTdtdJYPf5B+irT5/4bCsWKTdF8BTv7cAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ffvz/R5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ffvz/R5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A0DC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731168353;
	bh=aWBA51FhP4tpCtl5f7neFsAxS/e3OzvpmR/4U4/ky5o=;
	h=To:Subject:From:Date:From;
	b=Ffvz/R5tj9cRNa649jB0al4jxFIKOlXTlIBZb/xjCJbuHERoslLOc1gXy0uxfSl2n
	 80MdtptEscdfJ8B4FeJQGls2LQMqAbM0YCTGSEfPJ8dDR//L6yZbrXQy6SPGKtP3Wo
	 D7AEASS5GLVbQoFfVjDkLSH37VGFKdJVenc8albnZUtqTuNu5E/jJknYFozG9vpExV
	 BjO0+eYz9RTt39Jhau+jMlFA8JZ0I/nRRPrld3Wfg4lJ0YOD/hzZ9yWWlWjiskzsrz
	 lcsYi+C9QFj5WFDVXzrfgQTKOmdw3aDGDjx5rwUUaSfGbAdAj1FLZPJ54uj7NLgcEz
	 5ktl507aOf5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FFED5E373
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173116835361.14927.12226621702434803655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5e03f3fe68e8590830fd2379c69de489d1b943fad3f2300806538c9a6869b8
Date: Sat, 09 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731168353
