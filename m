Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E202222837F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752017394; cv=none; b=WwBKim+Ttp7dURvPqdLL098teLruWcIOj+5iQJ9UIqENg7vLbMukiE/q/A8esBxvj5J+Ysi/FjSvC5a6cDq601h6j5zIX4dYwHMfrXbpazLKDalyCsMvWP02M6Oy+997PQpuhbkFl5Gy0/W1p5xjii6P8R1VavMuXDLdYdA7ql8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752017394; c=relaxed/simple;
	bh=31cwdOt5K/VB5B9XzPyzHdKq84rdlcfCHWE4z1+aggk=;
	h=To:Subject:From:Message-Id:Date; b=tSX/oZYosm6P3UJPsPt2lGL9CUgW++g6cVEAo0FyrawcJVw88vRmMzKDt6pHe4HGAXwpHdeEWcvwSoNfoAfrTTjbhjM0sozZCDpcRRT6sF+I8BeAofkxQY5Tvw1QYkp3eu8qJzJAinGm6JXfG6Ppf36VdqEKyr1KE699OliOcws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfClBbdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfClBbdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2C7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752017393;
	bh=31cwdOt5K/VB5B9XzPyzHdKq84rdlcfCHWE4z1+aggk=;
	h=To:Subject:From:Date:From;
	b=VfClBbdYZeF40103VxrbkXVCYFXxjhxIfTG5PHDvvF7+kSmAbW8IrKWiJUekRXMnt
	 r9gp7Osz8WyACXbpPUYMP3/SldSwhGvhU21fknGpFKRc8Aqsgju1z1b+PDyCoGCsxW
	 b+ZpSBVlB0llBHDn4oTgL5zVco/qP7J0deYqUtYGyIyEfUvBaLh9R0EfkSJhEwBPxe
	 3Y44/fos2alJusunb9amrwo1m03Eiae7LfRekp2XzfOAQiOMd0tA/qjBFJAAhW8c6F
	 3JOKFkWW56NV//odjLLkwP4x7K/y5+KcU4Lkn3agJoid61lfhRIlhpfun+WpKrMCJb
	 N3F1vhbYqI33w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD0C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201739362.31447.16035832612146749237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57ababa0c9296ae5aba8b2e3796f5130d7ec9ddd654cade1fa0cf72ed1c6e08
Date: Tue, 08 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752017393
