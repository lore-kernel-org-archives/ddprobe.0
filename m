Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F616281526
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757779194; cv=none; b=P/UOrXAJCA2DbAD17GM54+naaOuf+07hv1x3MWAH4adhq4YqxYtogMd86RVT8MZePqoewvSXv0OwlnB/vrQOaeRruYx9LGiORXeCDd9O7lUTl3qRIt7UprOSLReBRZxLClSA+bRhdEmShnX9US0t+68vqiNa3TaCgwDLxMWzemQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757779194; c=relaxed/simple;
	bh=fkbBKt7fqdLVMkOVl6TZFcVUhwQAucX9j8eFt730Qr8=;
	h=To:Subject:From:Message-Id:Date; b=q08YqOQLYjCt+33FUxeCJQslW0Py6zXfRr0Toc9xp24PVlD1t9bCecr9gKnF9aIGKxzZqqvgZDKSeQzLwj0NuVqXzcMyvNcKm/1I3R7jvQ/fCcBUUj3k5vVstfo56Q8Tk93MtiQijfGRc/UADNkEi1QEFJXy56Lfom8H8w8BFDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu9H/jwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu9H/jwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757779193;
	bh=fkbBKt7fqdLVMkOVl6TZFcVUhwQAucX9j8eFt730Qr8=;
	h=To:Subject:From:Date:From;
	b=tu9H/jwMvUK367lRGMC1UHBXbIwtSO25gn2KKphZr46NIiaL+PT0u3h4T6zow6udO
	 XhjBXi7bh7vogtrfNXHyuvHwEl1y//cLhiloz5MEpsWldk+sQi60zJ32tq2gW23OFQ
	 m19zXOTHqJtZZbqQgCT7AzYZT1bEAymHH0vBUIomMKDm5VMQXFVb2kgsxlobXfF1g2
	 qnFzRrQi7+ErJISwJhtahvK5IhklOQh7mMN28RySA/Ycd0gHcpcbM0AQ/G2XyFaY6E
	 VT+g9Y6dgzdXb29EoqmgBObiQrcENc+W8r6SUKh5Rxe2LS7XPBUqMRCWsZ1l5ndIsb
	 RV+lqyeQ/M4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C65CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777919357.25493.977718059990009585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b54a52dc36a0349b871747eac8b4112fc7a0601779468ce5fed53554857589
Date: Sat, 13 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757779193
