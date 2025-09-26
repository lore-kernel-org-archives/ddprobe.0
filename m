Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418113BC3F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758919195; cv=none; b=dL27IhPcv3/kyhiDgvmxMEYbj8HKwlqfBwI88U/e5SA05qPQ1+tk5ntRuvA3nv47eadeL04B40X6gsU54VOsEUxbhl+J6UOX9oGroOvXfS0SHMvgzmG74vkjCLd2temf2URHN/skjIIjj/Whg/KfefGplb+g/Ivikb3B1aoZcnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758919195; c=relaxed/simple;
	bh=xxCP8Jj03dXhgZVlFSjVTHzEU9tpTgciLr8M8iGH9jE=;
	h=To:Subject:From:Message-Id:Date; b=QrsRyo5xzZmpxcxXgfQObigfLJ9ElHBPClbUCkGKEHBXXF4vFfDiXi4GcWNBZPQeD7WlNc1bV+JnuTLWDXlflVug3hOD+Ay3mOjhVY2g+84Gv9GJPkj8vLNZELaAOTN6mg3m2CR6oXee2zAxzO7fJfHJl34+5gNloBVQpZ7hJCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0+0dQu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0+0dQu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758919193;
	bh=xxCP8Jj03dXhgZVlFSjVTHzEU9tpTgciLr8M8iGH9jE=;
	h=To:Subject:From:Date:From;
	b=F0+0dQu1EqJNDuNyVLQW6V8b+fj1sMvYC6xL0EWhZhOQ1PahROxWVsAkjZw03U+d7
	 eoUsXL2sheTkq4KCpE4Ihh3kQLhzDkzeVXKMqPFV3blS/Egibexedy7wXeMZs1QpCF
	 DHXj4oF0WXsEH9zz6TzM5NUQTzRy/v2djYQ4FvJBGMg4OdmD6+Y+qxfIs0ErPeT/i4
	 NdwYixq4085hXwM6qYmo53mTcw5HcGrYYuITwHW5Vw+HcK42Y2ZZlt7wrF6bgdI9CX
	 Z/dfey9KPEysKhmYTEoIYZsgC7zqgo9Yg1PsZRSxXHoiNy2DdQ43ibc/xvUP24jYJd
	 a07+W6mxMERnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A60CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891919358.3091.106881064594356927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8163566c91a18c8a3555de65965acaf514ce9646911f69b97d0c8dbdd4d2e2fc
Date: Fri, 26 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758919193
