Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285624C9D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756931396; cv=none; b=FgmoHT/BrTdyGF+C6HzOoZGl0uQaKc0PLEEwLbf4ECkjwwgV+q2zXB2XhM8LPALbEePI2HiCDOZ1zZv/AzqD2wsYUfJd+ZzPFIoeV/mdcH1ydRkizl270imk8wnRDNGHjLAtRPRxPNYIQrWEXXsoPPkUEugY3u7TbHIK2J+oYao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756931396; c=relaxed/simple;
	bh=7+lH3m3iqVzNKjA14OY6RxeyVVHjcjHGWbOsBNarsIM=;
	h=To:Subject:From:Message-Id:Date; b=fqnAUPwr3ZseneOoLT66VdHLZ9/PoKD3dU1/ndkwLb0CeNzHn0uyKeh/2R9wcLKyR7HEbLUAnmfPpZyMw2guRmIsowFtbhicu986bugPvnJYCU+ZOwvEpONTnUS23mq6bFlv4AskfvqfDb0b/8BZgtzVuebD7HafidXNjHAASPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+7DjkTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+7DjkTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756931393;
	bh=7+lH3m3iqVzNKjA14OY6RxeyVVHjcjHGWbOsBNarsIM=;
	h=To:Subject:From:Date:From;
	b=B+7DjkTrUPKVC6/Vh7OxpFZTdYVvA+W6oscNE5SUic5IMp52BtYfjUkd5NVzI8Y8z
	 hefRrsqvgDrWQpXo7cUsnwBdn62S3snjz+qqDX+AYoWpvM56Pm6YAviTDwsQQ6xdQg
	 gWxbtj1ethffqjBrcJ0X63OAVtsDUS6cfHEmp0XVWMjNdRtGdbOkdnVvpGqIdmhaWA
	 UfHymxIYXx8vOlarYSQIQAUq8FRiVwhnWe5X4veZ+ISzZS6XtwyNeA1ryj2RfJQDXd
	 ZHEGkcjq26ag2F2UH9qoPtV8htKfStPgsuQlI8rGZekguadQF++5vdJsIOqSCbOeLV
	 ZOGUxDby8JxRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693139358.26761.8156668309849132448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7219a1235f8711a844823ad1f9dc3e707e412acee746a1297f74bdc6f46d1b34
Date: Wed, 03 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756931393
