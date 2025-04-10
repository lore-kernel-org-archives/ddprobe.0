Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3537B1E9B2B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744292994; cv=none; b=aMkigOphZ9ZbXlTEpflbetA2SjjN/dRZR49ip47x4i1oNtpojAaHX96aelawFIQLeZSjMISlrNYbMhbYod8hisvMGpVcCuSTrc+yWRGfplbdeOZFwD23L2Bh40AQs8BW81HjlwpoPed20jwv20WeRgcw0XhSz81pSBUocWaPrp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744292994; c=relaxed/simple;
	bh=Fa3cFVyo/yfffr6CveSvFZASqA5E1qaIjGCbEmOwOus=;
	h=To:Subject:From:Message-Id:Date; b=jv765JgZG9/6ipfN1G/wyrPehH9kAsH1dSyYVkFmrOo8QfXRWIeVEWnXhU6CrjiOxjsEqXjqWDP78ClIUaUpyxDcaiJxMR2WKMZmzJf263DEaQbIqyUNWFP8hgKGcJlQEgD1ryzcQd5+iUmna8uY6tOlovFZ2Jmg987HlQfZgUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmYSO57g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmYSO57g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6615C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744292993;
	bh=Fa3cFVyo/yfffr6CveSvFZASqA5E1qaIjGCbEmOwOus=;
	h=To:Subject:From:Date:From;
	b=EmYSO57ggszIadb91UJHfdZl0Pl7e7IssKXpcOqF53iz7774QoGmK05CDCDCrkmgH
	 YxT8IofbsxBToErjxl3pcn4quSpnp9lf8uI5Hp/h2qsNGo1ese+5ZCmMPLoHe7YZpw
	 lHzdMHb/rEdmmAhp3IKVWM8GrSD9PdN9vM4YghwPF+lka26AuzMh9lKzD3smsFub2y
	 yvup/zdavKaFteB1fykheYNZ1Zp8WHM34ZZPwECWEzzEEeqPZUv5CPGcQMPsIh/16a
	 XEPpQPBA4W9j9TbOd1ybTUbOYpEWAQR+cQIh9ZHB7Fq3tWsbSQXsXhTFx5ovc5mbgg
	 w8YMwsGKsH+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95420C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429299359.20090.2718808732043736395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25660cf4a284e6d0440358d3282bbe524bb75da42e3f2d093ffe6b5c6826699d
Date: Thu, 10 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744292993
