Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96D1F941
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740440335; cv=none; b=lhw+wG2WrJg9YitNOYc5OB00UpiO02vV05zRhLofCMPXA881v/AU+UpXnL6++jnKm26KSl7mjHAnM7LjRBbCv9IFoxrmXokycJ2vOfnEVwGz08lJeP3KikbhjRZoKhITPtrWfnh23VrB8Wq0j2PBQFJYTiA0IJTAnd+aD9CS1k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740440335; c=relaxed/simple;
	bh=Lrtdx4SbOZiH3gAHq6V5HIsyKuEw4gXJRo/DTcU6qzQ=;
	h=To:Subject:From:Message-Id:Date; b=eC/JvImk4YCJvyUbViuKDIjN6j7S8xOhPuMw9X8X8Y6NvLw0L4aFAMEbPOejhyjmYpLEjv3z/YA0HgvKuWrpvqwJ2ouZhvJXXx5g+ndytQ5OTn3sWvgxW1vpTuhFJArM85YtD2UX2mOs6vvyqBRESkcRzOMYL3r7IxiIdPbFpVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKzUEJnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKzUEJnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE46EC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740440333;
	bh=Lrtdx4SbOZiH3gAHq6V5HIsyKuEw4gXJRo/DTcU6qzQ=;
	h=To:Subject:From:Date:From;
	b=SKzUEJnPdacL1ZZZTajteBkmvlwhmEzyLMukD6kKhNK6AOiDRfYu/ZmvBkHFt7QI3
	 zLrwBZjMlbt2Chu/pwII9VSaa7H/nb87bcMZdPywte10EvdB5BXHf9QVDHzf8R/iS7
	 Q13n4Bc2a0bzSTtZXabJ8lVLJdu/L1WTHvBxsk2JFiX7sV4bWtRR8ilAvdFpUI3SeV
	 AfuT5J5GhtX2nFe/dQZZWNr3fBlLoJcePoKHFN7YSRcYEiHYOexE4XZu7b3iTkp+OU
	 sIKbv6i2lpbFnNXQQDseM7BQ0nH5Kh0Vg2px90ubogyZshY9BPqgtgxut18OLAsCxa
	 8ebzv6Fx59Fjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993FAC021B6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174044033361.16634.9752461191423901844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35673c10572faf869995184fb7bf1541e775012a893626e23b72cb616eb7b38
Date: Mon, 24 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740440333
