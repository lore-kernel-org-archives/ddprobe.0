Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCDE2281D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729199154; cv=none; b=G+RCsvJ9WUQKBhRHQy5jrXdCUcGE2xFYUNqpdUBylv//HjL8/dGGgMTIuSA/yEC9/6uHKQ4ngHEsQiQFqHQCRlOMoiKSOC3wy2HRIkknVJG84i7lEmik5Vkv2ifHhyohehmFlQgt4lG40gDhfkydCcHdfiudCyw/YfQ27559d+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729199154; c=relaxed/simple;
	bh=rNSJ2k+DUhNvPg0zE0w9ws7mpioPWTZyFAqWTAO0vqw=;
	h=To:Subject:From:Message-Id:Date; b=oA6lPswK2DOi8DepoqQcPK07gSg9I0jlafy1tTJEHvJ2zxvr8FiyODQXkBCZKsigCi/Z0lJZHmE3XVAL0VAe2UsX0Aw91gS53hK85nuW1DdC/SoK8VKT8CTCcqndUSPxXFkcix1c5XQZPXCOR+KrOm7EbKWwsieaSet1ezq7nys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYbfvWvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYbfvWvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6371C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729199153;
	bh=rNSJ2k+DUhNvPg0zE0w9ws7mpioPWTZyFAqWTAO0vqw=;
	h=To:Subject:From:Date:From;
	b=FYbfvWvCOjbNqbnnaCs1Nhkhua1a2apAE6YUaoavfkcDqpEEPk6lk1YFsQB63iGUA
	 eyd+Epj1YLQAtRpjqHPEvzl2ezBgp1zu4Gz/EEZvzdfModAIZLApXHxihlinZoEFhL
	 JkA2TnjvAksTnvkwqAUHiF097iAvieFBS9MZf4Q+3lT4g399DePaJ/xcH0nS13wO9S
	 IyrWWatcpUNUBke58j+FikDQmxK7GWEEsCmWac3G2kNLEBTg2HNHTFP1fRe6ONMNRP
	 26N9IA2dUNPfjYYw0aa63UTy1onShxE3SSVSVYVUlXfcPw1ObjliW6SNTpu7JndleN
	 +Vit/iBd19Kfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F1D3C533
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172919915358.26039.13098334939518723896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29f95801e7f79f770efcaf5585c66d448a025deaa1bfdaf658b3630863dfcfb
Date: Thu, 17 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729199153
