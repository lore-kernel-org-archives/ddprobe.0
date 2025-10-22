Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF40F32AAAE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142793; cv=none; b=PuUll+PqgxsEm5QeHFNwij+vcmt4O0VneQFT1xOCygsuYBePY8hkvZ/ppjVyU7HNg8Jh32ejMOg85qajEBQBHHFV5SzrigA544Ye5/8yBZGvEI/wctoGS6xgCdY6kk1ZnalziDbk9Y//9RzRqJm7neZK8O9MNxEBFSo+fZC7i4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142793; c=relaxed/simple;
	bh=l9dTJ5t/JYxNgWAP5qwMI/amsAQiInK1yMMYXsGvloQ=;
	h=To:Subject:From:Message-Id:Date; b=kwPlJ9CBuGNL1hSk9rRqWPOW8/baGsKEiiMYDOouA3AokVJitEfPT2t63LxMeQJobb/cR5/jz2uQyxaVJXrDlp1OCWiLWoOkRKK+qIljn0KKb937uvnIvb2EMZxEbQRRRHf6qw9mDtVSLtFkhcDfzlDb76ZR6bno9lfV4/LlXcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU+O2heM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU+O2heM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761142793;
	bh=l9dTJ5t/JYxNgWAP5qwMI/amsAQiInK1yMMYXsGvloQ=;
	h=To:Subject:From:Date:From;
	b=CU+O2heMZ8I/uLxYQz7rTfzDDh/Sc5cvEMm0kPgqNVkZmDEMPPn9hwgug8va+lF91
	 srGppDjkHZ+laZa5IZQnl0her5/K/MMVcPYw/OJiWhmVdH0QZE+KtUcADc7CKk/VFc
	 Tbzm9RhX5guH6OG2xCTFu0jbm+ba8y56z86no6zrC1j7uSZ4GjPNczGFhADBZVBPz4
	 eHB7pSUmQ5CE8uqCq05BKeFKLarnaCcjx+oYLs85VpnWvYt7QGaMvfxE8B+Fsg97We
	 VznNmKFII47zDU+sMi4SFzLylYkVfScp1DFub98Qw9T1x3ofzNYcXVmdI2UyzhtDDr
	 uus+N7Zwpdz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9ACCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114279358.7853.17519135177932928435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04d9d226dff7f20e9142fa313cdf36080e0fa48a5d09231c50b7247e627a084
Date: Wed, 22 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761142793
