Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA97238159
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773473093; cv=none; b=AvskO0c8EwkBYgzTiR9uajBXGErCaHNTzXk3MoUnUB0Kw5b4fRkNbiggcQIamqrPQbtRgH0p+YSjVns5zgcfAFxBZ/4IBW4xl1P7lAjsINwd1O080EMsmNWk+miZmbL/FBjdQ04ZTfxtLJ8sYNikuBzYek5jKaKHxCZgaMPCY8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773473093; c=relaxed/simple;
	bh=0IRqu7ovvsOWM5tDlvbwV3qyNuOHJo6FehgMzSsiiMs=;
	h=To:Subject:From:Message-Id:Date; b=nVYQvqDINMF/9CaG//pZSVBmZyXFXyVLtoC5VOxz0Skslclk8V4irmu+3nB4HBzWW+CACh1Aha64KOyRh/g3GmsK5eOFjDptaBT8ezv3wWxqIEK+KgWAHRfCUnUP/BNX6+uPg9FgJLoZACNCQuZU+B7HXNl1lxHIsIbqrv/F3pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2O7NWOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2O7NWOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773473093;
	bh=0IRqu7ovvsOWM5tDlvbwV3qyNuOHJo6FehgMzSsiiMs=;
	h=To:Subject:From:Date:From;
	b=n2O7NWOqxQ3qsjN7TiWOvDNzg5yzlAuqfsS0XRywFsSsfmNdaiT1fcxvudTZMJst9
	 aLIEdw4p0mJyhzGIBzXsmwGp2GB2fz7DPewQemEPeDN64trjOQgCGoKdxAIdMTNLBP
	 e7KkeQpNVEgqXF/q9DovMkqsYfaeM5OOaueUOZFqabvlXNhhxe/qwN7qDxkmHsADJE
	 +BtuTKvIyXbCqotbSn49o6m/9xAqsqlFkYbbX83QyLboP+PHolxFFap1EgjxIW8vQC
	 pud/raNZeF1VB+E6JqOSZNAIuCXy5vt0UFgmP3oadoP9aWKSLOWyQzP8La2LYKoBQn
	 jS3zgImc/Y+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92558107BCFE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347309357.22106.17338916505492024826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0081cfa01750a2d92f037fa9c3219f518b6a7a8b628afff3d47274c7d4107857
Date: Sat, 14 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773473093
