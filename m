Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D8A194A65
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744454394; cv=none; b=YEadaoUAtlVFLstXj5fBP2whLdmDVYO/mDMf36LkvIiKIATVJGIi7LFdk96zvatDqNipNIqUaF5bziHFwKDr01bnqLHjotHM7vHda/GfGI+cv2KYFBQUH/WRXQfMoB78tgeSUQA3yJYUw98NxmtB+aDZhM2dt9msdQ0ipxH3yKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744454394; c=relaxed/simple;
	bh=WQn6XIee3swOWNMD2+RuYDJ/RLHPOtwjOWaO6B6Tu+M=;
	h=To:Subject:From:Message-Id:Date; b=qJXVc0KDb0gU1Atud2A0/EkNavZyPBlOb8eX0krCv5PEs1AyyBkZg4W2DzcrtB466ABMxs3kaCK9dtUOmX1iza7NtE0+QcRo70TRY70NuX132MDeqgROn0HOaqwHVWuI4g39NXJLjTkhSzwT+EcasPf6kRdvYYEYnN2n4su/n2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQYRhG/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQYRhG/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAB3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744454393;
	bh=WQn6XIee3swOWNMD2+RuYDJ/RLHPOtwjOWaO6B6Tu+M=;
	h=To:Subject:From:Date:From;
	b=NQYRhG/LScjL5PxUn4sfa9xrgcVMOTur1RMI8RsJV6BrJllKwG4MN+vzA6VaYWX00
	 xY+/C/C+5jxyQqO7Il0ti93S8luJ2yQV/h4DpBOJCkENPhKSY9aO2WldUhFDH7Xr6H
	 A5UoilVNssouHr/YwMO1bHthEv7kXWxhyNVTxoIdkLvkzVl/in9WlPh5xyS6/sFyqF
	 5sabpXTxzPuOjoHzba8zgdpZZgbVeaLVh1nM0ik6A6+AunuEa++lmr7GDkRzYz0rPV
	 qj4Y/QBD6ztyAadsqYOXlBbY8ceW44FlwPEUPe525ZdaZnZU81uSPjk6KOFZ87cqfq
	 O11tzameieEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E2C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445439361.13528.13344517019216419624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e42d3a4c488e6f45be5fa3de3b195509399281205893c89f4dc218a0de555a8
Date: Sat, 12 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744454393
