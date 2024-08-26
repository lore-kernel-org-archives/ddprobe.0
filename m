Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A6443D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724641554; cv=none; b=Gkl5INXK/jZRMD24XCmjzbcnnQzM3zccsWotZs4zDCzEcWplH3Q6yBTmfDrxdz1Qy1L1Yqldzj8SBzVDwo2aOdoA4zf5Anxgb+GToubJ2KJeEFw7H0UK4ud3YQrnYrl9dQ2vsryvJwCBYUv8kuzP2HwpVBsbkBgT2plz+vjdfP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724641554; c=relaxed/simple;
	bh=qv3I8TPbymxEVjLL62Y040LdLcdo1ErU8f77SnLSeZM=;
	h=To:Subject:From:Message-Id:Date; b=UVhTcKBhiiwbmSq6X3XXaJG9rmQdG2ZYAgSR81J4dlqTqoUmQDSHZwao2nRXHcwVzncDeLdfhfebqB3JfUjGVOtN2MqEh6+4PGXRrL4zbJtabfE62wmVnPKwLBQ6EplYE6YSzypARQUBS5WI3iE1iopYGWbDhCkU7WxGO3ts4/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZgvYaFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZgvYaFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD9C4AF14
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724641553;
	bh=qv3I8TPbymxEVjLL62Y040LdLcdo1ErU8f77SnLSeZM=;
	h=To:Subject:From:Date:From;
	b=rZgvYaFBYs17wtSJ+d8FU9YphuuTUZba53mehAGMgozq02SCPpGPsqIzGU/dp4FB5
	 UNd4ry794lBIWxWwOyPrkXzottifUOG8NKQzgzsJQmyBF4FOC3xCzZdIaS3MalbPg0
	 hXdF7bqmsFsYuMiAwcd0it3pTTvhXTt7k5W6NoWRaiAipiPLpSemXJxHGp6WCmF+eV
	 XQkQEWIF0CGY6dEAH9ftmXL7qAaoKF7qFlJ7rL+Ha9a0vPC9J73YpZnP+MbgjrBgH/
	 q0eQyJCSMGM3P0/+pYnd3ousj6NVoUXx9PBuOaKvUZFLTIwptBkziWOOvZl1XGLlvn
	 5y1H8/Kew8HFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BFC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464155360.29328.5169928014244140151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93461d9f1848a0223357be78296526ad699ad8c69b20a9c22ffad9efb647a150
Date: Mon, 26 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724641553
