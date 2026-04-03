Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBEE291C10
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775249734; cv=none; b=WxWaEUfJPEfNnBg5fwRv7Tn2sj7JH1cEEsIItExD128uqu5fIPq12mJglpxMMiYDRhMsb9pXRBWGNg/fWA9RdQOOaO9EIF4Q6jVzBPS+inYZJZYZVT7z6JAySOJRVSDs6g130irzBNLyJIl4ffZdXgzhdbpfsGn2PAmqaik+M+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775249734; c=relaxed/simple;
	bh=Zp2TqPH3lCoI113DSA9d78B+GGvxDvIKPCdGi7pXjtU=;
	h=To:Subject:From:Message-Id:Date; b=h3JtjABXngtGBzlGuD2YDicx/ieFp1+W2b/MLZns0IZI++M4fbgQdHFq2R0sjEPg4Jumz9B6ecpxpEwzRoK8Pt4lRcPnfeZhXOL0L1gUIFWcX8cYx6iDObyzYuGBQEKPh+3ifahp3NBdEFe21j15PhT8GON9ZuC216i4JWszNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5g51Ry9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5g51Ry9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C669DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775249733;
	bh=Zp2TqPH3lCoI113DSA9d78B+GGvxDvIKPCdGi7pXjtU=;
	h=To:Subject:From:Date:From;
	b=I5g51Ry9SGr9+N71Waw2lS8Y/9wmR65wIYYcZspi9CDVVQTm/xdCF8Wvwahaibqy+
	 jNlxXVd98DSbQXDip/DWnwhYZwt/v92zxAbMYAb3hOxZno8lEduwQuruTeVCrV8fv9
	 vEOm0z9utX4OuA7iMqOqzecajRCw+Srp+L12urt4e/2HY6vTDBSA7kKfUFLqsYQLf9
	 cz1dRmM/GFlTM7O9JOFWwm8alU1UZZpypLqKMDz8CCKu/8CPrhjlaR6dJwQih/gcgb
	 TnxJ9CknXX1fNQAlePWpao1WW2FQ1rnz2FClYOrolzcTZIesHkPVK5hO92tU+oTyyW
	 n/lBtygVFZ0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BFEEB577
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524973369.1599.16003326372283309872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7bcec7e1109be921bf4a719cbb35ab68d07d469e1a482d814a8037eb2945321
Date: Fri, 03 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775249733
