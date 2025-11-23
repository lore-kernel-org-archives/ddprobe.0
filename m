Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308F520E00B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763913114; cv=none; b=MJ7IDcwlFI1mraoUp7WaC6xeZMH0z+QE8jZLQPNMk6DFNyfRaRCYT8FoAWJ1DVsOrPu/8sRuLhFoBi8aT9+nSK/kcEwufJ3VZKOdQ4poKkwxFceU8xJbbigKn33y6Xxw0ZXMc28vEvHhrgpnZQb5aHo+EgbPzlwVMFpz5Naa/nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763913114; c=relaxed/simple;
	bh=C5jas/ZLjGkR63hXPNDc66MJ5CIZgIdjBNxcJXIgzm0=;
	h=To:Subject:From:Message-Id:Date; b=idpeNU1b31d/4VaAU2gomd6DU2zWCBZWasTZ5GD5Mec+MLBeZJJKmKUtVlY/+2xkUJNiWTrBnzLalKW38oIGWs55mp6wa7c5ee52y+546/X0DDiqnY4Vy93o2IuWcZG+JEhI+WWSHyMUkvb40Tcj5caT+oVsyc8AO2tO5rIouoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIQJpgGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIQJpgGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE883C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763913113;
	bh=C5jas/ZLjGkR63hXPNDc66MJ5CIZgIdjBNxcJXIgzm0=;
	h=To:Subject:From:Date:From;
	b=NIQJpgGkvdqARLdtkOMs69MmUJ/JwKO6YYokg2l0wh7IZUssruMWWdjmccsAvG5Ol
	 kqq92594eMAJnxljC22Xvbkgdx2U0yrLPNSXKPi+Rcon83yY6cu+8rC8fA44704D04
	 XZhDMHrHaJTAqFJv1/YEpNQVi9eEvX8R32flzmq/K4xDfatR3Q7O9boCeiIyzxJk2k
	 00CJQB4QXkQ3wia85jRfCY2oiW9Gasf24vQyAdIPIljcX0SGouFOtuYUIQas3KuBmA
	 +VDwHgjKyTgnAPwmCrz+bsugo/brrNO+W/72AUr99ix0s386zVR/Fb5bhxVqDH0pux
	 JzbfnqlkWBhqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD75CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391311358.29651.18383519157033607361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5708f826f6e174f01df8d1620c2f88dce8862d82690408de471ec12f8f4c491
Date: Sun, 23 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763913113
