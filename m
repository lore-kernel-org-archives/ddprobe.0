Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0698821
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736112354; cv=none; b=U3Cq7Q7oD7I++3f6sveOBhFFEccKzq/cfNCd+gsIEaocth7RUW42m5n46Sfb3IZq+jjl37GMttdyr+Tr0BXrSnWv9iuzmx2My/WbIspVnwa8p0X89gdhpu1d87rQFu8cm/G0lmMfnsbwY9ykH5h8Hw4ikBk4T8ueKxHNai7bfYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736112354; c=relaxed/simple;
	bh=sXMhnQWvo8P/ABNzvBOWFbCZtIRdnFeK6iqDy+q8W90=;
	h=To:Subject:From:Message-Id:Date; b=lRR1B92e18WCbenQ5YBGHPGly23jpCRvgdKn59Mz5NOgcnWlkmMsKMA3/p2K+4RDR6AOOdmSXfV/wDBH2TEJc4XIk5VPS6OjcVfZCLHXXWudC55kSfk/bxDrQ+8vy8BRkFCK5TfcTev3tIyP4YEhI6o6r5ROTK2DTtiMi+Ivn8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSAqEQ02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSAqEQ02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E88C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736112353;
	bh=sXMhnQWvo8P/ABNzvBOWFbCZtIRdnFeK6iqDy+q8W90=;
	h=To:Subject:From:Date:From;
	b=gSAqEQ021/HZxF1R+tU+0FjkR+n3p01mDsbQXM1OqxNtu5tLtBrOGsJxN/oS2tg1L
	 NsTczijpW7zKutVO95jdDnApQxeh/lHAavsecM2nfL9/reZv29nLce8OG1aZMfY3U9
	 eHT43ACoqaXWYofD2aOft5dWOwomf/1q/jRi/XzOqqT7/OoHNaVDVOKyQz0a5Umuiu
	 bPvW8431AujZIQlCaqQcky0+wdSU9inwLU5L/cRxdIpRt5taoyftFIeno7gK/wRejE
	 RqytYp9YbgGRwU0+g//AphGVVL04FQXs91xmyFeuLoS52rfb/9bEYCLgSyH6aPY/Fb
	 +BD92tzH/EfaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CABE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611235358.1542.11216011168023702436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b54ae359b02d1c9312e856faf53f572037855d901eb7444b8723e88cd1871aa
Date: Sun, 05 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736112353
