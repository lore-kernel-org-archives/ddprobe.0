Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444171F1503
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737464154; cv=none; b=iz8VZc3lNoJ1z8hS7UlqdcLuCH3tNBtKfDltyKoVvqW+lr9o8xxLoCT4/sT+AHIpkF26okd1AuviEQrLFJHBEUz+vuPOBvgL4POc7k277c+B09yQW5S8Wu6u8g3O+Q9R16FepEsxw/Pl+7G+xA2BBDfdH6ZHFkSfMWP7tS4CViw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737464154; c=relaxed/simple;
	bh=1DAw2YqaVgt16W8O71pcRmSOhXL3pK+AFRpRBdZvyWQ=;
	h=To:Subject:From:Message-Id:Date; b=BECZuyuYauXo7pl0O2uFSAxAuQnJc7lunBtwyavuoflvfLdWJ8gG/u0bC5zyBo+Hh3rG2xZXRpZKNWxX0aSCpCp4FJuCAC2doXlB2eEFMDq40bjgnNfj+HszAaFr3O5Uu4hdE74ncQwUvh2pgMeRdtRM6i3KNwDauDb8ZcpJ/zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sr+f4COq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sr+f4COq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAEAC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737464153;
	bh=1DAw2YqaVgt16W8O71pcRmSOhXL3pK+AFRpRBdZvyWQ=;
	h=To:Subject:From:Date:From;
	b=sr+f4COqxu2EYDsST6F6QRZKFysJ4DC4tT/SUt9Mz7vrNqvcfGdl3tB2CWTK8KVc3
	 PsBTJet+rRaOsPmLnbDJ7JKkFbJp/WBjvZsQ3LYzmcr72YlT0nDirO6Bz6OprLTN4O
	 6zgFz+Jfh85P/09+M3yvOMWJD8ekH9KoQWU+kD1ASK6PIOOQ3dIIuXzBQl7OgT9PKV
	 0BQ/q5EaJspYuOkNZfZ6uW15uVVNepTat4kq7mnKEisQKhBSpKJxqCNE4XnsRVw9Iu
	 Yyu76EngWKZzkgLt0SYSDbfd91D7qJLoaIUd8Lf9vzpdxbP78AmProL4D5R1davhtY
	 ad4pGdyGt6Nng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2DDC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746415361.14675.10885672197461898005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3e17cf6c6e67414286d50bf1503c7af088f699e3d5a2271294b1146b3f985d
Date: Tue, 21 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737464153
