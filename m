Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A60045C70E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792137634; cv=none; b=kKmbZDj/YBrqf+BjjnhW1zaQPnYF68hSeBryIuaeE7XQt5QVqBK81qbXfSO1CZELQ276xKOX0eaJkRWzMJnwmcTCzHRHLpqRvSOuMIZnO7T6h5LxkvtVVrkvAHBFOLUQ4dTs3Tz/fygSqI7J4uv3kGPt72Zd70rHIxCFV3c8nwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792137634; c=relaxed/simple;
	bh=wOkYCqZ9q5hLEEY30FwXO6D5M9x8v22yh5qCcYyL/54=;
	h=To:Subject:From:Message-Id:Date; b=aVCUPRdArJiig1Mqi+sd2+wtjl7isCWZJ7ofSG9I54+Pxfxu8QaRI5dskJIJBOTx9TG7QRaVjtZsdY3SoMR7wvULC987BkNJegEwIIm5V0h40XXjVzxYqS6MpPAKltd3KCQVKvf8Q7Whh6gBox8fbLy1rB+YAa9R45HmETlbywY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyTT1J0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyTT1J0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792137633;
	bh=wOkYCqZ9q5hLEEY30FwXO6D5M9x8v22yh5qCcYyL/54=;
	h=To:Subject:From:Date:From;
	b=fyTT1J0I1sZ5nrmOyekHrtwt17mIW4LLXzU4UFbHk3/NAQg/UsafXopQ295yXY88m
	 NXc/GVNjkRTHRllM3PH0HtNHQ/AaninfIgeLwlDeItj6PzDaSErX6BnTcPu9RmP3LO
	 uQF0SDSH2/7JRpQCYPHis2LKEB8/5Thc1Xa8sfw0SZF9032k+gnX8112JRpZimKvRI
	 yboRHquypaXq23ic0KScxt/SeXM6vmd7xJQ2l1pWw4q3jjo3tL6RhbbTYYBooVU4BB
	 QuL4+te7W1Q5IeAHCRut2nY+yB/vLdVqWW2EpdAw2VaeEMfhEVYISN0hzVALzFjuTK
	 HBRCTbg4iI/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA59CCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213763368.19756.5660990039104306887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d71617636809635dbfd736a9ac65fd39c5c692dcd49a3e0212cbbcf3050de6
Date: Fri, 16 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792137633
