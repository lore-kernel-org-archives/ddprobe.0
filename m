Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19695229B36
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757979594; cv=none; b=c0iSX1o+U003JG2LOTcw91kBLa9OO2cSN6HLvH0KYqYgEaZhwUbHtzbQGrEjWuXTYaW2x4w+rxLk0/QHTYQ8xqakcC+bjxu/2lq0tv+32+H8zYoIeESizGMNJNJIWqI1KSbazQvGReuQP6HZ/Z22c3nShsdtsUQGiF/baY1gees=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757979594; c=relaxed/simple;
	bh=bjc6W234eKDIALoGisTXB4yeQdX0bQjUI2pDIlNUWek=;
	h=To:Subject:From:Message-Id:Date; b=NjMuV/Rd1z+PDLnFI5d3VaFzJfsBPjR9WH7LXpyX4EZI+dJcyyK0sE5G6QjME2oyNHA4g/42tIDxlXlkdztqK+qSybB+cuHuMvqUJ8/g4UxrmQw9igiKtL8sYxszb2OdMHeK20HK8PWeU0Ewc3J2byZjzBX1RWuHWIttzeteOPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgLcCWWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgLcCWWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7924C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757979593;
	bh=bjc6W234eKDIALoGisTXB4yeQdX0bQjUI2pDIlNUWek=;
	h=To:Subject:From:Date:From;
	b=GgLcCWWq3q2f34o8k2NUGssKr0AqVsQfA91Ch7VemkC9p8zDgShCsTutMZsZhG9gV
	 TUqjdN52idndBsQCe5GJtPpKflLsRK80h/E41QgRHT9bg4nfoxIaFKUehmT9iivfwA
	 0E8MHGNVPDN8L6oFQqm0OGORUjf8NQQXdNGaVmGYoHSe6JNw8mg5A1VbSa6x9qf5Zb
	 +f224ul0Jwx3HKHS4TSZmP3VFwtnSlBv4QDcmHElkMW1g59yv/kcboTNW8REXQf/Ag
	 j51u3Mz+THEq9AbteaWTdumQSXwu0GbB7mfaotKNtJ60UjsT8qs0UxBFPqqD34FiSZ
	 nWJTH8ANlFO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F1CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797959357.14864.925188438919624550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd6f7906e9497d829bce9679726bbb8070d2029416b1390b5fe79bf0a84aab8
Date: Mon, 15 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757979593
