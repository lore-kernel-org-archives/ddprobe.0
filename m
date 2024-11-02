Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461574EB50
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730579754; cv=none; b=cIHdc8ZlT8GHErTNcWtYxciQf40AhPXMKG2gb7CZeeAUdNuoafnk6jIpUC1fBvhzpOdzilho95y/l4V9PrxN2lVeHhaV3zPWOY/zp4xsKl3phsfgdfzWDgcRZacaMvX4BLSXAR3i00hduMr6elak8Sx4IXF/t77GkaYK1xjAKyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730579754; c=relaxed/simple;
	bh=rm3vXgVf6bV7RUHOgF4LCZznbCgE5u8tkQDMNJ8FYOs=;
	h=To:Subject:From:Message-Id:Date; b=Xvh6QjDTiT3UAKuT9KMtvS6kWQf8pExf936+jhvHg7vk5E3moLJ0upPPcsUi6TQDoK0e8/B/24yE9VdrcLm8yae2JLDkbfqS+MZqEvcWIphUvNTIFoiYc32KbYBhYV6szssbcoubJpQfl0UhCg5RrFtbfob77yOz5o+cZx0Kvso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNLSt7/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNLSt7/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF1C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730579753;
	bh=rm3vXgVf6bV7RUHOgF4LCZznbCgE5u8tkQDMNJ8FYOs=;
	h=To:Subject:From:Date:From;
	b=mNLSt7/MgA/z6fsv8QZNUhHN6/yhBMh2qypWqDQQBmRGoBqA1i8WUU/AImEPN6RFA
	 aV+JeKw0aByQ0sKhyIWpTIShDT+725eQyGyNd3pQLRmaby9iw8m/P8jb/gN0kHOQDK
	 ome9SszlJNKeqLZnsbgoQ4SzYCZrrQwQ5HFWW6Rc3diAvW8i80nuI3nrb2808yc2pn
	 mFzqKWO0+flTsTRIVB8a3PBuMGDinYUKyGW0kmsSppN0wR6yDuhoEGnZKNz1OWYKCH
	 fiPl4IkQ/a8LLUkgtvvYBHbU1FgC57rYkw3IlkRbbfpKUGPJgymtQKcl8C5ZEVMRqx
	 RBNnRD050FT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97226E6780C
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057975359.6123.15562764597791517408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaca9a2fe3a7c4d3d1919ddc5e48f68622a5e3fbed9a8cb2ccbe8d0cf056ed5a
Date: Sat, 02 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730579753
