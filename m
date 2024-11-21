Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390AE10A3E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732209954; cv=none; b=ZPCL5UEdjxy284b0aRBR76lDK24yauVdhlUvDWp3th/yuW4CBQmj4PHD83GSzZGotu8HpWUSmAHIIJqZ9FqF/yMCoGip2UkBeKGzzj/7djTzWCvscUkec/3WxeT8clVo/Pgq/SkpvwyMpYvvVYmXrTFr4bxNBEzl5N/qI3GkoPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732209954; c=relaxed/simple;
	bh=GFoLX88fr7Onr7USJNJuJNh50rUP/so/PPaniQSPwGA=;
	h=To:Subject:From:Message-Id:Date; b=eYXP97X+gJwyub9j68CqjBYeSq3N/A0hFH5htgFqzQ0ak1udqNrUaCxXF+VLqInEbyBrUZhEi3vZs8DP+IWF2ZPr6Xv5grsbra+WqI826SfnJXyJlPS/SoS46A4YzOp8YOVM6vzPbquKzYEBptUTZmf4dg0CG6yHOYjgvo2xdD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovzw49ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovzw49ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74EFC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732209953;
	bh=GFoLX88fr7Onr7USJNJuJNh50rUP/so/PPaniQSPwGA=;
	h=To:Subject:From:Date:From;
	b=ovzw49nyL9OMl5r9wrb3Vmv3jtZDb7slz2R7KKF4t496C/Fm773WvbYfwVLufg6Ii
	 THGXTZlUVpKeyDFbHHPjgNrXH8RYbEOdBMvN4WeWYqVkXeyEj7t0rT6UVh7QnJNJSG
	 +8HpAaPFh7PYnx231CdrHrHIGpr7QbDYy1GHKtEyp27ew2NahOhIZRV8wfJ7i+4xed
	 0DMhFwxsT4ChV+ggFHT0i8fCHiw4FtmTBDlmS5VZPHBu3P0WKCzw2y2+DXOp071ARN
	 7BCvw4Ey6P3ahdvHrfegbXGXKyD2e0lrTVgCtLacor5w/6gVWP9ejPEprDFNOzQM+J
	 ufanZJ04rEQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B49D7879D
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220995364.12414.14973213504436837044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa570f1b72726025dc5b232861bcaaf7281b71e244aa9aaedb7f6a14042c627d
Date: Thu, 21 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732209953
