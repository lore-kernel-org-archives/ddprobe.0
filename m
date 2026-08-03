Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638DBDDCD
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785715234; cv=none; b=PL53EVKGw4L1KKiT7G1AaOnni2YCXlXuLi6rYU/FcG1T2890a5eJSXGjwuG5dYlezkvatD6PO6kzCgEO4nBQ3xBMS6DjkoBCyu+1Cj+kf1LDEs30YaxYetaL7t4q3Rt5ISV5auCEN6ZG/ul0d9Sx1e6ABm9xNzhuY7QTqLpajT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785715234; c=relaxed/simple;
	bh=DVzSyATGYHZwLYvqL+ni5Ue1CgBuY76Du5DO8kPOkes=;
	h=To:Subject:From:Message-Id:Date; b=H7Q13y/LE/T681G4Sju+dvQbXNcJmyZ0B4qF3BT5zYGP6Wj5GFIhuzQ9ou+q3eN8GBNGpfXHFlMI6ZFuJIW55aS+ZauxPyDIxnXumtIGZntaBOA8RI9wz91nvyNclzv0iEEVzXl15IgvRHQhpr2qKTbwcywiMVrKawoSLk8A8qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ6txkBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ6txkBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEC9C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785715233;
	bh=DVzSyATGYHZwLYvqL+ni5Ue1CgBuY76Du5DO8kPOkes=;
	h=To:Subject:From:Date:From;
	b=kJ6txkBnYl5L8PqmsXAhOcZp9wC/4g2n5og4VM3eZYu/KIrr3HaNfb6lXwz/mdZ0t
	 zoLIvrqhFXIGZJ5JjSgQmZqnPovCQlirSiECvaf4b2fboiZQYBBb8/uXWicd2dwO4E
	 BpKvWMazzOXJT/65GYdSLBSo6iV2YSq3WrRsvtH/GYa7YI3raQYNhbaT4f5Ar0Zgwz
	 pbNGAbEHxwhiaO2fSxxBwhpI/RiW4u1uca1IZ2jJHcc/kCg78FNIcx6mX+eVXlXSP5
	 ji0QC1T9hPB0YGbTRo7vZq/Vx8BIU60pww2w0HwkDMov0YxvaqFUGYhxyKMbRLu+CT
	 TH6crM9Mtk3Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0383C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571523371.5650.5588963697819751484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1806f6a658af7994261afdbacc9edccad04c5d8c6b9e8453762d2f3ca5eedd86
Date: Mon, 03 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785715233
