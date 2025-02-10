Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C5925C6E2
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739217354; cv=none; b=aBDfVuqcH8vH+8ohuqW17h1AAkjhhbqEii6rNIFDduNGoCmro+6ci0TuF8WHbRChlV/MxybaoCX+iMT8j3wJNeCQfI0T67YBhZAdAiFWaCPGLAAX2f9DYqtkwTIcPEJDO0KvgVGBTm7D4/AxuYAs1KoDPO7dXFC3LlxlI9dMQ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739217354; c=relaxed/simple;
	bh=BYFPMVaMDtzqZ+m3moAyfnaf93LKWcMFOrCKmhVUnB4=;
	h=To:Subject:From:Message-Id:Date; b=VIdPWxwZ4cLfaYVCbW8W2OKFMF6pEG1+eIEHst1NtBTPMow8ifnsMY81Wq87DqClYjgCqOLlAUFd1Ssnb6GpHaqZxFr6PcW3VPAMD8sUBPM1gANiGPo4yAj42ApOB312CuKN1PUpJ7GDXInrCvczacCgJDpAP33xuc3xgUoeiM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nllnC5Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nllnC5Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F25C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739217354;
	bh=BYFPMVaMDtzqZ+m3moAyfnaf93LKWcMFOrCKmhVUnB4=;
	h=To:Subject:From:Date:From;
	b=nllnC5Kesu9jHZcGct/mYfY4k4hjoWkU9Mh1gBMb8POLA16nuIt65l9DQ0DO3yN1m
	 rl517AIz2n5aR0lzKXsXAn98ZE2uknrjt1Uh9nH04xlX901qlDUqcJ93DYEwjqEVzu
	 3IS3/HJSSoq2fWXBepKIrn9av/2JVYLyvOI9ruXlo2xoMQaYq1LGVI3bq6fkV6gk5d
	 8LbUc2UTAZS1OK0DHYeUyi0FJt8Ruw9aOVw+4KxZax7zVl4PTc8kXe6uYeTBURoeI9
	 ozLgjpQnyu4LbOoGZUWdEhFMOo1zDx/IWzF+qbTc8Bm4+vpFUsnOBOW0/t0lXpmPDK
	 4xxzHRsnFwKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAF0C0219E
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921735374.6188.3493330164354941645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce66823f38d8fc2d985906fa690b091bd182de91e7779597fb1e40d5d003b2e7
Date: Mon, 10 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739217353
