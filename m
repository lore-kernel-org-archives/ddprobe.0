Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936D14037F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721325354; cv=none; b=WxadaCFIO+XOAhPer1ul8yF/nCbDEETPHcDBGJghSW12MPXCzrBcZympLvV4crgsG3t1rLhYGt7XQgBx8rAvmwS5IapVYuk9A+Ap7JDAV8MvwUEQsPdTZP6ryXQ136zi8cL8wLPjcC18lZsiRoqxmx4qacgtjnMI0iXWO0L9C0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721325354; c=relaxed/simple;
	bh=X5y3+/G+f+faQODDSIEvV78nx/oj2md1cRppFuAsiTk=;
	h=To:Subject:From:Message-Id:Date; b=hOhNydDUUUis/NeIZEhYK+ToaAT3832an1kBPYsdOz4A/+MGLupqAK6XSUgGt6YJFmXAbWNXiCeUzp5FrseFOyOsN3Im/nK3TGyHmvKcMKXtRuni6tBoTrfmiYBBj70q1d9THqPffurQoDYAFK94DxK5mfr6JXde1J44py1ZHPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqfI8n5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqfI8n5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8543C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721325353;
	bh=X5y3+/G+f+faQODDSIEvV78nx/oj2md1cRppFuAsiTk=;
	h=To:Subject:From:Date:From;
	b=NqfI8n5eLFRAYg+WEnSa6yR7nW+BYAmOLY2VoiYpulLlNlkk8h65qKs8SO20iZ74S
	 1hFQS4c1/92F/uB322ZYIwt2yDfwETK96B6JxJ23U4pLURsiteY/jM4I9xNxJUoxkp
	 Jq4tv1FZJ/dv2OS7PJlOZ0EV8Y/yDRhyV3yjNEU27NcijhikAWeb+gu/zwxsAiM4Dk
	 4Ekqc/uDKhpKv5AJyktsCCPo96fdiJU5tcIV8GwiWi/ri1ijmupDSm1A1oOB3E56IW
	 5kGVz780v/rrgUOAHoj0ZmBvNLss4u6jsixlVLzP5tnlQLh5tW7lrdybeLgGhVmWDu
	 ziY/z7fLQvGYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DD1C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132535361.2037.16785474401071796985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461af8e94cbc03f1ec2671bc1886d2057276fb13a3dd80d7c53cb836ed77b2a7
Date: Thu, 18 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721325353
