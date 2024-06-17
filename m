Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB31185E47
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718645903; cv=none; b=j/IyUIZH2SKKHVaI7ig6r/y2gqiI0E1++4VpcUK+oplX9GKjSoOP4viWMUh7dQfObWZQAgMGSESZHCGJa661RS7Hrt4SCJIf3wNkh+/QeUc2Y7RcY1GrNrkNBnc6HzD5zjrT4KnpZKMZLStIEPoyN5opb2Qy5kACQW7iKPlyCbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718645903; c=relaxed/simple;
	bh=S+g7HhVSrPlu7tAIXRrDrc34XAfGYUFbC82UK5HEKQI=;
	h=To:Subject:From:Message-Id:Date; b=RCyeFulhQ0cl0gFWljh8Y5Crr0ZFdeBb/uLcKPZvpp2gC3Y5buWoCLhQFqpl03B5MGJ04qS6Xe6QJ1UCIs/sH7XMuIafTnzN9LqqV/bv/mrjaWCueUTCTm1cNFw7ojRiwPpEtH8XvShNgJgNby5AZAxNtUWC6RGiC7T4i9YN57g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFqb+kBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFqb+kBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDBAC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718645902;
	bh=S+g7HhVSrPlu7tAIXRrDrc34XAfGYUFbC82UK5HEKQI=;
	h=To:Subject:From:Date:From;
	b=qFqb+kBJtUatTk10hKhx3/TDyDqYY6qawB9ehffdRoGcGugWe7uEWCUf8XM49eYEs
	 RtfKsOwr0nir1W8ZsqeUU9ymR1mnwcFM08p+IbtTZxuhaBkUCGx6mSxoO7+/+OwPNE
	 4e0x/jeTPrChWDjttbnQN0Xw/qDJDCOPYb1vKSvybNMagrLeNMmjQRNuNgRo1hPgKr
	 S3gHcctxSyPITsEBlC826dHOqovFIr1wiBm/x5jmPtRcCFILAdVRdJbkrx5Bibdq3K
	 n7ZBjpik+dx4iifMkQczv33ZJux5JCWxX7HjD0SUV7bk8hzgyj6fULo6kRl5Py6NCG
	 ZPHcBKAjabuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78C8C2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864590280.11019.11018326547946212479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d53308347f5e67092610d4848dd4c18828eb87e4dc3d2661303e7d8769fffd
Date: Mon, 17 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718645902
