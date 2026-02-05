Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF73333750
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770273834; cv=none; b=kIGSD8psk/237Z7cJm9CPg+V6ZJG10IXFJ0WpaOhv+8jp+dMLRLT2QbkFlKc8TqVw3w+oh1z9BKBqY6aenuaFrkQ7FQrtMjd5TmTzlXRa5SaCG+mHtVWmTbuJ2I8JtTHiPw5W2+Wc8kO9I0vItpEXfT2EoUyDEaQaFn5/X01FV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770273834; c=relaxed/simple;
	bh=tE+Lufx+FlWUoSnEf6IQdCgUajxUQDotW5vsRVouJiQ=;
	h=To:Subject:From:Message-Id:Date; b=akhne/FDuop79ZYd0KeXGN5a+2SZMYbyT1Id/CtXOOnbWz2kWX8zpg0lOCxx01RW3o+RyePbFBg9uAL5vXjai47+5bwEtwx3ccHzJGomtUxjsuyg5p06l8QGZsMxIra2bze8uGWAZ6cZUdB+Ui7wSETTfgSqfRw/IiRdZURz8S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYDXBUc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYDXBUc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CF0C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770273833;
	bh=tE+Lufx+FlWUoSnEf6IQdCgUajxUQDotW5vsRVouJiQ=;
	h=To:Subject:From:Date:From;
	b=EYDXBUc8/+tin01feygUs1mtpvhpw7QY3peYsyMwAOs6H2z6h75DpxS5xkfRcftNr
	 sVs70GcHlZpjydZCRkMiH1vnrSeWOf+hXnVWy6R6XlGzN8BHUrL9rVJ/7fn8RnnY74
	 2dv+35qxn7Al7V/QeFHfxvYzbcN7g4vBTarr50R4eTmjaUoiGu6lESUPGMj1gRK+Po
	 U9TyAs6ZwtTr+qhkDjz8INblu1w5jg38pT3aCz+wxxjr+j//x9oxp4LIIlP7Jxt2G3
	 sTtt6hrYn6bHn2bGNjwbUUcL8UhFx35QLIErBntLd2LHAr+bGZ4vFf01FJygslnRn6
	 vUj8973LXg38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B571E91264
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027383360.28709.6133214197510313698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e413a0501232cb2c931948972b563d14311f716bbcf96663a829c57cfe5e8d0a
Date: Thu, 05 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770273833
