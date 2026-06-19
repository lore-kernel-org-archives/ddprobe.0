Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB3F380FF4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781870194; cv=none; b=Kyacbel5iS35Zr/npeLpIyEvE98ZW79LoTbbnNbuf+as4g3yVaq4iPEKr4im8xaWOcvoGjYsTWTc45vbJNVwy+nQ7BTQuBprrYu9YONjaafk/FT/RZX7XisyrzB5SJje6rD8J9chUMqwgYJrAn3RpxB4ijgDeZoqLGva52yQx24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781870194; c=relaxed/simple;
	bh=4agIfZVghTwEJA0VpCwCSeWw2tECCa09vfGH3o9MEWg=;
	h=To:Subject:From:Message-Id:Date; b=pnqaRA7feoc/k85yv3xpKZi8vbMjxg6nt5KRXzc6s6Cmz44YSiSax+Q0Byn/p4ruoLKigiBgsmYhbeM3IeWuBDlS/kcGujJLIraRZ1wDrX/f1sBykDAYHY0td5UMXCkIscfl4cOtZGMHSk6CYkHTKd3bOWDvQcYNUxS0Q+H+Xc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JemEOtGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JemEOtGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78D2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781870193;
	bh=4agIfZVghTwEJA0VpCwCSeWw2tECCa09vfGH3o9MEWg=;
	h=To:Subject:From:Date:From;
	b=JemEOtGjQUYy1+/N1lpMqNLi5cGaJIWuQRIr1qidRpa0HA+4Kdjh1k+ftr4MyfmWt
	 YpF74wjjWFhtUcMIDKdk009PTYSC/9ucFWMf3+dehF6PjNpj52H5tbL+F+6Up8j3+o
	 67FB2P061ssVUK7DKNTjiCxvntltAXkx7GmLfsVd2FGGEv+a9xVrPhpClrSxMwJI5m
	 TID6quvhHuAs+ygaADncSMl//EN/aObPAzKKbkUhdVtz46BbOP8qDihoCc4RSXY4Fb
	 PoxTUM0iSrc/hl3U2Yqn1l6dkQTC+Ice0XD8faBJzjR+RdOKBOHdUQNnrT8NPquHDq
	 nEQglj1FSQlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA424CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187019368.25627.10314303380383342120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff68207d048a707bc089f99c1988349915178f78e62a4e649ddc13b686482c53
Date: Fri, 19 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781870193
