Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0E3CEB8E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777964254; cv=none; b=j+/i/Bth3snKG3mZqVIk6QnHcWIfmaZV0D8bNJDfcetiHRWNpx2JdellTUf8A+UmA3Pp8oEeYacHQ5y3FcwnuCZRRAXLjTucxll9H21aHFYwyrDfS8yD30Y8vs1MM/0CQWAZxuFQzX8QZJ1oe/gmxiNzarI11l/29uA+vOIBFPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777964254; c=relaxed/simple;
	bh=Df+DNxvXlV17OgW9nzhmrgqu/Y2hUmurKuukEuDxfgw=;
	h=To:Subject:From:Message-Id:Date; b=DTkxIoP1kul4puPKAgnpLl7hJDH5C7lRjM5VOo7RPpTiYaehMrLP7DmkTy/QqwW8g+DFaSVYlcyTnYlP7V2uHlb8zYmODgBf7C3d+5tBqZwjDXrKTav9MHsIAun+EtPtFKosHoIye/5nmy2mxkYvfJEegAQM38vPPDXRWy58VWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td9XAX/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td9XAX/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADD3C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777964253;
	bh=Df+DNxvXlV17OgW9nzhmrgqu/Y2hUmurKuukEuDxfgw=;
	h=To:Subject:From:Date:From;
	b=td9XAX/O5L6a3eb54DJTi3r1/+hRwBtwXMuwvwHGQ62VJDoT/t02K5eEvVpnJ5uDK
	 a+HX3d/uyIhrVNcjkAKZEcsqdIZIMqZ23Tn/cxwT5eCz5jIa09YaCtjrRl8BS7uzQD
	 7K8g4rx3RDM0rxewUH8RIpUnY9Pav4pO8enemRIjqR/fRaxY85nISjmfLBvJzE0yqp
	 EhUwUnDMkjnpBTR/Q3bf5F9RtQDwFUQaTTfPJMxk4PAcbfjBZb6s5QeOXVI+wMnY51
	 XIRQHJhhpU6vBLzD9KRXQGPZOwuTQ1oEWmUNoBx7YNnh20GMxiRZGFpF0y3HrFgLst
	 8R/Bq4jRTBqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6BCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796425368.27027.9656476819423047736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a08a172bf195b998cf485c9db60d3068cc89e8fd1807ad37a302ce8d0500dd
Date: Tue, 05 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777964253
