Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6E28A713
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753426794; cv=none; b=BF/H82DWlKB3T/2MQVPz0NbmqDM59a0NHIuAjNQTg8Ui0AfbCEkChoadEid5HbiAXp6oERjq8hjoPcVnm5Ht2nmEfqhAUVXMhKIv7305nzkMn/SAAlkEj0Q4el4VyPkrdM9/DjUYK7KKMuDrMqj4yeGDpjeMhrlu0rcgp+c52io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753426794; c=relaxed/simple;
	bh=T4QsO3LyIjmpGwT+jWrPrnzPaNg2rtUhhy9ZYzGsjZQ=;
	h=To:Subject:From:Message-Id:Date; b=Nwtyisoqp0/iJjGjGBJeqIEU33x96qls6lW3771E0oH1SjFWUEVLrCY2oj289TBdO7IDo2oanS1+Q5si0//4qDG/2i4QuMomYdJzaIZCCspf7gsBaxziAf5nIyGzg+K3a4JjpN1jF9g+FZyduI/uoFTAcEv3E8lLQBKPmEsoAdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL6EKehz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL6EKehz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C305C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753426793;
	bh=T4QsO3LyIjmpGwT+jWrPrnzPaNg2rtUhhy9ZYzGsjZQ=;
	h=To:Subject:From:Date:From;
	b=ZL6EKehzJNlej0KqhmSNDhVJxD/6CX7lWES4iw4EaLBVwEAHRkH+gPNRp8MxIG8oZ
	 r5dGEYtn2e4SKrxtWrniknaHPiuVs5nRjMaYTwiTZcNnPd15Sv6stsxpNIzcvZsqQ5
	 GwParMm+mtaTeVD2SPh5fxHOctMqf6VM6JxkQCTDds6GtzPpPkWw3r97cTB0GaTKB7
	 zgNMQQ6xOceC63KrBIaJYFs+fvLbWZvMwRELQstho2UHk3NUTLchMTe+hm26MgQhI0
	 r8U3gy3oE6fYb4Mr24GpwOe5HzOFNXlJtl99ItbjR6j/Bo38pbHVsaOuzD7xk2vvqM
	 nBIZk2bVW3fMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E350C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342679357.31507.206950315168820904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5a7be11988033722ee607a9b10ef01c09817c17f9d274ac9e66ce4365b7bc9
Date: Fri, 25 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753426793
