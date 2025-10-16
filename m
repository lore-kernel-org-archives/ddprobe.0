Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEFB1EBFE0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760647194; cv=none; b=ZYDpmIFiRmuNv3Pa510gpHWcMSUoMtULGApc5LnHuoH8ZvB5AnxcBrfr1iJ35vrE2yAYx+5+/W08X5JqlCOX3V0t6r7WGu6zCREXjtWEazRZsEd555YRV1oV1Edqed+VJ0AGbAC9gSnbMqIwV/fbA2/oy991eMqVVBNO4PtpC0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760647194; c=relaxed/simple;
	bh=toCb4glMQy7etrJtJ8QzBHPt84lOBnrAiNjHYPFBtrY=;
	h=To:Subject:From:Message-Id:Date; b=jQkjiCQzJ4xcrJ1CvdJu5VL3Hqs+KntDFZF7/IEFP9sGfXGJc+hPOb/fyr+c4k7y5lgAA/gr3b94pmhIa3qABlU5MdSJvh35+bQu4eZ5hos5XJYyrn+Q5aJxHx71CD7jIJiv7OBHRwgiHZEA/7epi38iokvyQZrVlZhJiugUsAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCOCXers; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCOCXers"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760647193;
	bh=toCb4glMQy7etrJtJ8QzBHPt84lOBnrAiNjHYPFBtrY=;
	h=To:Subject:From:Date:From;
	b=oCOCXerswpWmwfvSJgcZrE+RfLIThG7vE/DxaU3FHgmK17/0BW5p2ovQvc8ozrdUo
	 sD98t4p1bfoIiETo6uaTwUg0TY4DEEAlXodTD93ZAhN1XJwGxTi3z1D2AtguGI1Qma
	 ZSMvQY8lzrpOmpD0JCcyXiL5TgJDTvjyte2UV/hHW/eQhCEDzEC3pnvVRjFuwCfmpV
	 CnZvWMe0y9nbYlYO+II83P6++fQwF73afQR8LUCqRUUoKI/OnCpJfdqJ5lwtwR/2/j
	 S+lMzx+o+ug5NaKHGDk97mIXQDj7BF6h42JOxBET1nwSsFl24fLnvKXWVfzEdxfN3Z
	 YkcwWvmTqqvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058FCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064719358.26985.15989106226388549757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d492af230e107203fa2138df5c9f3d71f6b1d816df8d28e5c60267239e40fb9b
Date: Thu, 16 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760647193
