Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232DD1A238C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765356174; cv=none; b=mX8HrUuNSp54ugD1JW9W9SetQq7PhneUUlgeUnqyKr539pz19/XWv2f+KATVuE0JPNIxb1gIbqsieg1DO/NjgOA/AQWahVgPZgSEgVYbTio/BFzLyiQu8TDHbftPRh0kxizag4toLRaEM3HxrVWQGBrRXUfdLMLghkACtKp4U/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765356174; c=relaxed/simple;
	bh=AloMndUSuxRNWJ4I/CLigZ50oug5v2VA4ysIptwbu1k=;
	h=To:Subject:From:Message-Id:Date; b=EydEYvecPwBfcVcmP5q9jwNtNhyI/KYsEjZ05pPiNAqHBv60uF43Qvc7z8CvYMtkzJiWKKATQ831Fsbl9GOJD6ZY9DoFMKnxbkbIaP1OX8O9UotIwJBOPZl3CEcuNIMuuWBBU4JEtCAaUicnf6uOWlFRSifLpc01OnoN5jvZgqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld9hxlRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld9hxlRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765356173;
	bh=AloMndUSuxRNWJ4I/CLigZ50oug5v2VA4ysIptwbu1k=;
	h=To:Subject:From:Date:From;
	b=ld9hxlRpG4fSpu4szUpMNclPZo3VF09fUkKeM2p9fYpCX9nniN4iFfbZtwDJHN1R9
	 mTxSinQgFrRwrJlI4jktNn5R+jRJ2vbRmHCzpGTm1a8tXhkzgNOlO/Ox3mjZjOvzcB
	 Jkf/RiW9Hi5BIJfGASW/smr1RzRo7A/fdc0JNqNiuKjcS2j8mF8ALSdOCrOj/9rHTw
	 G7v+jKhvxLdbducB1uqwWBLhrBfCZdAWCCepM7wIPR8fR2ukNxT/yb1hSyloDG8EoF
	 fEOF981Vc8iHPB5EAj//DR8xhJlbJWL0sjDv55GmkusFFYru8SdZUdMixeHH0855bj
	 4ugrzS3R7WdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6FD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535617361.3261.5012272539230250051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d80702cacf84f677d41d50f39b8e4a7a76faf5e9b90b4732538dc4af771ae7
Date: Wed, 10 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765356173
