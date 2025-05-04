Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8641FAA
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746371395; cv=none; b=cO5e+BqONG9J8hJBKAwf8Srg8VoDeUe3unnFRPl1ugfisKt/ERHa0t1W1yZCkcXYV+5YfnxUxeL87YTZQ9yWxsLMHUxUSwuTl9br1OxzfrtbkafpxAm67M8Tn0C63sJyruMSoeOtDyoFIz4o0vA7Nokr1Bile1n+Tb8JKfhQsHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746371395; c=relaxed/simple;
	bh=MFxpucDRGYZGhlQKLUZHHu3H/n1U8CxuQtnywq+/llQ=;
	h=To:Subject:From:Message-Id:Date; b=K7Q9XBFI/syjsAEEo1lStLL/yHAoAOFC5XI1CJEl7NIxyjKD8DUeRhwyIfwBjFliYsJGj6bmLJHTdSeeQU6Vzjt0l7inTTQgR2SQUUg4+h+L+TCaUzfVfnOcpYvZThv0ZW4Cr90akEoiaOSpOYbgX/Y5JCVloyuOgqo749lOl/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRfbm0GA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRfbm0GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBECC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746371393;
	bh=MFxpucDRGYZGhlQKLUZHHu3H/n1U8CxuQtnywq+/llQ=;
	h=To:Subject:From:Date:From;
	b=mRfbm0GAYXT7bFTtpHbns1RFPhED3KVw78vmVGTidGpwn/+M+puUOdWK7TeoeTcJq
	 vf8EEUzE6dNyR3L+O1srI75TghvPhMCqf1nEseoSSYJXbeitaOmhXB3avaRVXVW7Q+
	 QW6ce2abENqRVqKgam53w83ilpg9oxEP/UWyapwafzl0vSVzsw3OKP189YNgiE5nhI
	 c6wbAmuPA6/3BKkN9ix4C0b1IZu067spHIm8VdpZ7cws0B+LwE36qpJiiCAWUXEI9s
	 8ldcinngDzXOM2BuF6fj5Z3J3n3n18ljejSdKDMKQhwJn4MAHDX6uAgIx7axKKnqQ0
	 8nMgPayrZm0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEAAC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637139357.32075.7388247325235868276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694f794e2e076bc7399632a54a7c5b9dfd8129add1635e844c2db2d0762432d8
Date: Sun, 04 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746371393
