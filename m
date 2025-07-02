Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C33D2F5C50
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492394; cv=none; b=LsUdF0EFa+SvCELOw0SS+vFgR91Om8KqUZLBtZCAOhjyMNE3Kg4AMp4uk0CM6gBj79g+s11x/SxdKokyfWkJxqdQkLS7xRiaT1+kIUSB5Q+jQkvkPen6VzCl/0t3DiaFSeRM9KGPuwWsTspeBMowP1iiJ49o+2zrZ7IFwZqc9TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492394; c=relaxed/simple;
	bh=VtkHh3XCI39Pq5cVAxJuQ1Ut0A8RfcUY6rPu0JzOAn0=;
	h=To:Subject:From:Message-Id:Date; b=Vq4qko7wLztDgRdaYMv6IeG162dudn7J10VFxxvFLKNJo7Ut551zacobyOQoKEJoNoVwLYDd68xGZGijl9eoEBH1XG8cTjKQASXKpAl+A/Hs/Pl8YQD4/2HZ29E4Hd4NjLcmbw30NtjwDLGMPHurKqp5V/2ZWQ3mplOiUQxtJ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyEZztlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyEZztlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E741C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751492393;
	bh=VtkHh3XCI39Pq5cVAxJuQ1Ut0A8RfcUY6rPu0JzOAn0=;
	h=To:Subject:From:Date:From;
	b=pyEZztlk+9Ekoni+DJjgPx0RjTlbPK/VwXCMwQiPjG/GbUvGNrcqEbjXkK9XYfDYU
	 zjWoorMrrovQxAnXpqIbtdZgdgSEXowm2HNQtMtfGL4HRNMXYRYsCAAus74rEoLfCl
	 l+1U9mCpulnivXIZeEMJplN/FO+SUlPCIklNVQ80RgzfKYnCm5dMDTZbtEAFjQT+XV
	 IaJ/cw2bkBHir6IYfetZNdffZlu6N1CKSLwKowqttstD6yMgHHaWHB22KeOcHKEZni
	 ZH6jJUIp7evaqvXaXL1gRceCfk2Wjz+M+yLlpG5KP/8iCWB3UifX957xuLqxft5N1/
	 fWhznQzAkZPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FEC8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149239357.1594.5014214553112119678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80956078210aa8016544d5f09857beeddf74586cb1e919124f17c4795f95dad6
Date: Wed, 02 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751492393
