Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD112848BE
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791681634; cv=none; b=CfcG1I8AWQTsrxc1/z2z6UxoHxLUR5eZ7XIk5Klono6nBvR3XsNwDmgQkVfEL0WtQk97Wq5IcEu3Msa5MGu77uIucIUaqgoypYHFi8KxzHpNM+SOSf3SAHDlK2qYWuROmSFrgqF9nIMBhoNDrcB5CDtLUtrr9FE7sIpt4CPb2mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791681634; c=relaxed/simple;
	bh=vd++GXk2BDAiIeKKIAAW7gNx6xAVd6O2xhw7a1WN4Ok=;
	h=To:Subject:From:Message-Id:Date; b=KCBJtxUOcQlG2wtGHSYCcuToweclY65gYxmI/f/EKu3v+FQN9T2YauMxYy1GaByruh0CkKXgrxakTBM7CbzH6hEgEo5wBY6IunZ+VdWEm2gosQjEH+fQozt4v6kSGulFR42w03TJGMu2c0m7rxNNGHFLe3T4bjtrAL5zrqEg4hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKtFyX29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKtFyX29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791681633;
	bh=vd++GXk2BDAiIeKKIAAW7gNx6xAVd6O2xhw7a1WN4Ok=;
	h=To:Subject:From:Date:From;
	b=NKtFyX29KLURhYWvJerKmMMicoY4BSfipqtDfTIZDFcjl6/dRYtbTmUISZV2XNC0F
	 e3ufoM2RzS8lPRQvURtKe1rRzTyNPlDNdEvJxuKXXceuk7hq3kWJLviXNcvBqhTnu5
	 N8pY3hr0ReFS+51xOSIPdMKYjR8oTCS+BIeG6PRHga+WklNJRR35iOLb0VompZkUFL
	 fIw6SMX6pgEAJ2chOQDrPEftPJ4eEBUTde9Al0e9mxXpI0mL/o5isx3vwQf+iuBqF5
	 vfSula2GaPAWGoa/ezpmuEvWC/OCe/qsh5LI+Df/OSY9T+ecF31KjmZbB3uZBFz73R
	 sHWDnuuUVrYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE13CA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168163368.26226.18048470244654146096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d0d9d30ff38ecd228c67e27edfb409930527e2d6e2e7c201ff046265e27c1f
Date: Sun, 11 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791681633
