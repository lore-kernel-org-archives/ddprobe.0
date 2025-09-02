Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340372D5924
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829994; cv=none; b=CvD+DibPDwTMSPrxYR+ltGy5++lPDefOvto/m9qpjU46eLkwXcDPgVNvenl5REjdOFvsBJ86fgwOkkrqjqUoySQOfOAgzqFnTvqTPi+2APVcy8OJqPj2San3UShriJIFzyXVb+WHxnwxSRekNjF4Y0VDPR4PbLPtrRh9dakcDdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829994; c=relaxed/simple;
	bh=N/32PsxVOwCLXdX2URPDVc7LK6kNT1w/9HITKqt6QRs=;
	h=To:Subject:From:Message-Id:Date; b=ekwTTs6w3Yvx0yeIOvIuVWbD+lAq20EuNSp7p2fUC/p6lWq9vOdZqsnKB0fQSeJVbQi/1W7ulsg8bYOwz0WDG5iJY2troJ9UJeBfzc3NyYa+n6TducMPYlDaxYq7wkWc5Nz88c0Au3TxIzvGCHzuqLaGy2FJf9xZZcSuy6oI3V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS2cdbMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS2cdbMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4600C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756829993;
	bh=N/32PsxVOwCLXdX2URPDVc7LK6kNT1w/9HITKqt6QRs=;
	h=To:Subject:From:Date:From;
	b=jS2cdbMxhnPayNIu31xOOXc5ax3R93aoBZuDO+jxqV/b9YUqzFXIHO2G2/pdfVeaU
	 IzRtR8LXWx73XbvUKlOcR8cABhT6ZhPBTqMniFu2S9E9jfBuH8pXOfC03nryakZCCv
	 LV5mBdbv3jc86gQyNGNdTQlt8a5NYQuog+zlwRPL/uQlQWj5kmP4+Tqh7TEAUQPWqy
	 uJfeNK9o/wVSBUdfs4NsVdYP6mMXMfSAGJFE+P4ADlef4jtz3csyqbgBafK3HhKSEO
	 5WT60nOzZTJXrYScUlLKj+IOF3xfu705dPRUZCtlUkBfpDHKXz4q3OGYD76JtB/dIZ
	 BRvKx2BG00txQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD0CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682999357.27375.10430575066037249085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee73201bcafd9bde6892cef1e7a4a00d289c24313d405656b833ec6936e128c
Date: Tue, 02 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756829993
