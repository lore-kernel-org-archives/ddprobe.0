Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1511FECBA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767336834; cv=none; b=sa4+jG0HODU444+dcuF13UJs6E4vF+iCnyPfqS+FkApW048/4ZfqsnRUXwf5cYLnDAiOFyS7Z86HhWOn3kf8wRz0KdjubdrbtY1ZzgjoiRXhIsZ3H3V5KflhhquWcPKAq5gx5264mErm7Ix3CeC79JZTkj0rHyDArovJV/Mg3k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767336834; c=relaxed/simple;
	bh=a5klcMTxSf9ShUJdrEEKe2Dv/BfJ0h5DWR6lv/6/Xpk=;
	h=To:Subject:From:Message-Id:Date; b=QQ4Pz99HBY8f75kexfgpYqbpaiIQxLx44TROCoBaFXdCkPIgro3XLs8s6yEp//0e8h9zBxzqorY0EiF9lhjiaKHutFa1G1WMfVAqD5w+irkbJEJKtTml4zilD95ceJ3UPYKnVnkGeHDYucrJsiHeGGipLX121/c63/u4Xpu7QeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozADzbxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozADzbxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE7C116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767336833;
	bh=a5klcMTxSf9ShUJdrEEKe2Dv/BfJ0h5DWR6lv/6/Xpk=;
	h=To:Subject:From:Date:From;
	b=ozADzbxEYA3WOMOYhyRu1p+um96q9yIZys9EJNYN9MHOqvp27QNdcOoCaJVjAz1cj
	 Je/vnwNNo2BM3lutXWk44zNu7F0FoU72LZrNbyiwC8Zn+aKDJKXUqSk+y53VuMkjQG
	 G/1BrXpNNqgkw73npdcBu0X6LWWrqKbgngbbOg4qSOd3KBBzn+lgpq7YQJTPMQRuIC
	 u3A1lpNiaDsMYAQ5lM+kcCugqK6xafXU5JuooD2s6Ox9fi+9LSQMG88+x+AWWPI2lB
	 2fHg4MbCj+OLP+qObdG1elMRFfaIGPJjK7vqHWWSedd4RG8ESfn635lGedKLYdtyOB
	 3RUH5XUe+zRaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95131FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733683358.10432.4810998835817777547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8f337148a9c2abda75e5adc231999dfdc50bf4f2f1fd58cb02cbd016481ca0
Date: Fri, 02 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767336833
