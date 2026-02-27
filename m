Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1285C2D8384
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772196894; cv=none; b=aeJ1uIb/u1a86j/cuQ/w8KF0E8/ckDlUxLUi0ABiDxWIpy+g3E0c3PV3j5HFo3Yxk7z5KfwU6nGBYLAz+yMHxE91TIYPemYYFmkDdaKgx+xD0OpjVMLpIk24cK0ITjD06YvdkxutRUE4AdXW9uIzzYP7YDOxCaKxIX0XpybK0ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772196894; c=relaxed/simple;
	bh=pu+Fuag7zocYhH46IzAId/swDYuTsNN7iFdR/aj3/GQ=;
	h=To:Subject:From:Message-Id:Date; b=BYLPa+0gpdpRoA40qBBJn7e2xVNEzmI41x1rqywsirUIGQ3lz/C4+u6GQdsRmjGpm0vyQfBbl+5vNc/+bqMg3FS4F9heJGkj1u3pw0EaJPjV8laHtGQs7QXQaOChH57kbmuvAI9Ank/K94tW4F5eAHRiB1uxyi7gDpy4s/P2qX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbfzJyOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbfzJyOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7346C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772196893;
	bh=pu+Fuag7zocYhH46IzAId/swDYuTsNN7iFdR/aj3/GQ=;
	h=To:Subject:From:Date:From;
	b=dbfzJyOgjqb+giyJCQBp4ZgADvNpN/OpKjvk7GjLtGg8brRbdcVXQbQ9MQCvFuKDi
	 JcdEg/qA42LcjW8f7bSjsxPahJG2xqitc+pElbuqfkiUDFHlMyNm9mLngp5MkmJSQp
	 wxRClDpcKlbAjh9eQadM1/tFlWM+qO0EDACt3XFZ6zGF05vNiZPKglhNO0K2EsPuaa
	 v38syLkG19GJLkYSRrpKut28KKFH0o7fNNgrN5OV57QLxfRLocXaSua/hvkMZYljtS
	 0sJ694QApAAnLdqOacDT7wyBLZmiPepT+c831GOc8lslx2jv/IA0/qptGrz9rjIROc
	 nNY1A5vSTukaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593DFEFB4D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219689358.9310.3831388211358327299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e54ae7ebbcb270cd066823c659264094d20df057b39da9ed30f0b9c532b9c7b
Date: Fri, 27 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772196893
