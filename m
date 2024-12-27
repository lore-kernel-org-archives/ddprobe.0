Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA42C9A
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735267554; cv=none; b=pRYaIDInnvwYOq2i6+ZWaHPD9kzhRSj5c5/al+LRI3OCpBvjkHuCxqIOi+Roae4V9f5wuRGY9gPz5FSrEm9dBwokurqhuYUhlDdVdnXQ/YIgavuddoCKj3XHe33C5809dntMmjk1vsmektf0+h2EJl2vTl0yUw7gT4L7hB3YNok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735267554; c=relaxed/simple;
	bh=YS6G7i37ij4HQSjCjjBcdbuwCIoQyI4va/VGGnK2VHs=;
	h=To:Subject:From:Message-Id:Date; b=CzSh0G5/65xggH6qtkilGl1O38bRvDsuqHTgDpwzbv4Xa8iEOKx7t95Y0cEeZDYZtQrp/gBbEaukriF4jz2OBvl0+Af6G4D/T78tC/c3Fs6VcK6M+529VVMherlrWInywcWo0nHyaFeuGrtqQfJooYldAPLpd7ESSDV4UHIQXoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAh5z9P3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAh5z9P3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA452C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735267553;
	bh=YS6G7i37ij4HQSjCjjBcdbuwCIoQyI4va/VGGnK2VHs=;
	h=To:Subject:From:Date:From;
	b=RAh5z9P3FSgab/4KnKSVZCByQsk7znQhSeLPHcps+N89qcHrTBPq0qYKnACsOvgwL
	 R4lrwT03xAHSDG3lyLPqxD4rZWWsJDpVL4SZerO5xXYDhA5mZZw5HFlhuACbYlAWSm
	 PYhYhGnvUZyI2LwJOOug8nqtVGnP0LeJ+nQoagEk4G8S+6n66fx+4C9q2PiODeV95r
	 dQ6fgs1PmVEaNQ7AfOgMb61fsJGZOjc1+MAGUaIM2IbIpsMx3+RurUE6JexVLsDADm
	 EwB/vzAQ3Je5MpujvHvL7u05rg4x8iafJ/LaT1+ez7uYZKyrpSlhIvyOJWoB53zzn8
	 USqalJWrYu/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD9E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526755359.25693.17866413906753760603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f895a924fd28c29866068c1ba35cccfda0ea6db8346720491ba4fffefa9e338
Date: Fri, 27 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735267553
