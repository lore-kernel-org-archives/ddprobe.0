Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD67F29DB65
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753982993; cv=none; b=t5+k/LwqP3/umYCITUR6sbdiUDu1oJr6JJWPjYS2+isK5M0g8OQfwHvi19Y9jBPARdT1CcNW0WdTAR6sGEK++I7TKRAkltqFYoAwGCtR2H9hvVsdZ+OG6wcThHhiQwMNg6SWUkM5v6La/uTpwcbjqBoPkYYr3HDiX33zIkiXa5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753982993; c=relaxed/simple;
	bh=p6CUtIE9gTerT2bceglX/TJW5xXs8gKoOroVULOoZvE=;
	h=To:Subject:From:Message-Id:Date; b=hgArFUXDzsYsN7kQZP9kQwpzUkurbq/prihspRwnahe+X3QLdvm3a7yAlKLl61/vQb/T2D/TC1jIWxyn3T5sJTENg93VtiX+OL0+2dYitqrNjDSSZsuKup4iwCmeeUrI8E9pFqGaSpHJtIo9jmt7mipkOvQM1uPOLwxOXlP3VsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB53gho7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB53gho7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDBC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753982993;
	bh=p6CUtIE9gTerT2bceglX/TJW5xXs8gKoOroVULOoZvE=;
	h=To:Subject:From:Date:From;
	b=nB53gho7ZR5IDTZ4QVroIUtAwfRv+yAhgx0IyBLFHu6sv2+uG9SBV9elCrSCaEMy8
	 ZozxsZltkwTraBo9FZUBzg5rzbiduFlTrRz9b2DgAPqEdjl08r3o/kXeuxsOMvGXga
	 JLR+PPJoRFGH4mA4nF2NQ9kV54AuTRyy2ejEH6mfoZHT9wnoKMg8/M35y8EdbsxssY
	 aSvq1fx/3MHmJEnE5r5i56FlncvdPK8TVmq/8sS2NVCX5kdYOKDmRIew2zW7BKI7IS
	 dzX3ZqwjWFXJErDlMn0icNAkRztcaP5RexJDKg1A54Hso89U5++aT/Xe8Rf3LoRhaZ
	 44fkb6qmvNYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9417AC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398299359.23065.1827010853731731853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34931ec81ec278038042bcdf237429d38838ae31e2582d782cbc60be50f05d08
Date: Thu, 31 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753982993
