Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300CC2CA6
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733582754; cv=none; b=iKq143231xDu7ooivHxv+1iVp4mNx+808CROUX7VWjqbzoxcsz9n1/uLKRQoxZQqKAYh244YCb+8UTjR1n4fp49l8lPVYAc9+fG67RCtvKUt5kPE8gebj7U4XmqFnfaqav2ZC0AM7h9d1W3NUvI/F2VtthYPGXp2ZhrS6A0fMlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733582754; c=relaxed/simple;
	bh=gADVLn8ImQxJmsGEfZ4d/GgIqCDDL28A4DmNRRYmOp0=;
	h=To:Subject:From:Message-Id:Date; b=Fg79VOhBeJ26wI91cEYI9o9yWDRCKKV7BVRgW+9cDtWkV2VqKTO1c7DdXAyxu/I3iwcaV7fussL6i/YItck6WwJva51g/ORZzctEnKUAzCLVUu173uuUfSlarfObN4dEezPoiMttgLwCe5+lmITc25RZH47n0taTDY27eCUvyrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovEiqT4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovEiqT4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D6C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733582753;
	bh=gADVLn8ImQxJmsGEfZ4d/GgIqCDDL28A4DmNRRYmOp0=;
	h=To:Subject:From:Date:From;
	b=ovEiqT4pDnCj2524OKnreUEtS7MlO803xmIgSS4rbPHnhgwqc3tJANwRQUAZQHIkE
	 Ux/MBI2bOT3cruJ5ncEFo387YRYfAQvbnBg2WES++/vKIyVfmMO/YEIZa8iMUlGLOW
	 vOA6yfXPbd2xszjtSnSyVKE7UAC/arQ9d35yEMHtpnv4dERPNiSw42NSc4heLoHpNu
	 pby59VJWXfDQnkoosqaug4UwaT7RMWYajzheJlaHNCDJoxF7g4LcWT9DX1ylAG8bYz
	 KUV5yR8XdQsGSD9G8inct6hjYCSGAVXNvP3UxmqBdJjSv+t76gHhdnFnMvLWV6B57e
	 P8ph88trxft0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F70CE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358275362.19745.17368364094695959599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e41ce2201337652d12def8e61801989eb67ea0506327699f79bc34970de31cf
Date: Sat, 07 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733582753
