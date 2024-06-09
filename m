Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6590F2D05D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717945043; cv=none; b=VJGqxWzSTnyFOhbkdZ7Y2jGLnWBnNAjQ+fzyLZ40EcjajtvqsOFbAu7Z76zmqjPM3jG3NPSKZuFmDITWwEabquyv90ubvIJjN6txhljWDjF0TxA4Pqu7s4AH0zfJ1dEN4LzBAKsZIRy3Fa2chJ2q+51gd+73vpsfqvqCpwdo2kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717945043; c=relaxed/simple;
	bh=OMhVbzQO2EROHmhYWSqKyfxk+bc+IKFz4rxnMYvXxFM=;
	h=To:Subject:From:Message-Id:Date; b=RPifgGhF0KUqqqKbLoMG5ijsndKRCSkP9UwdlytsTN2Ru38nXthd48BclK2+C4FYFouXgRWN7xooptjw9lV95BlNBkOBDTR6eYO7MyNwU+r6RQCDQYbnnhIHaMyCEe8+AYqdQPHF1iKgYthN8UF/8CN4LWk+pDygxKo+iDSU27c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxCo3+9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxCo3+9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4271C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717945042;
	bh=OMhVbzQO2EROHmhYWSqKyfxk+bc+IKFz4rxnMYvXxFM=;
	h=To:Subject:From:Date:From;
	b=lxCo3+9VMPzdUXbwpfoWh0Wzsg9A3HYINf6Gl35JmP8I8VZnzvifLGlrXpDZUM+Qf
	 DPbEwV/u4lX3xrsQVl7DWCgzNi1avhrsVSGrzuvS0grv7uXzCZcsvvBEjAKqvvfdje
	 3DLTnidIBPqiJc/xMw2FipKjAh61TZkkJtA38nnuZGoAHq6oDi7ykjfTy090cT+err
	 WH5EzXMhhqFBckrqbos6FNBd0mn3Vjw4z6c6LWTHkyzjSSPdXkNPb+hKW0Imjv2A2h
	 6K9Jw70Rpx3Jv7Skwl/wiF2mJZ9gS6iiWXsUcKf5s+AwYvPvSxTuwmOeGatiKil2yN
	 /bfvIfdcr4SXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD417C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794504280.4544.15530752089926215821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef77c8e00c7137237a24fc944d7eca33d39f5e8d7791140ce7f4ee731bf9fa2
Date: Sun, 09 Jun 2024 14:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717945042
