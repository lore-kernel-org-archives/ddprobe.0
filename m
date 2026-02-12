Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1749D35CB8D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770905694; cv=none; b=AUna2G4fu7w14m37gWt5Ks85SziYj2M5EqbUfCmkICEL4up0q3rjk6sSgOtyeCjqaKGgSygZhghTXIeHVJHfd23kBa2DEadu2eauRmVEK98v6+5xaGr4rsBtjoYUExf5C17efoHdoFS+/UDiyKacKw6Dr43ktlyRKf7dbDd+n/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770905694; c=relaxed/simple;
	bh=yzrNgfwv7NHY4dhQoNSIppnxBJgZI+aBMO7eqR6/qWc=;
	h=To:Subject:From:Message-Id:Date; b=KS+dcScWt5GED38d7JnmEhyrsFXuY6WMPOUdfqEauk0DpCMUscPULUzeju85uXjL7uyBWOTmAEV7BvmOZmSE8XROLpzMgqatGuVIbect9xP7AidwbJ/eM79PrUd3zBKXiPoMMaOmoyNEnF0z/sxc9sdwKrd4S15mwNK30E9dHeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXTBrjQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXTBrjQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770905693;
	bh=yzrNgfwv7NHY4dhQoNSIppnxBJgZI+aBMO7eqR6/qWc=;
	h=To:Subject:From:Date:From;
	b=TXTBrjQzObf+kP46NpnETBj0jPMtKNigLWPu/2NsKVEecrjfIaKzPcLYVMvTeIGFy
	 xzOLaoQ8L37qtKAWVAnVbLs5sHhd1tOZ9js3x7S/uqBdPjrWcVacA55BLryTJkdWh3
	 b5Df3k3IqrVfKMEJ7DZQ2Pww1n6ZVhrEME3Oh4+TtS2/DAue/RnWHP5raCdZZpwjFr
	 48eDLZJMyCDno+pgKFLV5rXbIhYOycHcrxftoZmDWUmeRtzXNbvw0N1YfjrWnczENH
	 ldTnzvgvATWO31MdjJMXqXMIoF/eQI857AEbU4Y0lviBU22m72aheegmBpYPqEG6j6
	 kR5OE4hfcXcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C2EE3688
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090569360.4796.4596571892263973066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d9df144bdd814a53b843b5edf389202d4466e436c924068f097df43ff7b07a
Date: Thu, 12 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770905693
